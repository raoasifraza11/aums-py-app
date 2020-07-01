import urllib
from django.shortcuts import render
from django.views import generic
from .models import Slider,Staff,Event,Fees,Acdamic_Calander,New,Timetable,Online_Admission,CLO
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import render

class IndexView(generic.ListView):
    template_name='index.html'
    context_object_name = 'object_list'
    queryset = Slider.objects.all()

    def get_context_data(self, **kwargs):
        context = super(IndexView, self).get_context_data(**kwargs)
        context['slider'] = Slider.objects.all()[:3]
        context['new'] = New.objects.all()[:3]
        context['link'] = Acdamic_Calander.objects.first()
        context['time'] = Timetable.objects.first()
        context['admission'] = Online_Admission.objects.first()
        context['event'] = Event.objects.all()[:3]
        return  context

class StaffView(generic.ListView):

    context_object_name = 'object_list'

    def get_template_names(self):
        template_name = ['computing_staff.html', 'electrical_staff.html','pharmacy_staff.html','business_staff.html','english_staff.html']
        return [self.template_name]

    def get_queryset(self):
        return Staff.objects.all()


class EventView(generic.ListView):
    template_name='events.html'
    context_object_name = 'event_list'


    def get_queryset(self):
        return  Event.objects.all()

class FeesView(generic.ListView):
    template_name='admission&aids/feestructure.html'
    context_object_name = 'event_list'


    def get_queryset(self):
        return  Fees.objects.order_by('-fees')

class OBEView(generic.ListView):
    template_name='obe.html'
    context_object_name = 'object_list'

    def get_template_names(self):
        template_name = ['department-civil/obe.html']
        return [self.template_name]

    def get_queryset(self):
        return  CLO.objects.all()
		
from django.conf import settings
path2 = settings.MEDIA_ROOT+'/downloads/challan_forms'
path3 = settings.MEDIA_ROOT+'/downloads/list'
from os import listdir
import csv
from easy_pdf.rendering import render_to_pdf_response
def recommended(request):
    if request.method == 'POST' and request.POST.get('submit'):
        id = request.POST.get('submit')
        allfiles2 = listdir(path3)
        for f in allfiles2:
            with open(path3 + '/' + f, errors='ignore') as csvfile:
                readCSV = csv.reader(csvfile)
                for row in readCSV:
                    if id==row[0]:
                        return render_to_pdf_response(request, 'Admission_Offer_letter.html', {'id':id, 'name':row[1],'program':row[3]})
                    else:
                        pass
    elif 'q' in request.GET:
        names = []
        numbers = []
        forms = []
        programs = []
        allfiles2 = listdir(path3)
        for f in allfiles2:
            with open(path3 + '/' + f, errors='ignore') as csvfile:
                readCSV = csv.reader(csvfile)
                for row in readCSV:
                    if row[0]==request.GET['q']:
                        name = row[0]
                        form = row[1]
                        number = row[2]
                        program = row[3]

                        names.append(name)
                        forms.append(form)
                        numbers.append(number)
                        programs.append(program)
                        x = zip(names, forms, numbers,programs)
                        return render(request, 'recommended.html', {'list': x,'flag':1})
                    else:
                        pass
                return render(request, 'recommended.html', {'id': request.GET['q'], 'flag': 0})
    else:
        names = []
        numbers = []
        forms = []
        allfiles2 = listdir(path3)
        for f in allfiles2:
            with open(path3 + '/' + f, errors='ignore') as csvfile:
                readCSV = csv.reader(csvfile)
                for row in readCSV:
                    name = row[0]
                    form = row[1]
                    number = row[2]

                    names.append(name)
                    forms.append(form)
                    numbers.append(number)
        x = zip(names, forms, numbers)
        return render(request, 'recommended.html')
    return render(request,'recommended.html')
    
def result(request):
    if 'q' in request.GET:
        count = 0
        allfiles2 = listdir(path3)
        for f in allfiles2:
            with open(path3 + '/' + f, errors='ignore') as csvfile:
                readCSV = csv.reader(csvfile)
                for r in readCSV:
                    count +=1
                    if count == 4:
                        courses = r
                    roll = r[0]
                    rollnumber = roll[-4:]
                    if rollnumber==request.GET['q']:
                        name = r[1]
                        reg = r[0]
                        cou = courses[6:]
                        gra = r[6:]
                        cgpa = r[3]
                        sgpa = r[2]
                        list = zip(cou,gra)
                        return render(request,'result.html',{'name':name,'reg':reg,'list':list,'cgpa':cgpa,'sgpa':sgpa,'flag':1})

    return render(request, 'result.html')

