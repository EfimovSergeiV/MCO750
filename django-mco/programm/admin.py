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

from django.template.response import TemplateResponse
from django.http import Http404
from django.utils.translation import gettext as _


class MyAdminSite(AdminSite):
    """ Отключаем сортировки по названию в админке"""

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

    def app_index(self, request, app_label, extra_context=None):
        app_dict = self._build_app_dict(request, app_label)
        if not app_dict:
            raise Http404("The requested admin page does not exist.")
        # Sort the models alphabetically within each app.
        # app_dict["models"].sort(key=lambda x: x["name"])
        context = {
            **self.each_context(request),
            "title": _("%(app)s administration") % {"app": app_dict["name"]},
            "subtitle": None,
            "app_list": [app_dict],
            "app_label": app_label,
            **(extra_context or {}),
        }

        request.current_app = self.name

        return TemplateResponse(
            request,
            self.app_index_template
            or ["admin/%s/app_index.html" % app_label, "admin/app_index.html"],
            context,
        )


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


class ProgrammAdmin(admin.ModelAdmin):
    list_display = ('name', 'min_diameter', 'max_diameter', 'created_at', 'updated_at')
    list_filter = ('created_at', 'updated_at')
    search_fields = ('name', 'description')
    ordering = ('-created_at',)
    readonly_fields = ('created_at', 'updated_at')
    fieldsets = (
        (None, {
            'fields': ('name', ('min_diameter', 'max_diameter',) ,'description')
        }),
        ('Дата и время', {
            'fields': ('created_at', 'updated_at')
        }),
    )



admin.site.register(ProgrammModel, ProgrammAdmin)
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


# Отображаем пользователей и группы в админке
from django.contrib.auth.models import Group, User
from django.contrib.auth.admin import GroupAdmin, UserAdmin
admin.site.register(Group, GroupAdmin)
admin.site.register(User, UserAdmin)