import urllib
from django.shortcuts import render
from django.views import generic
from .models import Events,ApplyNow,Orgnizers,Background
from slider.models import Acdamic_Calander,New,Timetable,Online_Admission
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import render

class IndexView(generic.ListView):
    template_name='ANSEC/index.html'
    context_object_name = 'object_list'
    queryset = Events.objects.all()
    def get_context_data(self, **kwargs):
        context = super(IndexView, self).get_context_data(**kwargs)
        context['background'] = Acdamic_Calander.objects.first()
        context['orgnizers'] = Timetable.objects.first()
        context['apply'] = ApplyNow.objects.first()
        context['event'] = Events.objects.all()[:3]
        context['link'] = Acdamic_Calander.objects.first()
        context['time'] = Timetable.objects.first()
        context['admission'] = Online_Admission.objects.first()
        return  context