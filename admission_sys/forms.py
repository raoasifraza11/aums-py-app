from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from datetime import datetime
from django_countries import Countries
from .models import Personal


YEAR_CHOICES = []
for r in range(1980, (datetime.now().year + 1)):
    YEAR_CHOICES.append((r,r ))

YEAR_CHOICES2 = []
for r in range(2018, (datetime.now().year + 1)):
    YEAR_CHOICES2.append((r,r ))

Day_choices = []
for r in range(1,32):
    Day_choices.append((r,r))

Month_choices = [('jan','jan'),('feb','feb'),('mar','mar'),('apr','apr'),('may','may'),('jun','jun'),
                 ('july','july'),('aug','aug'),
('sep','sep'),('oct','oct'),('nov','nov'),('dec','dec'),]
class SignUpForm(UserCreationForm):
    Program = forms.ChoiceField(choices=(('Gradudate','Graduate'),('Undergraduate','Undergraduate')),required=True,widget=forms.Select(attrs={'class': 'form-control'}))
    First_name = forms.CharField(max_length=50,required=True )
    Last_name = forms.CharField(max_length=50,required=True)
    class Meta:
        model = User
        fields = ('username','First_name','Last_name', 'password1', 'password2', 'email','Program'  )
class admin_signup_form(UserCreationForm):
    class Meta:
        model = User
        fields = ('username','password1','password2','is_staff')

class loginform(forms.ModelForm):
    username = forms.CharField(max_length=150,required=True,help_text='email',widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(max_length=128,required=True,help_text='password',widget=forms.PasswordInput(attrs={'class': 'form-control'}))

    class Meta:
        model = User
        fields = ('username','password')



class personalform(forms.Form):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['Fullname'].initial
        self.fields['Father_name'].initial
        self.fields['Date'].initial
        self.fields['Year'].initial
        self.fields['Month'].initial
        self.fields['Gender'].initial
        self.fields['Citizen'].initial
        self.fields['Domicile'].initial
        self.fields['CNIC'].initial
        self.fields['CNICI'].initial
        self.fields['CNICII'].initial
        self.fields['Mobilecode'].initial
        self.fields['Mobile'].initial

    Fullname = forms.CharField(max_length=50,required=True,widget=forms.TextInput(attrs={'class': 'form-control','size':'30'}))
    Father_name = forms.CharField(max_length=50,required=True,widget=forms.TextInput(attrs={'class': 'form-control','size':'30'}))
    Date = forms.ChoiceField(required=True,choices=Day_choices,widget=forms.Select(attrs={'class': 'form-control'}))
    Year = forms.ChoiceField(required=True,choices=YEAR_CHOICES,widget=forms.Select(attrs={'class': 'form-control'}) )
    Month = forms.ChoiceField(required=True,choices=Month_choices,widget=forms.Select(attrs={'class': 'form-control'}) )
    Gender = forms.ChoiceField(choices=(('Male','Male'),('Female','Female'),),initial='Male', required=True,widget=forms.Select(attrs={'class': 'form-control'}))
    Citizen  = forms.ChoiceField(choices=Countries,required=True,widget=forms.Select(attrs={'class': 'form-control'}))
    Domicile = forms.ChoiceField(choices=(('PUNJAB','PUNJAB'),('SINDH','SINDH'),('BALOCHISTAN','BALOCHISTAB'),
                                  ('KPK','KPK'),('GILGIT BALTISTAN','GILGIT BALTISTAN'),('FATA','FATA')
                                  ,('AJK','AJK'),('FEDRAL','FEDRAL'),),required=True,widget=forms.Select(attrs={'class': 'form-control'}))
    CNIC = forms.RegexField( max_length=5,regex = r'^\+?[1-9]\d{1,14}$',
        error_messages = {'required': 'CNIC number required'},
        widget = forms.TextInput(attrs={'class': 'form-control','size':'5'}),required=True)
    CNICI = forms.RegexField(max_length=7, regex = r'^\+?[1-9]\d{1,14}$',
        widget = forms.TextInput(attrs={'class': 'form-control','size':'7'}),required=True)
    CNICII = forms.RegexField( max_length=1,regex = r'^\+?[1-9]\d{1,14}$',
        widget = forms.TextInput(attrs={'class': 'form-control','size':'1'}),required=True)
    Mobilecode = forms.ChoiceField(choices=(('300','300'),('301','301'),('302','302'),('303','303'),('304','304'),('305','305'),
                                            ('306', '306'),('307','307'),('308','308'),('309','309'),('340','340'),('341','341'),
                                            ('342','342'),('343','343'),('344','344'),('345','345'),
                                            ('346', '346'),('347','347'),('348','348'),('349','349'),
                                            ('320', '320'), ('321', '321'), ('322', '322'), ('323', '323'),
                                            ('324', '324'),('330','330'),('331','331'),('332','332'),('333','333'),('334','334')
                                            ,('335','335'),('336', '336'),('310','310'),('311','311'),('312','312'),
                                            ('313','313'),('314','314'),('315','315'),
                                            ('316', '316'),('317','317')
                                            ),
        error_messages = {'required': 'Phone number required'},required=True,widget=forms.Select(attrs={'class': 'form-control'}))
    Mobile = forms.RegexField(max_length=7,regex = r'^\+?[1-9]\d{1,14}$',
        error_messages = {'required': 'Phone number required'},
        widget = forms.TextInput(attrs={'class': 'form-control'}),required=True)





class address_detail_form(forms.Form):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['Address'].initial
        self.fields['Address2'].initial
        self.fields['Address3'].initial
        self.fields['City'].initial
        self.fields['City2'].initial
        self.fields['City3'].initial
        self.fields['Phone'].initial
        self.fields['Phone2'].initial
        self.fields['Phone3'].initial
        self.fields['Father_mobile'].initial

    Address = forms.CharField(max_length=100, required=True,widget=forms.TextInput(attrs={'class': 'form-control'}))
    City = forms.CharField(max_length=50, required=True,widget=forms.TextInput(attrs={'class': 'form-control'}))
    Phone = forms.RegexField(max_length=11,regex = r'^\+?[1-9]\d{1,14}$',
        error_messages = {'required': 'Phone number required'},
        widget = forms.TextInput(attrs={'class': 'form-control'}),required=True)

    Address2 = forms.CharField(max_length=100,initial=" ",widget=forms.TextInput(attrs={'class': 'form-control'}))
    City2 = forms.CharField(max_length=50,initial=" ",widget=forms.TextInput(attrs={'class': 'form-control'}))
    Phone2 = forms.RegexField(max_length=11, regex=r'^\+?[1-9]\d{1,14}$',
                             error_messages={'required': 'Phone number required'},
                             widget=forms.TextInput(attrs={'class': 'form-control'}),initial=" ")

    Address3 = forms.CharField(max_length=100,initial=" ",widget=forms.TextInput(attrs={'class': 'form-control'}))
    City3 = forms.CharField(max_length=50,initial=" ",widget=forms.TextInput(attrs={'class': 'form-control'}))
    Phone3 = forms.RegexField(max_length=11, regex=r'^\+?[1-9]\d{1,14}$',
                             error_messages={'required': 'Phone number required'},
                             widget=forms.TextInput(attrs={'class': 'form-control'}),initial=" ")
    Father_mobile = forms.RegexField(max_length=11, regex=r'^\+?[1-9]\d{1,14}$',
                             error_messages={'required': 'Phone number required'},
                             widget=forms.TextInput(attrs={'class': 'form-control'}),
                                     required=True,help_text=" enter your father / guardian mobile number here")
class B_form(forms.Form):
    Degree3 = forms.ChoiceField(choices=(('BS', 'BS'), ('BSC', 'BSC'),
                                         ('BA', 'BA'), ('Associate degree', 'Associate degree'),
                                         ('Bcom', 'Bcom')), required=True,widget=forms.TextInput(attrs={'class': 'form-control'}))
    Year_of_passing3 = forms.DateField(required=True,widget=forms.TextInput(attrs={'class': 'form-control'}))
    Board3 = forms.CharField(max_length=100, required=True,widget=forms.TextInput(attrs={'class': 'form-control'}))
    Subject3 = forms.CharField(max_length=50, required=True,widget=forms.TextInput(attrs={'class': 'form-control'}))
    Total_marks3 = forms.FloatField(required=True,
                             widget=forms.TextInput(attrs={'class': 'form-control','style':"width:90px"}))
    Obtained_marks3 = forms.FloatField(required=True,
                             widget=forms.TextInput(attrs={'class': 'form-control','style':"width:90px"}))

class M_form(forms.Form):
    Msdeg = forms.CharField(required=True, max_length=100,widget=forms.TextInput(attrs={'class': 'form-control'}))
    Year_of_passing4 = forms.DateField(required=True,widget=forms.TextInput(attrs={'class': 'form-control'}))
    Board4 = forms.CharField(max_length=100, required=True,widget=forms.TextInput(attrs={'class': 'form-control'}))
    Subject4 = forms.CharField(max_length=50, required=True,widget=forms.TextInput(attrs={'class': 'form-control'}))
    Total_marks4 = forms.FloatField(required=True,
                             widget=forms.TextInput(attrs={'class': 'form-control','style':"width:90px"}))
    Obtained_marks4 = forms.FloatField(required=True,
                             widget=forms.TextInput(attrs={'class': 'form-control','style':"width:90px"}))

class Fsc_form(forms.Form):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['Degree2'].initial
        self.fields['Year_of_passing2'].initial
        self.fields['Board2'].initial
        self.fields['Subject2'].initial
        self.fields['Total_marks2'].initial
        self.fields['Obtained_marks2'].initial
    Degree2 = forms.ChoiceField(choices=(('fSC', 'FSC'), ('A-levels', 'A-levels'), ('ICS', 'ICS'),
                                         ('I-COM', 'I_COM'), ('DAE', 'DAE'), ('DCOM', 'DCOM'),
                                         ('Others', 'Others')),widget=forms.Select(attrs={'class': 'form-control'}), required=True)
    Year_of_passing2 = forms.ChoiceField(required=True,choices=YEAR_CHOICES,widget=forms.Select(attrs={'class': 'form-control'}))
    Board2 = forms.ChoiceField(choices=(('FBISE', 'FBISE'),('BISE Faisalabad', 'BISE Faisalabad'),
('BISE Bahawalpur', 'BISE Bahawalpur'),('BISE Gujranwala', 'BISE Gujranwala'),('BISE Lahore', 'BISE Lahore'),
('BISE Multan', 'BISE Multan'),
('BISE Rawalpindi', 'BISE Rawalpindi'),
('BISE Sahiwal', 'BISE Sahiwal'),
('BISE Sargodha', 'BISE Sargodha'),
('BISE Dera Ghazi Khan', 'BISE Dera Ghazi Khan'),
('BISE Karachi', 'BISE Karachi'),
('BISE Sukkur', 'BISE Sukkur'),
('BISE Hyderabad', 'BISE Hyderabad'),
('BISE Larkana', 'BISE Larkana'),
('BISE Mirpur Khas', 'BISE Mirpur Khas'),
('BISE Abbottabad', 'BISE Abbottabad'),
('BISE Bannu', 'BISE Bannu'),
('BISE Malakand', 'BISE Malakand'),
('BISE Peshawar', 'BISE Peshawar'),
('BISE Kohat', 'BISE Kohat'),
('BISE Mardan', 'BISE Mardan'),
('BISE Swat',  'BISE Swat'),
('BISE Dera Ismail Khan',  'BISE Dera Ismail Khan'),
('BISE Quetta',  'BISE Quetta'),
('BISE Turbat', 'BISE Turbat'),
('BISE Loralai', 'BISE Loralai'),
('BISE Khuzdar', 'BISE Khuzdar'),
('BISE Dera Murad Jamali', 'BISE Dera Murad Jamali'),
('BISE Mirpur', 'BISE Mirpur'),
('PBT Lahore', 'PBTE Lahore'),
('KPBTE Peshawar', 'KPBTE Peshawar' ),
('SBTE Karachi', 'SBTE Karachi'),
('Aga Khan Board', 'Aga Khan Board'),
('Ziauddin Board', 'Ziauddin Board')), required=True,widget=forms.Select(attrs={'class': 'form-control'}))
    Subject2 = forms.CharField(max_length=50, required=True,widget=forms.TextInput(attrs={'class': 'form-control'}))
    Total_marks2 = forms.RegexField(max_length=4, regex=r'^\+?[1-9]\d{1,14}$',
                             error_messages={'required': 'Marks are required'},
                             widget=forms.TextInput(attrs={'class': 'form-control','style':"width:90px"}),initial=" ")
    Obtained_marks2 = forms.RegexField(max_length=4, regex=r'^\+?[1-9]\d{1,14}$',
                             error_messages={'required': 'Marks are required'},
                             widget=forms.TextInput(attrs={'class': 'form-control','style':"width:90px"}),initial=" ")

class Matic_form(forms.Form):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['Degree'].initial
        self.fields['Year_of_passing'].initial
        self.fields['Board'].initial
        self.fields['Subject'].initial
        self.fields['Total_marks'].initial
        self.fields['Obtained_marks'].initial
    Degree = forms.ChoiceField(choices=(('Matric','Matric'),('O-levels','O-levels')
                                        ),widget=forms.Select(attrs={'class': 'form-control'}),required=True)
    Year_of_passing = forms.ChoiceField(required=True,choices=YEAR_CHOICES,widget=forms.Select(attrs={'class': 'form-control'}))
    Board = forms.ChoiceField(choices=(('FBISE', 'FBISE'),('BISE Faisalabad', 'BISE Faisalabad'),
('BISE Bahawalpur', 'BISE Bahawalpur'),('BISE Gujranwala', 'BISE Gujranwala'),('BISE Lahore', 'BISE Lahore'),
('BISE Multan', 'BISE Multan'),
('BISE Rawalpindi', 'BISE Rawalpindi'),
('BISE Sahiwal', 'BISE Sahiwal'),
('BISE Sargodha', 'BISE Sargodha'),
('BISE Dera Ghazi Khan', 'BISE Dera Ghazi Khan'),
('BISE Karachi', 'BISE Karachi'),
('BISE Sukkur', 'BISE Sukkur'),
('BISE Hyderabad', 'BISE Hyderabad'),
('BISE Larkana', 'BISE Larkana'),
('BISE Mirpur Khas', 'BISE Mirpur Khas'),
('BISE Abbottabad', 'BISE Abbottabad'),
('BISE Bannu', 'BISE Bannu'),
('BISE Malakand', 'BISE Malakand'),
('BISE Peshawar', 'BISE Peshawar'),
('BISE Kohat', 'BISE Kohat'),
('BISE Mardan', 'BISE Mardan'),
('BISE Swat',  'BISE Swat'),
('BISE Dera Ismail Khan',  'BISE Dera Ismail Khan'),
('BISE Quetta',  'BISE Quetta'),
('BISE Turbat', 'BISE Turbat'),
('BISE Loralai', 'BISE Loralai'),
('BISE Khuzdar', 'BISE Khuzdar'),
('BISE Dera Murad Jamali', 'BISE Dera Murad Jamali'),
('BISE Mirpur', 'BISE Mirpur'),
('PBT Lahore', 'PBTE Lahore'),
('KPBTE Peshawar', 'KPBTE Peshawar' ),
('SBTE Karachi', 'SBTE Karachi'),
('Aga Khan Board', 'Aga Khan Board'),
('Ziauddin Board', 'Ziauddin Board')),required=True,widget=forms.Select(attrs={'class': 'form-control'}))
    Subject = forms.CharField(max_length=50,required=True,widget=forms.TextInput(attrs={'class': 'form-control'}))
    Total_marks = forms.RegexField(max_length=4, regex=r'^\+?[1-9]\d{1,14}$',
                             error_messages={'required': 'Marks are required'},
                             widget=forms.TextInput(attrs={'class': 'form-control','style':"width:90px"}),initial=" ")
    Obtained_marks = forms.RegexField(max_length=4, regex=r'^\+?[1-9]\d{1,14}$',
                             error_messages={'required': 'Marks are required'},
                             widget=forms.TextInput(attrs={'class': 'form-control','style':"width:90px"}),initial=" ")
    Transport = forms.BooleanField(required=True)

class Nts_form(forms.Form):
    roll_num = forms.RegexField(max_length=13, regex=r'^\+?[1-9]\d{1,14}$',
                             error_messages={'required': 'Roll number required'},
                             widget=forms.TextInput(attrs={'class': 'form-control'}),initial=" ")
    test_type = forms.ChoiceField(choices=(('NTS','NTS'),('GAT','GAT')))
    obtain_percentage = forms.RegexField(max_length=3, regex=r'^\+?[1-9]\d{1,14}$',
                             widget=forms.TextInput(attrs={'class': 'form-control'}),initial=" ")
    Date = forms.ChoiceField(required=True,choices=Day_choices)
    Year = forms.ChoiceField(required=True,choices=YEAR_CHOICES )
    Month = forms.ChoiceField(required=True,choices=Month_choices )


class program_choice_form(forms.Form):
    Program_choice_1 = forms.ChoiceField(choices=(
        ('MSc Microbiology','MSc Microbiology'),
         ('MBA','MBA'),
          ('MCom','MCom'),
           ('MS Logistic and Supply Chain Management','MS Logistic and Supply Chain Management'),
            ('Masters in Development Studies','Masters in Development Studies'),
             ('Master of Business Administration','Master of Business Administration'),
              ('MS Management Science','MS Management Science'),
               ('MS Engineering Management','MS Engineering Management'),
                ('MS Supply Chain Management','MS Supply Chain Management'),
                 ('MS Project Management','MS Project Management'),
                  ('MS Aviation Management','MS Aviation Management'),
                   ('MS Computer Science','MS Computer Science'),
                    ('MS Software Engineering','MS Software Engineering'),
                     ('MS Telecommunication & Networks','MS Telecommunication & Networks'),
                      ('MS Electrical Engineering','MS Electrical Engineering'),
                       ('MS Microbiology','MS Microbiology')
),required=True)
    Program_choice_2 = forms.ChoiceField(choices=(
        ('MSc Microbiology','MSc Microbiology'),
         ('MBA','MBA'),
          ('MCom','MCom'),
           ('MS Logistic and Supply Chain Management','MS Logistic and Supply Chain Management'),
            ('Masters in Development Studies','Masters in Development Studies'),
             ('Master of Business Administration','Master of Business Administration'),
              ('MS Management Science','MS Management Science'),
               ('MS Engineering Management','MS Engineering Management'),
                ('MS Supply Chain Management','MS Supply Chain Management'),
                 ('MS Project Management','MS Project Management'),
                  ('MS Aviation Management','MS Aviation Management'),
                   ('MS Computer Science','MS Computer Science'),
                    ('MS Software Engineering','MS Software Engineering'),
                     ('MS Telecommunication & Networks','MS Telecommunication & Networks'),
                      ('MS Electrical Engineering','MS Electrical Engineering'),
                       ('MS Microbiology','MS Microbiology')
),required=True)
    Program_choice_3 = forms.ChoiceField(choices=(
        ('MSc Microbiology','MSc Microbiology'),
         ('MBA','MBA'),
          ('MCom','MCom'),
           ('MS Logistic and Supply Chain Management','MS Logistic and Supply Chain Management'),
            ('Masters in Development Studies','Masters in Development Studies'),
             ('Master of Business Administration','Master of Business Administration'),
              ('MS Management Science','MS Management Science'),
               ('MS Engineering Management','MS Engineering Management'),
                ('MS Supply Chain Management','MS Supply Chain Management'),
                 ('MS Project Management','MS Project Management'),
                  ('MS Aviation Management','MS Aviation Management'),
                   ('MS Computer Science','MS Computer Science'),
                    ('MS Software Engineering','MS Software Engineering'),
                     ('MS Telecommunication & Networks','MS Telecommunication & Networks'),
                      ('MS Electrical Engineering','MS Electrical Engineering'),
                       ('MS Microbiology','MS Microbiology')),required=True)
    Program_choice_11 = forms.ChoiceField(choices=(
        ('Doctor of Pharmacy Pharm D','Doctor of Pharmacy Pharm D'),
        ('BS Psychology','BS Psychology'),
        ('BS Medical Lab Technology','BS Medical Lab Technology'),
        ('B.Tech Electrical','B.Tech Electrical'),
        ('B.Tech Mechanical','B.Tech Mechanical'),
        ('B.Tech Civil','B.Tech Civil'),
        ('BS Computer Science','BS Computer Science'),
        ('BS Software Engineering','BS Software Engineering'),
        ('BS Telecommunication & Networks','BS Telecommunication & Networks'),
        ('BS Electronics','BS Electronics'),
        ('BS Electrical Engineering','BS Electrical Engineering'),
        ('Bachelors of Business Administration','Bachelors of Business Administration'),
        ('BS Microbiology','BS Microbiology'),
        ('BS Biotechnology','BS Biotechnology'),
        ('BE Electrical Engineering','BE Electrical Engineering'),
        ('BE Civil Engineering','BE Civil Engineering'),
        ('BE Computer Science','BE Computer Science'),
        ('BE Software Engineering','BE Software Engineering'),
        ('BE Telecom & Networks','BE Telecom & Networks'),
        ('BE Electronics','BE Electronics'),
        ('BE Mibcrobiology','BE Mibcrobiology'),
        ('BE Biotechnology','BE Biotechnology'),
        ('BE Business Administration','BE Business Administration'),
        ('BS Accounting & Finance','BS Accounting & Finance'),
        ('BCom','BCom'),
        ('Bachelor in Development Studies','Bachelor in Development Studies'),
        ('Doctor of Physical Therapy DPT','Doctor of Physical Therapy DPT'),
        ('BS English','BS English')
        ),required=True)
    Program_choice_21 = forms.ChoiceField(choices=(
        ('Doctor of Pharmacy Pharm D', 'Doctor of Pharmacy Pharm D'),
        ('BS Psychology', 'BS Psychology'),
        ('BS Medical Lab Technology', 'BS Medical Lab Technology'),
        ('B.Tech Electrical', 'B.Tech Electrical'),
        ('B.Tech Mechanical', 'B.Tech Mechanical'),
        ('B.Tech Civil', 'B.Tech Civil'),
        ('BS Computer Science', 'BS Computer Science'),
        ('BS Software Engineering', 'BS Software Engineering'),
        ('BS Telecommunication & Networks', 'BS Telecommunication & Networks'),
        ('BS Electronics', 'BS Electronics'),
        ('BS Electrical Engineering', 'BS Electrical Engineering'),
        ('Bachelors of Business Administration', 'Bachelors of Business Administration'),
        ('BS Microbiology', 'BS Microbiology'),
        ('BS Biotechnology', 'BS Biotechnology'),
        ('BE Electrical Engineering', 'BE Electrical Engineering'),
        ('BE Civil Engineering', 'BE Civil Engineering'),
        ('BE Computer Science', 'BE Computer Science'),
        ('BE Software Engineering', 'BE Software Engineering'),
        ('BE Telecom & Networks', 'BE Telecom & Networks'),
        ('BE Electronics', 'BE Electronics'),
        ('BE Mibcrobiology', 'BE Mibcrobiology'),
        ('BE Biotechnology', 'BE Biotechnology'),
        ('BE Business Administration', 'BE Business Administration'),
        ('BS Accounting & Finance', 'BS Accounting & Finance'),
        ('BCom', 'BCom'),
        ('Bachelor in Development Studies', 'Bachelor in Development Studies'),
        ('Doctor of Physical Therapy DPT', 'Doctor of Physical Therapy DPT'),
        ('BS English', 'BS English')
    ), required=True)
    Program_choice_31 = forms.ChoiceField(choices=(
        ('Doctor of Pharmacy Pharm D', 'Doctor of Pharmacy Pharm D'),
        ('BS Psychology', 'BS Psychology'),
        ('BS Medical Lab Technology', 'BS Medical Lab Technology'),
        ('B.Tech Electrical', 'B.Tech Electrical'),
        ('B.Tech Mechanical', 'B.Tech Mechanical'),
        ('B.Tech Civil', 'B.Tech Civil'),
        ('BS Computer Science', 'BS Computer Science'),
        ('BS Software Engineering', 'BS Software Engineering'),
        ('BS Telecommunication & Networks', 'BS Telecommunication & Networks'),
        ('BS Electronics', 'BS Electronics'),
        ('BS Electrical Engineering', 'BS Electrical Engineering'),
        ('Bachelors of Business Administration', 'Bachelors of Business Administration'),
        ('BS Microbiology', 'BS Microbiology'),
        ('BS Biotechnology', 'BS Biotechnology'),
        ('BE Electrical Engineering', 'BE Electrical Engineering'),
        ('BE Civil Engineering', 'BE Civil Engineering'),
        ('BE Computer Science', 'BE Computer Science'),
        ('BE Software Engineering', 'BE Software Engineering'),
        ('BE Telecom & Networks', 'BE Telecom & Networks'),
        ('BE Electronics', 'BE Electronics'),
        ('BE Mibcrobiology', 'BE Mibcrobiology'),
        ('BE Biotechnology', 'BE Biotechnology'),
        ('BE Business Administration', 'BE Business Administration'),
        ('BS Accounting & Finance', 'BS Accounting & Finance'),
        ('BCom', 'BCom'),
        ('Bachelor in Development Studies', 'Bachelor in Development Studies'),
        ('Doctor of Physical Therapy DPT', 'Doctor of Physical Therapy DPT'),
        ('BS English', 'BS English')
    ), required=True)

class downloadform(forms.Form):
    date = forms.DateField(widget=forms.widgets.DateInput(attrs={'type': 'date'}))
    date2 = forms.DateField(widget=forms.widgets.DateInput(attrs={'type': 'date'}))

class admissionsform(forms.Form):
    Session = forms.ChoiceField(choices=(('Spring','Spring'),('Fall','Fall')),required=True)
    Year = forms.ChoiceField(choices=YEAR_CHOICES2,required=True)
    Open_date = forms.DateField(widget=forms.widgets.DateInput(attrs={'type': 'date'}))
    Close_date = forms.DateField(widget=forms.widgets.DateInput(attrs={'type': 'date'}))

class admitform(forms.Form):
    date = forms.DateField(widget=forms.widgets.DateInput(attrs={'type': 'date'}))
    time_start = forms.TimeField(widget=forms.widgets.TimeInput(attrs={'type': 'time'}))
    time_end = forms.TimeField(widget=forms.widgets.TimeInput(attrs={'type': 'time'}))


class chaform(forms.Form):
    file = forms.FileField(required=True,widget=forms.ClearableFileInput(attrs={'multiple': True}))


