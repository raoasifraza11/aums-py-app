# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.contrib.auth.models import User
from django.dispatch import receiver
from django.db.models.signals import post_save


class Abasyntest(models.Model):
    signup_id = models.IntegerField()
    auictest = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'abasyntest'



class Address(models.Model):
    ads_id = models.AutoField(primary_key=True)
    signup = models.ForeignKey('Signup', models.DO_NOTHING)
    address = models.CharField(max_length=255)
    city = models.CharField(max_length=255)
    phone = models.CharField(max_length=255)
    addresstwo = models.CharField(max_length=255)
    citytwo = models.CharField(max_length=30)
    phonetwo = models.CharField(max_length=255)
    addressthree = models.CharField(max_length=255)
    citythree = models.CharField(max_length=30)
    phonethree = models.CharField(max_length=255)
    fathermob = models.CharField(max_length=255)
    activem = models.CharField(max_length=10)
    activef = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'address'



class Adminlogin(models.Model):
    adminid = models.IntegerField(primary_key=True)
    email = models.CharField(max_length=255)
    password = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'adminlogin'






class Admitcard(models.Model):
    date = models.DateField()
    time_start = models.TimeField()
    time_end = models.TimeField()

    class Meta:
        managed = False
        db_table = 'admitcard'



class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'



class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)



class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)



class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'
        app_label = 'admission_sys'



class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)



class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)



class Details(models.Model):
    signup = models.ForeignKey('Signup', models.DO_NOTHING)
    email = models.CharField(max_length=200)
    submit = models.IntegerField()
    fnam = models.CharField(max_length=100)
    snam = models.CharField(max_length=100)
    mcod = models.IntegerField()
    mnum = models.IntegerField()
    date = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'details'



class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'



class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)



class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'



class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'



class EducationBsc(models.Model):
    signup = models.ForeignKey('Signup', models.DO_NOTHING)
    bseged = models.CharField(max_length=255)
    bseyr = models.IntegerField()
    bseuni = models.CharField(max_length=255)
    bsesub = models.CharField(max_length=255)
    bsetocgpa = models.CharField(max_length=255)
    bseobt = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'education_bsc'



class EducationFsc(models.Model):
    fsc_id = models.AutoField(primary_key=True)
    signup = models.ForeignKey('Signup', models.DO_NOTHING)
    waiting = models.CharField(max_length=20)
    fsedeg = models.CharField(max_length=255)
    fseyr = models.IntegerField()
    fsebod = models.CharField(max_length=255)
    fsesub = models.CharField(max_length=255)
    fsetono = models.IntegerField()
    fseobno = models.IntegerField()
    percent = models.IntegerField(null=True)

    class Meta:
        managed = False
        db_table = 'education_fsc'



class EducationMatric(models.Model):
    signup = models.ForeignKey('Signup', models.DO_NOTHING)
    degree = models.CharField(max_length=255)
    yearpass = models.IntegerField()
    board = models.CharField(max_length=255)
    subject = models.TextField()
    totalmark = models.IntegerField()
    obtainmark = models.IntegerField()
    percent = models.IntegerField(null=True)

    class Meta:
        managed = False
        db_table = 'education_matric'



class Admissions(models.Model):
    session = models.CharField(max_length=20)
    year = models.IntegerField()
    open_date = models.DateField()
    close_date = models.DateField()

    class Meta:
        managed = False
        db_table = 'admissions'


class Offered_programs(models.Model):
    code = models.IntegerField()
    short_name = models.CharField(max_length=15)
    name = models.CharField(max_length=100)
    status = models.IntegerField()
    Department = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'offered_programs'


class EducationMs(models.Model):
    signup = models.ForeignKey('Signup', models.DO_NOTHING)
    msdeg = models.CharField(max_length=255)
    msyr = models.IntegerField()
    msnui = models.CharField(max_length=255)
    mssub = models.CharField(max_length=255)
    mstocgpa = models.CharField(max_length=255)
    msobcgpa = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'education_ms'



class EducationPhd(models.Model):
    signup_id = models.IntegerField()
    phddeg = models.CharField(max_length=255)
    phdyr = models.IntegerField()
    phduni = models.CharField(max_length=255)
    phdsub = models.CharField(max_length=255)
    phdtocgpa = models.CharField(max_length=255)
    phdobcgpa = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'education_phd'



class Ntstest(models.Model):
    signup = models.ForeignKey('Signup', models.DO_NOTHING)
    rolno = models.CharField(max_length=50)
    testtype = models.CharField(max_length=255)
    ob_marks = models.CharField(max_length=100)
    month_nts = models.CharField(max_length=100)
    day_nts = models.CharField(max_length=100)
    year_nts = models.CharField(max_length=100)
    nts_resultcard = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'ntstest'



class Otherdeatils(models.Model):
    signup_id = models.IntegerField()
    hostel = models.CharField(max_length=100)
    transport = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'otherdeatils'



class Personal(models.Model):
    per_id = models.AutoField(primary_key=True)
    signup = models.ForeignKey('Signup', models.DO_NOTHING)
    uname = models.CharField(max_length=255)
    fname = models.TextField()
    month = models.TextField()
    day = models.IntegerField()
    year = models.IntegerField()
    gender = models.TextField()
    citizen = models.TextField()
    domicile = models.TextField()
    cnici = models.IntegerField()
    cnicii = models.IntegerField()
    cniciii = models.IntegerField()
    mobcode = models.IntegerField()
    mobnumber = models.CharField(max_length=255)
    photo = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'personal'



class Programs(models.Model):
    signup = models.ForeignKey('Signup', models.DO_NOTHING)
    programone = models.CharField(max_length=100)
    programtwo = models.CharField(max_length=100)
    programthree = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'programs'



class Resultcard(models.Model):
    signup = models.ForeignKey('Signup', models.DO_NOTHING)
    mresult = models.CharField(max_length=255)
    fresult = models.CharField(max_length=255)
    bscresult = models.CharField(max_length=255)
    bsresult = models.CharField(max_length=255)
    msresult = models.CharField(max_length=255)
    hope_certificate = models.CharField(max_length=255)
    e_certificate = models.CharField(max_length=255)
    e_certificate_a = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'resultcard'


class Signup(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, blank=True, null=True)
    signup_id = models.AutoField(primary_key=True)
    program = models.TextField()
    university = models.TextField()
    firstname = models.TextField()
    last_name = models.TextField()
    email = models.CharField(max_length=255)
    password = models.CharField(max_length=255)

    @receiver(post_save, sender=User)
    def update_user_signup(sender, instance, created, **kwargs):
        if created:
            Signup.objects.create(user=instance)
        instance.signup.save()




class Status(models.Model):
    signup = models.ForeignKey(Signup, models.DO_NOTHING)
    personalstatus = models.IntegerField(null=True)
    address = models.IntegerField(null=True)
    education = models.IntegerField(null=True)
    metric = models.IntegerField(null=True)
    fsc = models.IntegerField(null=True)
    bsc = models.IntegerField(null=True)
    phd = models.IntegerField(null=True)
    metricimg = models.IntegerField(null=True)
    fscimg = models.IntegerField(null=True)
    bscimg = models.IntegerField(null=True)
    bsimg = models.IntegerField(null=True)
    nts = models.IntegerField(null=True)
    ms = models.IntegerField(null=True)
    msimg = models.IntegerField(null=True)
    ntscard = models.IntegerField(null=True)
    teststatus = models.IntegerField(null=True)
    othdetil = models.IntegerField(null=True)
    program = models.IntegerField(null=True)
    submit = models.IntegerField(null=True)
    ntsok = models.IntegerField(null=True)
    auictestok = models.IntegerField(null=True)
    ntscardok = models.IntegerField(null=True)

    class Meta:
        managed = False
        db_table = 'status'



class Submit(models.Model):
    signup = models.ForeignKey(Signup, models.DO_NOTHING)
    conform = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'submit'

