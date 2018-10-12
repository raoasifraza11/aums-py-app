from .models import Acdamic_Calander,Online_Admission,Timetable,Message,TimetableGraduate,Download,Permission,Acdamic_Calander_Graduate,DateSheet,Banner

def Calander(request):
    return {'calander': Acdamic_Calander.objects.first()}

def Admission(request):
    return {'admission': Online_Admission.objects.first()}

def Timetables(request):
    return {'timetable': Timetable.objects.first()}

def TimetableGraduates(request):
    return {'timetablegraduates': TimetableGraduate.objects.first()}

def Messages(request):
    return {'message': Message.objects.first()}

def Dowmload_by_Application(request):
    return {'download': Download.objects.all()}

def Dowmload_Accreditation (request):
    return {'accreditation': Permission.objects.all()[:4]}

def Calander_Graduate (request):
    return {'Calander_Graduate': Acdamic_Calander_Graduate.objects.first()}

def DateSheets (request):
    return {'datesheet': DateSheet.objects.all()}

def Banners (request):
    return {'bannser': Banner.objects.first()}