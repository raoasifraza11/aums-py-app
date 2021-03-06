from django.conf.urls import url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic.base import TemplateView
from . import views
from django.urls import path

app_name ='slider'
urlpatterns = [
    url(r'^$', views.IndexView.as_view(), name='index'), 
    url(r'^management/sciences/list/$', TemplateView.as_view(template_name='department-business/management-sciences.html'), name='management-sciences'),
    url(r'^life/sciences/list/$', TemplateView.as_view(template_name='life-sciences-list.html'), name='life-sciences'),
    url(r'^btech/list/$', TemplateView.as_view(template_name='btech-list.html'), name='btech-list'),
    url(r'^scholarships/$', TemplateView.as_view(template_name='scholarships.html'), name='scholarships'),
    url(r'^financial/aid/$', TemplateView.as_view(template_name='financial-aid.html'), name='financial-aid'),
	path('recommended/', views.recommended , name = 'recommended'),
    path('result/', views.result , name = 'result'),
    

    # About Us  
    url(r'^message/$', TemplateView.as_view(template_name='about-us/vc-message.html'), name='vc-message'),
    url(r'^history/$', TemplateView.as_view(template_name='about-us/history.html'), name='historys'),
    url(r'^vision/$', TemplateView.as_view(template_name='about-us/Vision.html'), name='vision'),
    url(r'^objective/$', TemplateView.as_view(template_name='about-us/objectives.html'), name='objective'),
    # Admission & Aids
    url(r'^feestructure/$', views.FeesView.as_view(), name='feestructure'),
    url(r'^admission/$', TemplateView.as_view(template_name='admission&aids/admission_overview.html'), name='admission'),
    # Research
    url(r'^publications/$', TemplateView.as_view(template_name='research/publications.html'), name='publications'),
    url(r'^journal/$', TemplateView.as_view(template_name='research/journal.html'), name='journal'),
    # Rules & Policy
    url(r'^graduate/$', TemplateView.as_view(template_name='master-degree-list.html'), name='master-degree-list'),
    url(r'^rules&policy/$', TemplateView.as_view(template_name='rules_policy.html'), name='rules-policy'),
    # Department of English
    url(r'^hod/english/$', TemplateView.as_view(template_name='department-english/hod_english.html'), name='hod-english'),
    url(r'^english/info/$', TemplateView.as_view(template_name='department-business/english/english_info.html'), name='english_info'),
    url(r'^staff/english/$', views.StaffView.as_view(template_name='department-english/english_staff.html'), name='staff-english'),
    url(r'^english/course/$', TemplateView.as_view(template_name='department-business/english/english_courses.html'), name='english_courses'),
    url(r'^english/stucture/$', TemplateView.as_view(template_name='department-english/english_structure.html'), name='english_structure'),
    url(r'^english/accredition/$', TemplateView.as_view(template_name='department-english/accredition-english.html'), name='accredition-english'),

    # Department of Psychology
    url(r'^hod/psychology/$', TemplateView.as_view(template_name='department-psychology/hod_psychology.html'), name='hod-psychology'),
    url(r'^psychology/info/$', TemplateView.as_view(template_name='department-business/psychology/psychology_info.html'), name='psychology_info'),
    url(r'^staff/psychology/$', views.StaffView.as_view(template_name='department-psychology/psychology_staff.html'), name='staff-psychology'),
    url(r'^psychology/course/$', TemplateView.as_view(template_name='department-business/psychology/psychology_courses.html'), name='psychology_courses'),
    url(r'^psychology/stucture/$', TemplateView.as_view(template_name='department-psychology/psychology_structure.html'), name='psychology_structure'),
    url(r'^psychology/accredition/$', TemplateView.as_view(template_name='department-psychology/accredition-psychology.html'), name='accredition-psychology'),

    # Department of Computing
    url(r'^hod/computing/$', TemplateView.as_view(template_name='department-computing/hod_computing.html'), name='hod-computing'),
    url(r'^computing/info/$', TemplateView.as_view(template_name='department-computing/computing_info.html'), name='computing-info'),
    url(r'^staff/computing/$', views.StaffView.as_view(template_name='Staff.html'), name='Staff'),
    url(r'^computing/cs/foreword$', TemplateView.as_view(template_name='department-computing/cs/foreword.html'),
        name='cs_foreword'),
    url(r'^computing/course_CS/$', TemplateView.as_view(template_name='department-computing/CS/computing_courses.html'), name='computing-course'),
    url(r'^computing/cs/electives$', TemplateView.as_view(template_name='department-computing/cs/elective.html'),
        name='cs_electives'),
    url(r'^computing/stucture/$', TemplateView.as_view(template_name='department-computing/computing_structure.html'), name='computing-structure'),
    url(r'^obe/computing/$', views.OBEView.as_view(template_name='department-computing/obe.html'), name='obe-computing'),
    url(r'^computing/se/foreword$', TemplateView.as_view(template_name='department-computing/se/foreword.html'),
        name='se_foreword'),
     url(r'^computing/course_SE/$', TemplateView.as_view(template_name='department-computing/SE/software_courses.html'), name='se_courses'),
    url(r'^computing/se/electives$', TemplateView.as_view(template_name='department-computing/se/elective.html'),
        name='se_electives'),
    # Department of Civil
    url(r'^hod/civil/$', TemplateView.as_view(template_name='department-civil/hod_civil.html'), name='hod-civil'),
    url(r'^civil/info/$', TemplateView.as_view(template_name='department-civil/civil_info.html'), name='civil-info'),
    url(r'^civil/stucture/$', TemplateView.as_view(template_name='department-civil/civil_structure.html'), name='civil-stucture'),
    url(r'^civil/course/$', TemplateView.as_view(template_name='department-civil/civil_courses.html'), name='civil-course'),
    url(r'^staff/civil/$', views.StaffView.as_view(template_name='civil_staff.html'), name='staff-civil'),
    url(r'^obe/civil/$', views.OBEView.as_view(template_name='department-civil/obe.html'), name='obe'),
    url(r'^civil/accredition/$', TemplateView.as_view(template_name='department-civil/accredition-civil.html'), name='accredition-civil'),
    url(r'^civil/foreword/$', TemplateView.as_view(template_name='department-civil/CE/CE_foreword.html'), name='CE_foreword'),
    url(r'^civil/CE/courses$', TemplateView.as_view(template_name='department-civil/CE/CE_courses.html'), name='CE_courses'),


    # Department of Btech Civil
    url(r'^hod/civil/btech/$', TemplateView.as_view(template_name='department-btech-civil/hod-btech-civil.html'), name='hod-btech-civil'),
    url(r'^civil/info/btech/$', TemplateView.as_view(template_name='department-btech-civil/btech-civil-info.html'), name='btech-civil-info'),
    url(r'^civil/stucture/btech/$', TemplateView.as_view(template_name='department-btech-civil/btech-civil-structure.html'), name='btech-civil-stucture'),
    url(r'^civil/course/btech/$', TemplateView.as_view(template_name='department-btech-civil/btech-civil-courses.html'), name='btech-civil-course'),
    url(r'^staff/civil/btech/$', views.StaffView.as_view(template_name='civil_staff.html'), name='staff-civil-btech'),
   # url(r'^civil/accredition/btech/$', TemplateView.as_view(template_name='department-btech-civil/accredition-civil.html'), name='accredition-civil'),

     # Department of Btech Electrical
    url(r'^hod/electrical/btech/$', TemplateView.as_view(template_name='department-btech-electrical/hod-btech-electrical.html'), name='hod-btech-electrical'),
    url(r'^electrical/info/btech/$', TemplateView.as_view(template_name='department-btech-electrical/btech-electrical-info.html'), name='btech-electrical-info'),
    url(r'^electrical/stucture/btech/$', TemplateView.as_view(template_name='department-btech-electrical/btech-electrical-structure.html'), name='btech-electrical-stucture'),
    url(r'^electrical/course/btech/$', TemplateView.as_view(template_name='department-btech-electrical/btech-electrical-courses.html'), name='btech-electrical-course'),
   # url(r'^staff/electrical/btech/$', views.StaffView.as_view(template_name='electrical_staff.html'), name='staff-electrical'),

    # Department of Btech Mechanical
    url(r'^hod/mechanical/btech/$', TemplateView.as_view(template_name='department-btech-mechanical/hod-btech-mechanical.html'), name='hod-btech-mechanical'),
    url(r'^mechanical/info/btech/$', TemplateView.as_view(template_name='department-btech-mechanical/btech-mechanical-info.html'), name='btech-mechanical-info'),
    url(r'^mechanical/stucture/btech/$', TemplateView.as_view(template_name='department-btech-mechanical/btech-mechanical-structure.html'), name='btech-mechanical-stucture'),
    url(r'^mechanical/course/btech/$', TemplateView.as_view(template_name='department-btech-mechanical/btech-mechanical-courses.html'), name='btech-mechanical-course'),
    #url(r'^staff/mechanical/btech/$', views.StaffView.as_view(template_name='mechanical_staff.html'), name='staff-mechanical'),

    # Department of Electrical
    url(r'^hod/electrical/$', TemplateView.as_view(template_name='department-electrical/hod_electrical.html'), name='hod-electrical'),
    url(r'^electrical/info/$', TemplateView.as_view(template_name='department-electrical/electrical_info.html'), name='electrical_info'),
    url(r'^electrical/stucture/$',TemplateView.as_view(template_name='department-electrical/electrical_structure.html'),
        name='electrical_structure'),
    url(r'^staff/electrical/$', views.StaffView.as_view(template_name='electrical_staff.html'), name='staff-electrical'),
    url(r'^obe/electrical/$', views.OBEView.as_view(template_name='department-electrical/obe.html'), name='obe-electrical'),
    url(r'^electrical/clos/$', TemplateView.as_view(template_name='department-electrical/accredition-electrical.html'), name='accredition-electrical'),
    url(r'^electrical/mission/$',TemplateView.as_view(template_name='department-electrical/mission.html'), name='mission'),
    url(r'^electrical/EE_foreword/$', TemplateView.as_view(template_name='department-electrical/EE/EE_foreword.html'),
        name='EE_foreword'),
    url(r'^electrical/EE_courses/$', TemplateView.as_view(template_name='department-electrical/EE/EE_courses.html'),
        name='EE_courses'),
    url(r'^electrical/EE_electives/$', TemplateView.as_view(template_name='department-electrical/EE/elective.html'),
        name='EE_electives'),
    # Department of Pharmacy
    url(r'^hod/pharmacy/$', TemplateView.as_view(template_name='department-pharmacy/hod_pharmacy.html'), name='hod-pharmacy'),
    url(r'^pharmacy/info/$', TemplateView.as_view(template_name='department-pharmacy/pharmacy_info.html'), name='pharmacy_info'),
    url(r'^pharmacy/stucture/$', TemplateView.as_view(template_name='department-pharmacy/pharmacy_structure.html'), name='pharmacy_structure'),
    url(r'^pharmacy/courses/$', TemplateView.as_view(template_name='department-pharmacy/pharmacy_courses.html'), name='pharmacy_courses'),
    url(r'^staff/pharmacy/$', views.StaffView.as_view(template_name='department-pharmacy/pharmacy_staff.html'), name='staff-pharmacy'),
    url(r'^pharmacy/accredition/$', TemplateView.as_view(template_name='department-pharmacy/accredition-pharmacy.html'), name='accredition-pharmacy'),
    url(r'^pharmacy/foreword/$', TemplateView.as_view(template_name='department-pharmacy/PD/PD_structure.html'),
        name='PD_foreword'),
    url(r'^pharmacy/PD/courses/$', TemplateView.as_view(template_name='department-pharmacy/PD/PD_courses.html'),
        name='PD_courses'),

    # Department of Business
    url(r'^hod/business/$', TemplateView.as_view(template_name='department-business/hod_business.html'), name='hod-business'),
    url(r'^business/info/$', TemplateView.as_view(template_name='department-business/bba/business_info.html'), name='bba_info'),
    url(r'^business/stucture/$', TemplateView.as_view(template_name='department-business/business_structure.html'), name='business_structure'),
     url(r'^business/courses/$', TemplateView.as_view(template_name='department-business/business_courses.html'), name='business_courses'),
    url(r'^staff/business/$', views.StaffView.as_view(template_name='department-business/business_staff.html'), name='staff-business'),
    url(r'^business/accredition/$', TemplateView.as_view(template_name='department-business/accredition-business.html'), name='accredition-business'),

    #bba
    url(r'^bba/courses$', TemplateView.as_view(template_name='department-business/bba/business_courses.html'), name='bba_structure'),

    #BSTHM
    url(r'^BSTHM/info/$', TemplateView.as_view(template_name='department-business/BSTHM/BSTHM_info.html'),
        name='BSTHM_info'),
    url(r'^BSTHM/courses/$', TemplateView.as_view(template_name='department-business/BSTHM/BSTHM_courses.html'),
        name='BSTHM_courses'),
    url(r'^staff/BSTHM/$', views.StaffView.as_view(template_name='department-business/BSTHM/BSTHM_staff.html'),
        name='staff-BSTHM'),
    # Dept of Electronics
    url(r'^de/dept_info/$', TemplateView.as_view(template_name='department-electronics/dept_info.html'),
        name='dept_info'),
    url(r'^de/info/$', TemplateView.as_view(template_name='department-electronics/de_info.html'),
        name='de_info'),
    url(r'^de/foreword/$', TemplateView.as_view(template_name='department-electronics/de/de_info.html'),
        name='de_foreword'),
    url(r'^staff/de/$', views.StaffView.as_view(template_name='department-electronics/de_staff.html'),
        name='staff-de'),
    url(r'^de/courses$', views.StaffView.as_view(template_name='department-electronics/de/de_courses.html'),
        name='de_courses'),

    # Department of Micro
    url(r'^hod/micro/$', TemplateView.as_view(template_name='department-life-scienecs/department-micro/hod_micro.html'), name='hod-micro'),
    url(r'^micro/info/$', TemplateView.as_view(template_name='department-life-scienecs/department-micro/micro_info.html'), name='micro_info'),
    url(r'^micro/courses/$', TemplateView.as_view(template_name='department-life-scienecs/department-micro/micro_courses.html'), name='micro-courses'),
    url(r'^micro/stucture/$', TemplateView.as_view(template_name='department-life-scienecs/department-micro/micro_structure.html'), name='micro_structure'),
    url(r'^staff/micro/$', views.StaffView.as_view(template_name='department-life-scienecs/department-micro/micro_staff.html'), name='staff-micro'),
    url(r'^micro/accredition/$', TemplateView.as_view(template_name='department-life-scienecs/department-micro/accredition-micro.html'), name='accredition-micro'),

    # Department of DPT
    url(r'^hod/DPT/$', TemplateView.as_view(template_name='department-life-scienecs/DPT/hod_DPT.html'), name='hod-DPT'),
    url(r'^DPT/info/$', TemplateView.as_view(template_name='department-life-scienecs/DPT/DPT_info.html'), name='DPT_info'),
    url(r'^DPT/courses/$', TemplateView.as_view(template_name='department-life-scienecs/DPT/DPT_courses.html'), name='DPT-courses'),
    url(r'^DPT/stucture/$', TemplateView.as_view(template_name='department-life-scienecs/DPT/DPT_structure.html'), name='DPT_structure'),
    url(r'^staff/DPT/$', views.StaffView.as_view(template_name='department-life-scienecs/DPT/DPT_staff.html'), name='staff-DPT'),
    url(r'^DPT/accredition/$', TemplateView.as_view(template_name='department-life-scienecs/DPT/accredition-DPT.html'), name='accredition-DPT'),

    # Department of MLT
    url(r'^hod/MLT/$', TemplateView.as_view(template_name='department-life-scienecs/MLT/hod_MLT.html'), name='hod-MLT'),
    url(r'^MLT/info/$', TemplateView.as_view(template_name='department-life-scienecs/MLT/MLT_info.html'),
        name='MLT_info'),
    url(r'^MLT/courses/$', TemplateView.as_view(template_name='department-life-scienecs/MLT/MLT_courses.html'),
        name='MLT-courses'),
    url(r'^staff/MLT/$', views.StaffView.as_view(template_name='department-life-scienecs/MLT/MLT_staff.html'),
        name='staff-MLT'),

    # Department of HND
    url(r'^HND/info/$', TemplateView.as_view(template_name='department-life-scienecs/HND/HND_info.html'),
        name='HND_info'),
    url(r'^staff/HND/$', views.StaffView.as_view(template_name='department-life-scienecs/HND/HND_staff.html'),
        name='staff-HND'),

    # Department of RT
    url(r'^RT/info/$', TemplateView.as_view(template_name='department-life-scienecs/RT/RT_info.html'),
        name='RT_info'),
    url(r'^staff/RT/$', views.StaffView.as_view(template_name='department-life-scienecs/RT/RT_staff.html'),
        name='staff-RT'),

    # Department of PO
    url(r'^PO/info/$', TemplateView.as_view(template_name='department-life-scienecs/PO/PO_info.html'),
        name='PO_info'),
    url(r'^staff/PO/$', views.StaffView.as_view(template_name='department-life-scienecs/PO/PO_staff.html'),
        name='staff-PO'),
    # Department of BSBIO
    url(r'^BSBIO/info/$', TemplateView.as_view(template_name='department-life-scienecs/BSBIO/BSBIO_info.html'),
        name='BSBIO_info'),
    url(r'^staff/BSBIO/$', views.StaffView.as_view(template_name='department-life-scienecs/BSBIO/BSBIO_staff.html'),
        name='staff-BSBIO'),


    # Department of Math and Stats
    url(r'^Math/dept_info/$', TemplateView.as_view(template_name='department-math/dept_info.html'),
        name='deptt_info'),
    url(r'^Math/info/$', TemplateView.as_view(template_name='department-math/math_info.html'),
        name='Math_info'),
    url(r'^staff/Math/$', views.StaffView.as_view(template_name='department-math/math_staff.html'),
        name='Math_staff'),
    url(r'^Math/bsm$', views.StaffView.as_view(template_name='department-math/math/math_info.html'),
        name='math_foreword'),
    url(r'^Math/courses$', views.StaffView.as_view(template_name='department-math/math/math_courses.html'),
        name='math_courses'),
    url(r'^Math/bss$', views.StaffView.as_view(template_name='department-math/stats/stats_info.html'),
        name='stats_foreword'),
    url(r'^Math/s_courses$', views.StaffView.as_view(template_name='department-math/stats/stats_courses.html'),
        name='stats_courses'),



    # Department of MBA
    url(r'^MBA/info/$', TemplateView.as_view(template_name='department-graduate/MBA/MBA-info.html'), name='MBA_info'),
    url(r'^MBA/stucture/$', TemplateView.as_view(template_name='department-graduate/MBA/MBA-structure.html'), name='MBA_structure'),
    url(r'^MBA/courses/$', TemplateView.as_view(template_name='department-graduate/MBA/MBA-courses.html'), name='MBA-courses'),
    # Department of Mgst
    url(r'^Mgst/info/$', TemplateView.as_view(template_name='department-graduate/Mgst/Mgst-info.html'), name='Mgst_info'),
    url(r'^Mgst/stucture/$', TemplateView.as_view(template_name='department-graduate/Mgst/Mgst-structure.html'), name='Mgst_structure'),
    url(r'^Mgst/courses/$', TemplateView.as_view(template_name='department-graduate/Mgst/Mgst-courses.html'), name='Mgst-courses'),
    # Department of MSCMB
    url(r'^MSCMB/info/$', TemplateView.as_view(template_name='department-graduate/MSCMB/MSCMB-info.html'), name='MSCMB_info'),
    url(r'^MSCMB/stucture/$', TemplateView.as_view(template_name='department-graduate/MSCMB/MSCMB-structure.html'), name='MSCMB_structure'),
    url(r'^MSCMB/courses/$', TemplateView.as_view(template_name='department-graduate/MSCMB/MSCMB-courses.html'), name='MSCMB-courses'),
    # Department of MSCMB
    url(r'^MphilMB/info/$', TemplateView.as_view(template_name='department-graduate/MphilMB/MphilMB-info.html'),
        name='MphilMB_info'),
    url(r'^MphilMB/stucture/$', TemplateView.as_view(template_name='department-graduate/MphilMB/MphilMB-structure.html'),
        name='MphilMB_structure'),
    url(r'^MphilMB/courses/$', TemplateView.as_view(template_name='department-graduate/MphilMB/MphilMB-courses.html'),
        name='MphilMB-courses'),
    # Department of MSEE
    url(r'^MSEE/info/$', TemplateView.as_view(template_name='department-graduate/MSEE/MSEE-info.html'), name='MSEE_info'),
    url(r'^MSEE/stucture/$', TemplateView.as_view(template_name='department-graduate/MSEE/MSEE-structure.html'), name='MSEE_structure'),
    url(r'^MSEE/courses/$', TemplateView.as_view(template_name='department-graduate/MSEE/MSEE-courses.html'), name='MSEE-courses'),
    # Department of MSEM
    url(r'^MSEM/info/$', TemplateView.as_view(template_name='department-graduate/MSEM/MSEM-info.html'), name='MSEM_info'),
    url(r'^MSEM/stucture/$', TemplateView.as_view(template_name='department-graduate/MSEM/MSEM-structure.html'), name='MSEM_structure'),
    url(r'^MSEM/courses/$', TemplateView.as_view(template_name='department-graduate/MSEM/MSEM-courses.html'), name='MSEM-courses'),
    # Department of MSLSM
    url(r'^MSLSM/info/$', TemplateView.as_view(template_name='department-graduate/MSLSM/MSLSM-info.html'), name='MSLSM_info'),
    url(r'^MSLSM/stucture/$', TemplateView.as_view(template_name='department-graduate/MSLSM/MSLSM-structure.html'), name='MSLSM_structure'),
    url(r'^MSLSM/courses/$', TemplateView.as_view(template_name='department-graduate/MSLSM/MSLSM-courses.html'), name='MSLSM-courses'),
    # Department of MSSE
    url(r'^MSSE/info/$', TemplateView.as_view(template_name='department-graduate/MSSE/MSSE-info.html'), name='MSSE_info'),
    url(r'^MSSE/stucture/$', TemplateView.as_view(template_name='department-graduate/MSSE/MSSE-structure.html'), name='MSSE_structure'),
    url(r'^MSSE/courses/$', TemplateView.as_view(template_name='department-graduate/MSSE/MSSE-courses.html'), name='MSSE-courses'),
    # Department of MSPM
    url(r'^MSPM/info/$', TemplateView.as_view(template_name='department-graduate/MSPM/MSPM-info.html'), name='MSPM_info'),
    url(r'^MSPM/stucture/$', TemplateView.as_view(template_name='department-graduate/MSPM/MSPM-structure.html'), name='MSPM_structure'),
    url(r'^MSPM/courses/$', TemplateView.as_view(template_name='department-graduate/MSPM/MSPM-courses.html'), name='MSPM-courses'),
    # Department of MSTN
    url(r'^MSTN/info/$', TemplateView.as_view(template_name='department-graduate/MSTN/MSTN-info.html'), name='MSTN_info'),
    url(r'^MSTN/stucture/$', TemplateView.as_view(template_name='department-graduate/MSTN/MSTN-structure.html'), name='MSTN_structure'),
    url(r'^MSTN/courses/$', TemplateView.as_view(template_name='department-graduate/MSTN/MSTN-courses.html'), name='MSTN-courses'),
     # Department of MSCS
    url(r'^MSCS/info/$', TemplateView.as_view(template_name='department-graduate/MSCS/MSCS-info.html'), name='MSCS_info'),
    url(r'^MSCS/stucture/$', TemplateView.as_view(template_name='department-graduate/MSCS/MSCS-structure.html'), name='MSCS_structure'),
    url(r'^MSCS/courses/$', TemplateView.as_view(template_name='department-graduate/MSCS/MSCS-courses.html'), name='MSCS-courses'),
    # Department of MSDS
    url(r'^MSDS/info/$', TemplateView.as_view(template_name='department-graduate/MSDS/MSDS-info.html'),
        name='MSDS_info'),
    url(r'^MSDS/stucture/$', TemplateView.as_view(template_name='department-graduate/MSDS/MSDS-structure.html'),
        name='MSDS_structure'),
    url(r'^MSDS/courses/$', TemplateView.as_view(template_name='department-graduate/MSDS/MSDS-courses.html'),
        name='MSDS-courses'),

]

