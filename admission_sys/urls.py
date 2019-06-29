from django.urls import path
from django.conf.urls import url
from . import views as vs
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views

urlpatterns = [

    path('',vs.login_user , name = 'login'),
    path('signup/',vs.signup , name = 'signup'),
    path('application/',vs.application,name = 'application'),
    path('address/',vs.address,name='address'),
    path('education/',vs.education,name='education'),
    path('education/fsc/', vs.fsc, name='fsc'),
    path('education/bsc/', vs.bsc, name='bsc'),
    path('education/bs/', vs.bs, name='bs'),
    path('education/nts', vs.nts, name='nts'),
    path('program/',vs.program,name='program'),
    path('others/',vs.others,name='others'),
    path('logout/', auth_views.logout, {'next_page': 'login'}, name='logout'),
    path('downloads/',vs.downloads,name='downloads'),
    path('form/',vs.form,name='form'),
    path('fee/',vs.fee,name='fee'),
    path('admit_card/',vs.card,name='card'),
    path('admin_signup/',vs.admin_signup,name='admin_signup'),
    path('admin/',vs.admin,name='admin'),
    path('admin/form/<Signup_id>/', vs.detail,name="detail"),
    path('admin/adm_form/<id>',vs.adm_form,name='adm_form'),
    path('admin/admit_card/<idd>',vs.adt_card,name='adt_card'),
    path('admin/SSC/<id>',vs.ssc,name='ssc'),
    path('admin/HSSC/<id>',vs.hssc,name='hssc'),
    path('admin/downlaods',vs.admin_downloads,name='admin_downloads'),
    path('admin/admissions',vs.admissions,name='admissions'),
    path('admin/admissions/programs',vs.programs,name='programs'),
    path('admin/add_programs',vs.add_programs,name='add_programs'),
    path('admin/messages',vs.messages,name='messages'),
    path('admin/admission_opened', vs.admission_opened, name='admission_opened'),
    path('admin/print/<id>/', vs.print, name='print'),
    path('admin/print_all/<id>/', vs.print_all, name='print_all'),
    path('admin/upload', vs.upload, name='upload'),
    path('admin/files', vs.files, name='files'),
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)