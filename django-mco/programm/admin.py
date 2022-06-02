from django.contrib import admin
from django.contrib.admin import AdminSite

from programm.models import (
    ProgrammModel,
    PreheatingModel,
    BurningModel,
    ClampModel,
    PositionSensorModel,
    CurrentSensorModel,
    PrimaryVoltageSensorModel,
    SedimentPressureSensorModel,
    PKPressureMeterSensorModel,
    NKPressureMeterSensorModel,
    HydraulicPressureSensorModel,
    OilTemperatureSensorModel,
    OtherParameterSensorModel,
    ReflowParamModel,
    ReflowSectionModel,
    CorrectorParamModel,
    CorrectorSectionModel
)

class MyAdminSite(AdminSite):
    site_header = 'MCO750'
    site_title = 'MCO750'
    index_title = 'Управление сварочной машиной'

    def get_app_list(self, request):
        """
        Return a sorted list of all the installed apps that have been
        registered in this site.
        """
        app_dict = self._build_app_dict(request)

        # Sort the apps alphabetically.
        app_list = sorted(app_dict.values(), key=lambda x: x["name"].lower())

        # Sort the models alphabetically within each app.
        # for app in app_list:
        #     app["models"].sort(key=lambda x: x["name"])

        return app_list


admin.site = MyAdminSite()


class InlineReflowAdmin(admin.TabularInline):
    model = ReflowSectionModel
    extra = 10

class InlineCorrectorAdmin(admin.TabularInline):
    model = CorrectorSectionModel
    extra = 10


class ReflowAdmin(admin.ModelAdmin):
    inlines = [InlineReflowAdmin,]

class CorrectorAdmin(admin.ModelAdmin):
    inlines = [InlineCorrectorAdmin,]


admin.site.register(ProgrammModel)
admin.site.register(PreheatingModel)
admin.site.register(BurningModel)
admin.site.register(ClampModel)
admin.site.register(PositionSensorModel)
admin.site.register(CurrentSensorModel)
admin.site.register(PrimaryVoltageSensorModel)
admin.site.register(SedimentPressureSensorModel)
admin.site.register(PKPressureMeterSensorModel)
admin.site.register(NKPressureMeterSensorModel)
admin.site.register(HydraulicPressureSensorModel)
admin.site.register(OilTemperatureSensorModel)
admin.site.register(OtherParameterSensorModel)
admin.site.register(ReflowParamModel, ReflowAdmin)
admin.site.register(CorrectorParamModel, CorrectorAdmin)


from django.contrib.auth.models import Group, User
from django.contrib.auth.admin import GroupAdmin, UserAdmin
admin.site.register(Group, GroupAdmin)
admin.site.register(User, UserAdmin)