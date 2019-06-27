
class MyDB2Router(object):


    def db_for_read(self, model, **hints):
        if model._meta.app_label == 'admission_sys':
            return 'adm'
        return None

    def db_for_write(self, model, **hints):
        if model._meta.app_label == 'admission_sys':
            return 'adm'
        return None

    def allow_relation(self, obj1, obj2, **hints):
        if obj1._meta.app_label == 'admission_sys' or obj2._meta.app_label == 'admission_sys':
            return True
        return None

    def allow_syncdb(self, db, model):

        if db == 'adm':
            return model._meta.app_label == 'admission_sys'
        elif model._meta.app_label == 'admission_sys':
            return False
        return None