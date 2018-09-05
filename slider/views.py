import urllib
from django.shortcuts import render
from django.views import generic
from .models import Slider,Staff,Event,Fees,Acdamic_Calander,New,Timetable
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