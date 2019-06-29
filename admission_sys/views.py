from django.shortcuts import render,redirect,render_to_response
from .forms import loginform,SignUpForm,personalform,program_choice_form,address_detail_form,Matic_form,M_form,Fsc_form,B_form,Nts_form,admin_signup_form,downloadform,admissionsform,admitform
from django.http import HttpResponse,HttpResponseRedirect
from django.core.files.storage import FileSystemStorage
#from admission_system.settings import MEDIA_URL,MEDIA_ROOT
import os,shutil
from django.contrib.auth import login, authenticate
from .models import Signup,Personal,Address,EducationBsc,EducationMatric,EducationFsc,EducationMs,EducationPhd,Ntstest,Otherdeatils,Resultcard,Programs,Details,Status,Submit,Admissions,Offered_programs,Admitcard


from datetime import datetime
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.shortcuts import get_object_or_404
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
import csv
import itertools
from django.contrib.auth.decorators import login_required
import datetime

from urllib.request import urlopen as uReq
from bs4 import BeautifulSoup as soup
import re
import mechanize

from django.contrib.auth import logout



def logout_view(request):
    logout(request)
    #redirect('login')
    return HttpResponseRedirect('/Apply_Online/')


def login_user(request):

    if request.method=='POST':
        username = request.POST.get('username')
        raw_password = request.POST.get('password')
        user = authenticate(username = username,password=raw_password)
        if user is not None and user.is_active:
            if user.is_staff:
                login(request, user)
                return redirect('admin')
            else:
                login(request,user)
                return redirect('program')
        else:
            form = loginform()
            return render(request, 'admission_sys/log.html', {'form': form,'invalid':1})
    else:
        form = loginform()
    return render(request, 'admission_sys/log.html', {'form': form})

def signup(request):

    if request.method=='POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            user=form.save()
            user.refresh_from_db()
            user.signup.program=form.cleaned_data.get('Program')
            user.signup.firstname=form.cleaned_data.get('First_name')
            user.signup.last_name = form.cleaned_data.get('Last_name')
            user.signup.email = form.cleaned_data.get('email')
            user.signup.password = form.cleaned_data.get('password1')
            user.signup.university = 'Islamabad'
            user.signup.save()
            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(username=username,password=raw_password)
            login(request,user)
            return redirect('program')
    else:
        form = SignUpForm()
    return render(request, 'admission_sys/signup.html', {'form':form})

@login_required
def application(request):
    try:
        per = Personal.objects.get(signup=request.user.signup)
        form = personalform(initial={'Fullname': per.uname,'Father_name':per.fname,'Month':per.month,
                                 'Date':per.day,'Year':per.year,'Gender':per.gender,'Citizen':per.citizen,
                                 'Domicile':per.domicile,'CNIC':per.cnici,'CNICI':per.cnicii,'CNICII':per.cniciii,
                                 'Mobilecode':per.mobcode,'Mobile':per.mobnumber,})
        if request.method == 'POST':
            per.uname = request.POST.get('Fullname')
            per.fname = request.POST.get('Father_name')
            per.month = request.POST.get('Month')
            per.day = request.POST.get('Date')
            per.year = request.POST.get('Year')
            per.gender = request.POST.get('Gender')
            per.citizen = request.POST.get('Citizen')
            per.domicile = request.POST.get('Domicile')
            per.cnici = request.POST.get('CNIC')
            per.cnicii = request.POST.get('CNICI')
            per.cniciii = request.POST.get('CNICII')
            per.mobcode = request.POST.get('Mobilecode')
            per.mobnumber = request.POST.get('Mobile')
            per.save()
            next = request.POST.get('next', '/Apply_Online/address')
            return HttpResponseRedirect(next)
        else:
            sta = get_object_or_404(Status,signup=request.user.signup)
            return render(request, 'admission_sys/application.html', {'form': form,'status':sta})


    except:
        if request.method=='POST':
            pe=Personal()
            stat = get_object_or_404(Status,signup=request.user.signup)
            pe.signup=request.user.signup
            pe.uname=request.POST.get('Fullname')
            pe.fname=request.POST.get('Father_name')
            pe.month = request.POST.get('Month')
            pe.day = request.POST.get('Date')
            pe.year = request.POST.get('Year')
            pe.gender = request.POST.get('Gender')
            pe.citizen = request.POST.get('Citizen')
            pe.domicile = request.POST.get('Domicile')
            pe.cnici = request.POST.get('CNIC')
            pe.cnicii = request.POST.get('CNICI')
            pe.cniciii = request.POST.get('CNICII')
            pe.mobcode = request.POST.get('Mobilecode')
            pe.mobnumber = request.POST.get('Mobile')

            try:
                myfile = request.FILES['myfile1']
                fs = FileSystemStorage()
                filename = fs.save(myfile.name, myfile)
                uploaded_file_url = fs.url(filename)

                pe.photo = uploaded_file_url
            except:
                pe.photo = 'No file'
            request.user.save()
            stat.personalstatus = '1'
            stat.save()
            pe.save()
            next = request.POST.get('next', '/Apply_Online/address')
            return HttpResponseRedirect(next)
        else:
            form = personalform
            sta = get_object_or_404(Status, signup=request.user.signup)
            return render(request,'admission_sys/application.html',{'form':form,'status':sta})

@login_required
def address(request):
    try:
        addr = Address.objects.get(signup=request.user.signup)
        addre = address_detail_form(initial={'Address':addr.address,'City':addr.city,'Phone':addr.phone,
                                         'Address2':addr.addresstwo,'City2':addr.citytwo,
                                          'Phone2':addr.phonetwo,'Address3':addr.addressthree,
                                          'City3':addr.citythree,'Phone3':addr.phonethree,
                                          'Father_mobile':addr.fathermob})
        if request.method == 'POST':
            addr.address = request.POST.get('Address')
            addr.city = request.POST.get('City')
            addr.phone = request.POST.get('Phone')
            addr.save()
            #next = request.POST.get('next', '/Apply_Online/education')
            return redirect('education')
        else:
            sta = get_object_or_404(Status,signup=request.user.signup)
            return render(request, 'admission_sys/Address_detail.html', {'form': addre,'status':sta})
    except:
        if request.method == 'POST':
            ad=Address()
            stat = get_object_or_404(Status,signup=request.user.signup)
            ad.signup=request.user.signup
            ad.address=request.POST.get('Address')
            ad.city = request.POST.get('City')
            ad.phone = request.POST.get('Phone')
            if 'ad2' in request.POST:
                ad.addresstwo = request.POST.get('Address')
                ad.citytwo = request.POST.get('City')
                ad.phonetwo = request.POST.get('Phone')
            else:
                ad.addresstwo = request.POST.get('Address2')
                ad.citytwo = request.POST.get('City2')
                ad.phonetwo = request.POST.get('Phone2')
            if 'ad3' in request.POST:
                ad.addressthree = request.POST.get('Address')
                ad.citythree = request.POST.get('City')
                ad.phonethree = request.POST.get('Phone')
            else:
                ad.addressthree = request.POST.get('Address3')
                ad.citythree = request.POST.get('City3')
                ad.phonethree = request.POST.get('Phone3')
            ad.fathermob = request.POST.get('Father_mobile')
            ad.activem = 'y'
            ad.activef = 'z'
            stat.address = '1'
            stat.save()
            ad.save()

            #next = request.POST.get('next', '/Apply_Online/education')
            return redirect('education')
        else:
            address_form = address_detail_form
            sta = get_object_or_404(Status, signup=request.user.signup)
            return render(request,'admission_sys/Address_detail.html',{'form':address_form,'status':sta})

def _get_form(request, formcls, prefix):
    data = request.POST if prefix in request.POST else None
    return formcls(data, prefix=prefix)


@login_required
def education(request):
    sig = request.user.signup
    sta = get_object_or_404(Status,signup=request.user.signup)
    if request.method=='POST':
        Matric = Matic_form
        fsc = Fsc_form
        BSC = B_form
        Mas = M_form
        Nts = Nts_form
        res = Resultcard()
        res.signup = request.user.signup
        if Matric.is_valid and request.POST.get('Degree') :
            try:
                a = EducationMatric.objects.get(signup=request.user.signup)
            except:
                mat = EducationMatric()
                stat = get_object_or_404(Status, signup=request.user.signup)
                mat.signup = request.user.signup
                mat.degree = request.POST.get('Degree')
                mat.yearpass = request.POST.get('Year_of_passing')
                mat.board = request.POST.get('Board')
                mat.subject = request.POST.get('Subject')
                mat.totalmark = request.POST.get('Total_marks')
                mat.obtainmark = request.POST.get('Obtained_marks')
                mat.percent = (int(request.POST.get('Obtained_marks'))/int(request.POST.get('Total_marks')))*100
                res.signup = request.user.signup
                res.save()

                try:
                    myfile = request.FILES['myfile1']
                    fs = FileSystemStorage()
                    filename = fs.save(myfile.name, myfile)
                    uploaded_file_url = fs.url(filename)
                    result = get_object_or_404(Resultcard,signup=request.user.signup)
                    result.mresult = uploaded_file_url
                    result.save()

                except:
                    result = get_object_or_404(Resultcard, signup=request.user.signup)
                    result.mresult = 'no file'
                    result.save()
                try:
                    myfile = request.FILES['myfile9']
                    fs = FileSystemStorage()
                    filename = fs.save(myfile.name, myfile)
                    uploaded_file_url = fs.url(filename)
                    result = get_object_or_404(Resultcard,signup=request.user.signup)
                    result.e_certificate = uploaded_file_url
                    result.save()

                except:
                    result = get_object_or_404(Resultcard, signup=request.user.signup)
                    result.save()
                stat.education = '1'
                stat.metric = '1'
                stat.save()
                mat.save()


        else:
            return redirect('fsc')

    else:
        try:
            matric = EducationMatric.objects.get(signup=request.user.signup)
            Mat = Matic_form(
                initial={'Degree': matric.degree, 'Year_of_passing': matric.yearpass, 'Board': matric.board,
                         'Subject': matric.subject, 'Total_marks': matric.totalmark,
                         'Obtained_marks': matric.obtainmark,'Percentage':matric.percent})

            fsc = Fsc_form
            BSC = B_form
            Mas = M_form
            Nts = Nts_form

            return render(request, 'admission_sys/Education_detail.html',
                              {'form1': Mat, 'form2': fsc, 'form3': BSC, 'form4': Mas, 'form5': Nts,'signup':sig,'status':sta})


        except:
            Mat = Matic_form()
            return render(request,'admission_sys/Education_detail.html',{'form1': Mat,'signup':sig,'status':sta})
    return redirect('fsc')

@login_required
def fsc(request):
    Matric = Matic_form
    fsc = Fsc_form
    BSC = B_form
    Mas = M_form
    Nts = Nts_form
    sig = request.user.signup
    sta = get_object_or_404(Status,signup=request.user.signup)
    if request.method == 'POST':
        if fsc.is_valid and request.POST.get('Degree2'):
            try:
                b = EducationFsc.objects.get(signup=request.user.signup)
            except:
                fsc = EducationFsc()
                stat = get_object_or_404(Status, signup=request.user.signup)
                fsc.signup = request.user.signup
                fsc.waiting = 'fscwaiting'
                fsc.fsedeg = request.POST.get('Degree2')
                fsc.fseyr = request.POST.get('Year_of_passing2')
                fsc.fsebod = request.POST.get('Board2')
                fsc.fsesub = request.POST.get('Subject2')
                fsc.fsetono = request.POST.get('Total_marks2')
                fsc.fseobno = request.POST.get('Obtained_marks2')
                fsc.percent = (int(request.POST.get('Obtained_marks2'))/int(request.POST.get('Total_marks2')))*100

                try:
                    myfile = request.FILES['myfile2']
                    fs = FileSystemStorage()
                    filename = fs.save(myfile.name, myfile)
                    uploaded_file_url = fs.url(filename)
                    result = get_object_or_404(Resultcard, signup=request.user.signup)
                    result.fresult = uploaded_file_url
                    result.save()

                except:
                    result = get_object_or_404(Resultcard, signup=request.user.signup)
                    result.fresult = 'no file'
                    result.save()
                try:
                    myfile = request.FILES['myfile5']
                    fs = FileSystemStorage()
                    filename = fs.save(myfile.name, myfile)
                    uploaded_file_url = fs.url(filename)
                    result = get_object_or_404(Resultcard, signup=request.user.signup)
                    result.hope_certificate = uploaded_file_url
                    result.save()

                except:
                    result = get_object_or_404(Resultcard, signup=request.user.signup)
                    result.hope_certificate = 'no file'
                    result.save()
                try:
                    myfile = request.FILES['myfile9']
                    fs = FileSystemStorage()
                    filename = fs.save(myfile.name, myfile)
                    uploaded_file_url = fs.url(filename)
                    result = get_object_or_404(Resultcard, signup=request.user.signup)
                    result.e_certificate_a = uploaded_file_url
                    result.save()

                except:
                    result = get_object_or_404(Resultcard, signup=request.user.signup)
                    result.e_certificate_a = 'no file'
                    result.save()
                stat.fsc = '1'
                stat.save()
                fsc.save()
    else:
        try:
            fa = EducationFsc.objects.get(signup=request.user.signup)
            ff = Fsc_form(
                initial={'Degree2': fa.fsedeg, 'Year_of_passing2': fa.fseyr, 'Board2': fa.fsebod,
                         'Subject2': fa.fsesub, 'Total_marks2': fa.fsetono,
                         'Obtained_marks2': fa.fseobno,'Percentage2':fa.percent})
            return render(request, 'admission_sys/fsc.html',
                          {'form1': Matric, 'form2': ff, 'form3': BSC, 'form4': Mas, 'form5': Nts, 'signup': sig,
                           'status': sta})

        except:
            pass

    return render(request, 'admission_sys/fsc.html',
                  {'form1': Matric, 'form2': fsc, 'form3': BSC, 'form4': Mas, 'form5': Nts, 'signup': sig,
                   'status': sta})


@login_required
def bsc(request):
    Matric = Matic_form
    fsc = Fsc_form
    BSC = B_form
    Mas = M_form
    Nts = Nts_form
    sig = request.user.signup
    sta = get_object_or_404(Status,signup=request.user.signup)
    if request.method == 'POST':
        if BSC.is_valid and request.POST.get('Degree3'):
            try:
                d = EducationBsc.objects.get(signup=request.user.signup)
            except:
                bsc = EducationBsc()
                stat = get_object_or_404(Status, signup=request.user.signup)
                bsc.signup = request.user.signup
                bsc.bseged = request.POST.get('Degree3')
                bsc.bseyr = request.POST.get('Year_of_passing3')
                bsc.bseuni = request.POST.get('Board3')
                bsc.bsesub = request.POST.get('Subject3')
                bsc.bsetocgpa = request.POST.get('Total_marks3')
                bsc.bseobt = request.POST.get('Obtained_marks3')

                try:
                    myfile = request.FILES['myfile3']
                    fs = FileSystemStorage()
                    filename = fs.save(myfile.name, myfile)
                    uploaded_file_url = fs.url(filename)
                    result = get_object_or_404(Resultcard, signup=request.user.signup)
                    result.bscresult = uploaded_file_url
                    result.save()

                except:
                    result = get_object_or_404(Resultcard, signup=request.user.signup)
                    result.bscresult = 'no file'
                    result.save()
                stat.bsc = '1'
                stat.save()
                bsc.save()
    return render(request,'admission_sys/bsc.html',
                      {'form1': Matric, 'form2': fsc, 'form3': BSC, 'form4': Mas, 'form5': Nts,'signup':sig,'status':sta})

@login_required
def bs(request):
    Matric = Matic_form
    fsc = Fsc_form
    BSC = B_form
    Mas = M_form
    Nts = Nts_form
    sig = request.user.signup
    sta = get_object_or_404(Status,signup=request.user.signup)
    if request.method == 'POST':
        if Mas.is_valid and request.POST.get('Msdeg'):
            try:
                c = EducationMs.objects.get(signup=request.user.signup)
            except:
                ms = EducationMs()
                stat = get_object_or_404(Status, signup=request.user.signup)
                ms.signup = request.user.signup
                ms.msdeg = request.POST.get('Msdeg')
                ms.msyr = request.POST.get('Year_of_passing4')
                ms.msnui = request.POST.get('Board4')
                ms.mssub = request.POST.get('Subject4')
                ms.mstocgpa = request.POST.get('Total_marks4')
                ms.msobcgpa = request.POST.get('Obtained_marks4')

                try:
                    myfile = request.FILES['myfile4']
                    fs = FileSystemStorage()
                    filename = fs.save(myfile.name, myfile)
                    uploaded_file_url = fs.url(filename)
                    result = get_object_or_404(Resultcard, signup=request.user.signup)
                    result.bsresult = uploaded_file_url
                    result.save()

                except:
                    result = get_object_or_404(Resultcard, signup=request.user.signup)
                    result.bsresult = 'no file'
                    result.save()
                stat.ms = '1'
                stat.save()
                ms.save()
    else:
        try:
            bss = EducationMs.objects.get(signup=request.user.signup)
            bb = M_form(
                initial={'Msdeg': bss.msdeg, 'Year_of_passing4': bss.msyr, 'Board4': bss.msnui,
                         'Subject4': bss.mssub, 'Total_marks4': bss.mstocgpa,
                         'Obtained_marks4': bss.mstocgpa})
            return render(request, 'admission_sys/bs.html',
                          {'form1': Matric, 'form2': fsc, 'form3': BSC, 'form4': bb, 'form5': Nts, 'signup': sig,
                           'status': sta})

        except:
            pass
    return render(request,'admission_sys/bs.html',
                      {'form1': Matric, 'form2': fsc, 'form3': BSC, 'form4': Mas, 'form5': Nts,'signup':sig,'status':sta})

@login_required
def nts(request):
    Matric = Matic_form
    fsc = Fsc_form
    BSC = B_form
    Mas = M_form
    Nts = Nts_form
    sig = request.user.signup
    sta = get_object_or_404(Status,signup=request.user.signup)
    if request.method == 'POST':
        if Nts.is_valid and request.POST.get('roll_num'):
            try:
                e = Ntstest.objects.get(signup=request.user.signup)
            except:
                nts = Ntstest()
                stat = get_object_or_404(Status, signup=request.user.signup)
                nts.signup = request.user.signup
                nts.rolno = request.POST.get('roll_num')
                nts.testtype = request.POST.get('test_type')
                nts.ob_marks = request.POST.get('obtain_percentage')
                nts.month_nts = request.POST.get('Date')
                nts.day_nts = request.POST.get('Year')
                nts.year_nts = request.POST.get('Month')
                try:
                    myfile = request.FILES['myfile']
                    fs = FileSystemStorage()
                    filename = fs.save(myfile.name, myfile)
                    uploaded_file_url = fs.url(filename)
                    nts.nts_resultcard = uploaded_file_url
                except:
                    nts.nts_resultcard = 'no file'
                stat.nts = '1'
                stat.save()
                nts.save()
    return render(request,'admission_sys/nts.html',
                      {'form1': Matric, 'form2': fsc, 'form3': BSC, 'form4': Mas, 'form5': Nts,'signup':sig,'status':sta})



@login_required
def others(request):
    sta = get_object_or_404(Status, signup=request.user.signup)
    per = get_object_or_404(Personal,signup=request.user.signup)
    pro = get_object_or_404(Programs,signup=request.user.signup)
    try:
        oth = Otherdeatils.objects.get(signup_id=request.user.signup.signup_id)
        if request.method == 'POST':
            return render(request, 'admission_sys/others.html', {'status': sta})
    except:
        if request.method == 'POST':
            if request.POST.get('transport'):
                tra = Otherdeatils()
                stat = get_object_or_404(Status, signup=request.user.signup)
                tra.signup_id = request.user.signup.signup_id
                tra.transport = 'YES'
                tra.hostel = 'NO'
                stat.othdetil = '1'
                stat.save()
                tra.save()

            elif request.POST.get('hostle'):
                tra = Otherdeatils()
                stat = get_object_or_404(Status, signup=request.user.signup)
                tra.signup_id = request.user.signup.signup_id
                tra.transport = 'NO'
                tra.hostel = 'YES'
                stat.othdetil = '1'
                stat.save()
                tra.save()

            else:
                tra = Otherdeatils()
                stat = get_object_or_404(Status, signup=request.user.signup)
                tra.signup_id = request.user.signup.signup_id
                tra.transport = 'NO'
                tra.hostel = 'NO'
                stat.othdetil = '1'
                stat.save()
                tra.save()

            #my_url = "http://www.paigam.pk/"

            #uClient = uReq(my_url)
            #page_html = uClient.read()
            #uClient.close()

            #page_soup = soup(page_html, "html.parser")

            #container = page_soup.find("li", {"id": "LoginButtonID"})

            #link = re.sub("\.\.", "", container.find('a')['href'])
            #my_url2 = "http://www.paigam.pk" + link

            #uClient = uReq(my_url2)
            #page_html2 = uClient.read()
            #uClient.close()

            #br = mechanize.Browser()

            #br.open(my_url2)
            #response = br.response()

            #def select_form(form):
             #   return form.attrs.get('id', None) == 'form1'

           # br.select_form(predicate=select_form)
            #br.form['ctl00$MainPlaceHolder$UserNameTextBox'] = 'AUIC'
            #br.form['ctl00$MainPlaceHolder$PasswordTextBox'] = 'Abasyn@123'
            #br.submit()

            #sms_url = "http://www.paigam.pk/UserSendSingleSMS.aspx"

            #br.open(sms_url)

            #br.select_form(predicate=select_form)
            #br.form['ctl00$MainPlaceHolder$MobileTextBox'] = "03085151383"
            #br.form['ctl00$MainPlaceHolder$MessageTextBox'] = "Mr. "+per.uname+" your Admission form " \
             #                                                                  "for admission in "+pro.programone+" has " \
              #                                                                  "been submitted sucessfully"
            #br.submit()

            det = Details()
            det.signup = request.user.signup
            det.email = request.user.signup.email
            det.submit = '1'
            det.date = datetime.date.today()
            det.fname = request.user.signup.firstname
            det.sname = request.user.signup.last_name
            det.mcod = '0'
            det.mnum = '0'
            det.save()
            sub = Submit()
            sub.signup = request.user.signup
            sub.conform = 'true'
            sub.save()
            status = get_object_or_404(Status,signup=request.user.signup)
            status.submit = '1'
            status.save()
            return render(request, 'admission_sys/others.html', {'status': sta})



    return render(request, 'admission_sys/others.html',{'status':sta})

@login_required
def program(request):


    sig = request.user.signup
    if request.method=='POST':
        try:
            x = Programs.objects.get(signup=request.user.signup)
            return redirect('application')
        except:
            pro = Programs()
            stat = Status()
            stat.signup = request.user.signup
            pro.signup = request.user.signup

            if(sig.program=='Undergraduate' or sig.program=='BS'):
                pro.programone = request.POST.get('Program_choice_11')
                pro.programtwo = request.POST.get('Program_choice_21')
                pro.programthree = request.POST.get('Program_choice_31')
            else:
                pro.programone = request.POST.get('Program_choice_1')
                pro.programtwo = request.POST.get('Program_choice_2')
                pro.programthree = request.POST.get('Program_choice_3')

            stat.program = '1'
            stat.save()
            pro.save()
            return redirect('application')

    else:
        programb = Offered_programs.objects.filter(status=1).filter(code=1)
        programm = Offered_programs.objects.filter(status=1).filter(code=2)

        try:
            sel = Programs.objects.get(signup=sig)
            one = sel.programone
            two = sel.programtwo
            three = sel.programthree
            statu = get_object_or_404(Status,signup=request.user.signup)
            return render(request, 'admission_sys/Program_choice.html',
                          {'form': programb, 'formm': programm, 'signup': sig,'status':statu,
                           'one':one,'two':two,'three':three})
        except:
           pass
    programb = Offered_programs.objects.filter(status = 1 ).filter(code=1)
    programm = Offered_programs.objects.filter(status=1).filter(code=2)
    return render(request,'admission_sys/Program_choice.html',{'form':programb,'formm':programm,'signup':sig})



@login_required
def downloads(request):

    sta = get_object_or_404(Status,signup=request.user.signup)
    return render(request,'admission_sys/download.html',{'status':sta})
@login_required
def form(request):

    user = request.user
    sub = Submit.objects.get(signup=request.user.signup)
    personal = Personal.objects.get(signup=request.user.signup)
    prog = Programs.objects.get(signup=request.user.signup)
    educationm = EducationMatric.objects.get(signup=request.user.signup)
    educationf = EducationFsc.objects.get(signup=request.user.signup)
    adm = Admissions.objects.get(id=7)
    det = Details.objects.get(signup=request.user.signup)
    try:
        educationb = EducationBsc.objects.get(signup=request.user.signup)
    except:
        educationb = ""
    try:
        educationms = EducationMs.objects.get(signup=request.user.signup)
    except:
        educationms = ""
    addre = Address.objects.get(signup=request.user.signup)
    othr = Otherdeatils.objects.get(signup_id=request.user.signup.signup_id)
    c1 = str(personal.cnici)
    c2 = str(personal.cnicii)
    c3 = str(personal.cniciii)
    c4 = str(personal.day)
    c5 = str(personal.month)
    c6 = str(personal.year)

    return render(request,'admission_sys/application_form.html',{'submit':sub,'user':user,'personal':personal,'program':prog,
                                                                 'educationm':educationm,'educationf':educationf,
                                                                 'educationb':educationb,'educationms':educationms,
                                                                 'address':addre,'other':othr,'adm':adm,
                                                                 'c1':c1,'c2':c2,'c3':c3,
                                                                 'c4':c4,'c5':c5,'c6':c6,'date':det.date

                                                                 })




def fee(request):
    user = request.user
    personal = Personal.objects.get(signup=request.user.signup)
    prog = Programs.objects.get(signup=request.user.signup)

    return render(request,'admission_sys/feevoucher.html',{'user':user,'personal':personal,'program':prog,'date':datetime.datetime.now()})

def card(request):
    sub = Submit.objects.get(signup=request.user.signup)
    user = request.user
    personal = Personal.objects.get(signup=request.user.signup)
    prog = Programs.objects.get(signup=request.user.signup)
    adt = Admitcard.objects.get(id=124)
    adm = Admissions.objects.get(id=7)
    return render(request,'admission_sys/admit_card.html'
                  , {'submit':sub,'user': user, 'personal': personal, 'program': prog, 'date': datetime.date.today()
                     ,'card':adt,'adm':adm})

def admin_signup(request):
    if not request.user.is_staff:
        return redirect('application')

    if request.method=='POST':
        form = admin_signup_form(request.POST)
        if form.is_valid():
            user = form.save()
            user.refresh_from_db()
    else:
        form = admin_signup_form()


    return render(request,'admission_sys/admin_signup.html',{'form':form})

def admin(request):
    if not request.user.is_staff:
        return redirect('application')


    sub = Submit.objects.all()
    ids = sub.values_list('signup_id',flat=True)
    applicants = Personal.objects.filter(signup_id__in=ids)

    app_id = applicants.values_list('signup_id',flat=True)
    sub_num = Submit.objects.filter(signup_id__in=app_id)

    det = Details.objects.filter(signup_id__in=app_id)

    deta = list(reversed(det))
    app = list(reversed(applicants))
    sub2 = list(reversed(sub_num))

    x = zip(sub2, app, deta)
    if request.method == 'POST':
        return render(request, 'admission_sys/admin.html', {'submit': x})
    else:
        adm = get_object_or_404(Admissions,id=7)
        datemask = "%Y-%m-%d"
        da = datetime.datetime.strftime(adm.open_date, datemask)
        #paginator = Paginator(sub2,30)
        #page = request.GET.get('page')
        #applicant = paginator.get_page(page)

        if 'q' in request.GET and request.GET['q']:
            q = request.GET['q']
            res = Submit.objects.get(id=q)
            appl = Personal.objects.get(signup_id=res.signup_id)
            de = Details.objects.get(signup_id=res.signup_id)

            return render(request, 'admission_sys/admin.html', {'submit': x, 'result': appl,'id':res,'date':de})


    return render(request,'admission_sys/admin.html',{'submit':x,'admission':da})

def detail(request,Signup_id):
    if not request.user.is_staff:
        return redirect('application')
    stat = get_object_or_404(Status,signup_id=Signup_id)
    form = get_object_or_404(Personal,signup=Signup_id)
    return render(request,'admission_sys/detail.html',{'status':stat,'form':form})

def adm_form(request,id):
    if not request.user.is_staff:
        return redirect('application')

    user = get_object_or_404(Signup,signup_id = id)
    user_id = user.user_id
    main_user = get_object_or_404(User, id = user_id)
    email = main_user.email
    personal = get_object_or_404(Personal,signup=id)
    try:
        prog = get_object_or_404(Programs,signup_id=id)
    except:
        prog = ""
    try:
        educationm = get_object_or_404(EducationMatric,signup_id=id)
    except:
        educationm = ""
    try:
        educationf = get_object_or_404(EducationFsc,signup_id=id)
    except:
        educationf = ""
    try:
        educationb = get_object_or_404(EducationBsc,signup_id=id)
    except:
        educationb = ""
    try:
        educationms = get_object_or_404(EducationMs,signup_id=id)
    except:
        educationms = ""
    try:
        addre = get_object_or_404(Address,signup_id=id)
    except:
        addre = ""
    try:
        othr = get_object_or_404(Otherdeatils,signup_id=id)
    except:
        othr = ""
    try:
        sub = get_object_or_404(Submit,signup_id = id)
    except:
        sub = ""
    c1 = str(personal.cnici)
    c2 = str(personal.cnicii)
    c3 = str(personal.cniciii)
    c4 = str(personal.day)
    c5 = str(personal.month)
    c6 = str(personal.year)
    adm = Admissions.objects.get(id=7)
    det = get_object_or_404(Details,signup_id = id)
    res = get_object_or_404(Resultcard, signup_id = id)
    return render(request,'admission_sys/adm_form.html', { 'personal': personal, 'program': prog,
                                                                   'educationm': educationm, 'educationf': educationf,
                                                                   'educationb': educationb, 'educationms': educationms,
                                                                   'address': addre, 'other': othr,
                                                                    'submit':sub,'user':user,'adm':adm,
                                                                    'c1': c1, 'c2': c2, 'c3': c3,
                                                                    'c4': c4, 'c5': c5, 'c6': c6,'date':det.date,
                                                                    'email':email,'result':res
                                                                    })



def adt_card(request,idd):
    if not request.user.is_staff:
        return redirect('application')
    adm = Admissions.objects.get(id=7)
    adt = Admitcard.objects.get(id=124)
    personal = Personal.objects.get(signup_id=idd)
    try:
        prog = Programs.objects.get(signup_id=idd)
    except:
        prog = ""
    try:
        sub = get_object_or_404(Submit, signup_id=idd)
    except:
        sub = ""
    return render(request, 'admission_sys/adt_card.html'
                  , {'submit':sub,'personal': personal, 'program': prog, 'date': datetime.datetime.now()
                     ,'adm':adm,'card':adt})

def ssc(request,id):
    if not request.user.is_staff:
        return redirect('application')
    try:
        result = Resultcard.objects.get(signup_id=id)
    except:
        request = ""
    return render(request,'admission_sys/ssc.html',{'card':result})
def hssc(request,id):
    if not request.user.is_staff:
        return redirect('application')
    try:
        result = Resultcard.objects.get(signup_id=id)
    except:
        result = ""
    return render(request,'admission_sys/hssc.html',{'card':result})

def admin_downloads(request):
    if not request.user.is_staff:
        return redirect('application')
    dform = downloadform()
    if request.method == 'POST':
        response = HttpResponse(content_type='text/csv')
        response['Content-Disposition'] = 'attachment; filename="Applicants.csv"'

        writer = csv.writer(response)
        writer.writerow(['ID', 'Form_number', 'Name','Mobile number', 'Program','City', 'Matric obtained marks',
                         'Matric total marks','Matric %','Fsc total marks','Fsc obtained marks','Fsc %','14year total marks',
                        '14year obtained marks','14year %','BS total marks/gpa','BS obtained marks.gpa',
                         'BS %','Date'
                         ])
        date2 = request.POST.get('date')
        date3 = request.POST.get('date2')
        det = Details.objects.filter(date__range=[date2,date3])
        ids = det.values_list('signup_id',flat=True)
        status = Status.objects.filter(signup_id__in=ids)

        id = 0
        for sta in status:


            try:
                tt = 0
                oo = 0
                mm = 0
                cc = 0
                pp = 0
                pp2 = 0
                y = get_object_or_404(Submit,signup_id=sta.signup_id)
                x = get_object_or_404(Personal,signup_id=sta.signup_id)
                m = get_object_or_404(EducationMatric,signup_id=sta.signup_id)
                f = get_object_or_404(EducationFsc,signup_id=sta.signup_id)
                p = get_object_or_404(Programs,signup_id=sta.signup_id)
                d = get_object_or_404(Details,signup_id=sta.signup_id)
                a = get_object_or_404(Address,signup_id=sta.signup_id)
                try:
                    bss = get_object_or_404(EducationBsc,signup_id=sta.signup_id)
                    tt= bss.bsetocgpa
                    oo = bss.bseobt
                    pp = (oo/tt)*100
                except:
                    pass
                try:
                    bss2 = get_object_or_404(EducationMs, signup_id=sta.signup_id)
                    mm = bss2.mstocgpa
                    cc = bss2.mstocgpa
                    pp2 = (cc/mm)*100
                except:
                    pass
                cod = str(x.mobcode)
                num = x.mobnumber
                g = ("0"+cod+'-'+num)
                id += 1
                feilds_list = [[id,y.id,x.uname,g,p.programone,a.city,m.totalmark,m.obtainmark,m.percent,f.fsetono,f.fseobno,f.percent,
                                tt,oo,pp,mm,cc,pp2,d.date]]
                writer.writerows(feilds_list)

            except:
                pass

        return response
    else:
        return render(request,'admission_sys/admin_downloads.html',{'form':dform})


def admissions(request):
    adm = admissionsform()
    admit = admitform()
    admis = get_object_or_404(Admissions,id=7)
    admitcard = get_object_or_404(Admitcard, id=124)
    if request.method == 'POST':
        if request.POST.get('date'):
            admitcard.date = request.POST.get('date')
            admitcard.time_start = request.POST.get('time_start')
            admitcard.time_end = request.POST.get('time_end')
            admitcard.save()
            return render(request, 'admission_sys/admissions.html', {'form': adm, 'aform': admit, 'save': 1})
        else:
            admis.session = request.POST.get('Session')
            admis.year = request.POST.get('Year')
            admis.open_date = request.POST.get('Open_date')
            admis.close_date = request.POST.get('Close_date')
            admis.save()
            return redirect('programs')
    else:

        if admis.close_date > datetime.date.today():
            if admitcard.date>datetime.date.today():
                return render(request, 'admission_sys/admissions.html', {'form': adm, 'aform': admit, 'x': 1,'y':1})
            else:
                return render(request, 'admission_sys/admissions.html',{'form': adm,'aform':admit,'x':1})
        if admitcard.date > datetime.date.today():
            return render(request, 'admission_sys/admissions.html', {'form': adm, 'aform': admit, 'y': 1})

        else:
            return render(request, 'admission_sys/admissions.html', {'form': adm,'aform':admit})

    return render(request,'admission_sys/admissions.html',{'form': adm,'aform':admit})


def programs(request):
    progb = Offered_programs.objects.all
    if request.method == 'POST':
        prog_zero = Offered_programs.objects.all()
        for pro in prog_zero:
            pro.status = 0
            pro.save()
        add_programs = request.POST.getlist('programs')
        for add in add_programs:
            pr = get_object_or_404(Offered_programs,short_name=add)
            pr.status = 1
            pr.save()
        return redirect('admission_opened')
    return render(request,'admission_sys/programs.html',{'Programsb':progb})


def admission_opened(request):
    session = get_object_or_404(Admissions,id = 7)
    programs = Offered_programs.objects.filter(status = "1")
    admit = get_object_or_404(Admitcard,id=124)
    return render(request,'admission_sys/admission_opened.html',{'session':session,'programs':programs,'admit':admit})

def add_programs(request):
    if request.method == 'POST':
        prog = Offered_programs()
        prog.status = 0
        prog.name = request.POST.get('name')
        prog.short_name = request.POST.get('short_name')
        if request.POST.get('select') == 'BS':
            prog.code = 1
        elif request.POST.get('select') == 'MS':
            prog.code = 2
        elif request.POST.get('selec') == 'PHD':
            prog.code = 3
        prog.Department = request.POST.get('dep')
        prog.save()
        return render(request,'admission_sys/add_programs.html',{'sucess':1})
    return render(request,'admission_sys/add_programs.html',{'sucess':0})


def print(request,id):
    if not request.user.is_staff:
        return redirect('application')
    user = get_object_or_404(Signup,signup_id = id)
    user_id = user.user_id
    main_user = get_object_or_404(User, id = user_id)
    email = main_user.email
    personal = get_object_or_404(Personal,signup=id)
    try:
        prog = get_object_or_404(Programs,signup_id=id)
    except:
        prog = ""
    try:
        educationm = get_object_or_404(EducationMatric,signup_id=id)
    except:
        educationm = ""
    try:
        educationf = get_object_or_404(EducationFsc,signup_id=id)
    except:
        educationf = ""
    try:
        educationb = get_object_or_404(EducationBsc,signup_id=id)
    except:
        educationb = ""
    try:
        educationms = get_object_or_404(EducationMs,signup_id=id)
    except:
        educationms = ""
    try:
        addre = get_object_or_404(Address,signup_id=id)
    except:
        addre = ""
    try:
        othr = get_object_or_404(Otherdeatils,signup_id=id)
    except:
        othr = ""
    try:
        sub = get_object_or_404(Submit,signup_id = id)
    except:
        sub = ""
    c1 = str(personal.cnici)
    c2 = str(personal.cnicii)
    c3 = str(personal.cniciii)
    c4 = str(personal.day)
    c5 = str(personal.month)
    c6 = str(personal.year)
    adm = Admissions.objects.get(id=7)
    det = get_object_or_404(Details,signup_id = id)
    res = get_object_or_404(Resultcard, signup_id = id)
    return render(request,'admission_sys/print.html', { 'personal': personal, 'program': prog,
                                                                   'educationm': educationm, 'educationf': educationf,
                                                                   'educationb': educationb, 'educationms': educationms,
                                                                   'address': addre, 'other': othr,
                                                                    'submit':sub,'user':user,'adm':adm,
                                                                    'c1': c1, 'c2': c2, 'c3': c3,
                                                                    'c4': c4, 'c5': c5, 'c6': c6,'date':det.date,
                                                                    'email':email,'result':res
                                                                    })


def print_all(request,id):
    if not request.user.is_staff:
        return redirect('application')
    user = get_object_or_404(Signup,signup_id = id)
    user_id = user.user_id
    main_user = get_object_or_404(User, id = user_id)
    email = main_user.email
    personal = get_object_or_404(Personal,signup=id)
    try:
        prog = get_object_or_404(Programs,signup_id=id)
    except:
        prog = ""
    try:
        educationm = get_object_or_404(EducationMatric,signup_id=id)
    except:
        educationm = ""
    try:
        educationf = get_object_or_404(EducationFsc,signup_id=id)
    except:
        educationf = ""
    try:
        educationb = get_object_or_404(EducationBsc,signup_id=id)
    except:
        educationb = ""
    try:
        educationms = get_object_or_404(EducationMs,signup_id=id)
    except:
        educationms = ""
    try:
        addre = get_object_or_404(Address,signup_id=id)
    except:
        addre = ""
    try:
        othr = get_object_or_404(Otherdeatils,signup_id=id)
    except:
        othr = ""
    try:
        sub = get_object_or_404(Submit,signup_id = id)
    except:
        sub = ""
    c1 = str(personal.cnici)
    c2 = str(personal.cnicii)
    c3 = str(personal.cniciii)
    c4 = str(personal.day)
    c5 = str(personal.month)
    c6 = str(personal.year)
    adm = Admissions.objects.get(id=7)
    det = get_object_or_404(Details,signup_id = id)


    return render(request,'admission_sys/print2.html', { 'personal': personal, 'program': prog,
                                                                   'educationm': educationm, 'educationf': educationf,
                                                                   'educationb': educationb, 'educationms': educationms,
                                                                   'address': addre, 'other': othr,
                                                                    'submit':sub,'user':user,'adm':adm,
                                                                    'c1': c1, 'c2': c2, 'c3': c3,
                                                                    'c4': c4, 'c5': c5, 'c6': c6,'date':det.date,
                                                                    'email':email
                                                                    })

from os import listdir
def messages(request):
    if request.method == 'POST':
        recomended = request.POST.getlist('checks')
        my_url = "http://www.paigam.pk/"

        uClient = uReq(my_url)
        page_html = uClient.read()
        uClient.close()

        page_soup = soup(page_html, "html.parser")

        container = page_soup.find("li", {"id": "LoginButtonID"})

        link = re.sub("\.\.", "", container.find('a')['href'])
        my_url2 = "http://www.paigam.pk" + link

        uClient = uReq(my_url2)
        page_html2 = uClient.read()
        uClient.close()

        br = mechanize.Browser()

        br.open(my_url2)
        response = br.response()

        def select_form(form):
            return form.attrs.get('id', None) == 'form1'

        br.select_form(predicate=select_form)
        br.form['ctl00$MainPlaceHolder$UserNameTextBox'] = 'AUIC'
        br.form['ctl00$MainPlaceHolder$PasswordTextBox'] = 'Abasyn@123'
        br.submit()
        for r in recomended:
            su = get_object_or_404(Submit, id = r)
            pe = get_object_or_404(Personal,signup_id = su.signup_id)
            mobile_code = pe.mobcode
            mobile_number = pe.mobnumber
            path = 'static/adsys/challan_forms'


            sms_url = "http://www.paigam.pk/UserSendSingleSMS.aspx"

            br.open(sms_url)

            br.select_form(predicate=select_form)
            br.form['ctl00$MainPlaceHolder$MobileTextBox'] = "0"+str(mobile_code)+str(mobile_number)
            br.form['ctl00$MainPlaceHolder$MessageTextBox'] = "Mr. " + pe.uname + " your Fee Chalan Link is" \
                                                                                   "http://www.abasynisb.edu.pk/"+path+"/logo1.png"
            br.submit()



        return render(request, 'admission_sys/messages.html', {'sent':1})
    else:
        path = 'static/adsys/challan_forms'
        allfiles = listdir(path)
        sub = Submit.objects.all()
        ids = sub.values_list('signup_id',flat=True)
        applicants = Personal.objects.filter(signup_id__in=ids)

        app_id = applicants.values_list('signup_id',flat=True)
        sub_num = Submit.objects.filter(signup_id__in=app_id)

        adm = get_object_or_404(Admissions,id = 7)

        app = list(reversed(applicants))
        sub2 = list(reversed(sub_num))

        x = zip(sub2,app)

    return render(request,'admission_sys/messages.html',{'forms':allfiles,'submit':x})

def handle_uploaded_file(f):
    with open('static/adsys/challan_forms/'+f.name, 'wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)

from .forms import chaform
import shutil

def upload(request):


    if 'delete' in request.POST:
        path = 'static/adsys/challan_forms'
        allfiles = listdir(path)
        for f in allfiles:
            os.remove(path+'/'+f)
        form = chaform()
        return render(request, 'admission_sys/upload.html', {'form': form,'flag':1})
    elif request.method == 'POST' and request.FILES.getlist('file'):
        form = chaform(request.FILES)
        for f in request.FILES.getlist('file'):
            handle_uploaded_file(f)
        return redirect('files')
    else:
        form = chaform()
        return render(request, 'admission_sys/upload.html',{'form':form})



def files(request):
    path = 'static/adsys/challan_forms'
    allfiles = listdir(path)
    return render(request,'admission_sys/files.html',{'files':allfiles,'flag':0})