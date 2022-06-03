from django.db import models


class ProgrammModel(models.Model):
    """ Модель программы """

    name = models.CharField(verbose_name="Название", max_length=100)
    min_diameter = models.IntegerField(verbose_name="Минимальный диаметр, мм", default=0)
    max_diameter = models.IntegerField(verbose_name="Максимальный диаметр, мм", default=0)
    description = models.TextField(verbose_name="Описание", max_length=3000, blank=True)
    created_at = models.DateTimeField(verbose_name="Создан", auto_now_add=True)
    updated_at = models.DateTimeField(verbose_name="Обновлён", auto_now=True)

    class Meta:
        verbose_name = 'Программа'
        verbose_name_plural = 'Программы'

    def __str__(self):
        return self.name



class PreheatingModel(models.Model):
    """ Модель подогрева """

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="preheating", on_delete=models.CASCADE)
    ph_0 = models.FloatField(verbose_name="Скорость вперёд", default=0.0)
    ph_1 = models.FloatField(verbose_name="Скорость уплотнения", default=0.0)
    ph_2 = models.FloatField(verbose_name="Скорость назад", default=0.0)
    ph_3 = models.FloatField(verbose_name="Скорость последнего уплотнения", default=0.0)
    ph_4 = models.IntegerField(verbose_name="Время уплотнения", default=0)
    ph_5 = models.IntegerField(verbose_name="Время подогрева", default=0)
    ph_6 = models.IntegerField(verbose_name="Время паузы", default=0)
    ph_7 = models.IntegerField(verbose_name="Число импульсов", default=0)
    ph_8 = models.IntegerField(verbose_name="Ток короткого замыкания", default=0)
    ph_9 = models.IntegerField(verbose_name="Ток холостого хода", default=0)
    ph_10 = models.IntegerField(verbose_name="Напряжение подогрева", default=0)
    ph_11 = models.IntegerField(verbose_name="Время осадки с током", default=0)
    ph_12 = models.FloatField(verbose_name="Величина осадки", default=0.0)

    class Meta:
        verbose_name = 'Подогрев'
        verbose_name_plural = 'Подогрев'

    def __str__(self):
        return self.programm.name



class BurningModel(models.Model):
    """ Модель выжигания """

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="burning", on_delete=models.CASCADE)
    b_0 = models.FloatField(verbose_name="Величина выжигания", default=0.0)
    b_1 = models.FloatField(verbose_name="Скорость вперёд", default=0.0)
    b_2 = models.FloatField(verbose_name="Скорость назад", default=0.0)
    b_3 = models.IntegerField(verbose_name="Напряжение выжигания", default=0)
    b_4 = models.IntegerField(verbose_name="Ток коррекции", default=0)
    b_5 = models.IntegerField(verbose_name="Ток остановки", default=0)
    b_6 = models.IntegerField(verbose_name="Ток реверса", default=0)
    b_7 = models.IntegerField(verbose_name="Ток короткого замыкания", default=0)

    class Meta:
        verbose_name = 'Выжигание'
        verbose_name_plural = 'Выжигание'

    def __str__(self):
        return self.programm.name



class ClampModel(models.Model):
    """ Модель зажима """

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="clamp", on_delete=models.CASCADE)
    cl_0 = models.IntegerField(verbose_name="Давление осадки/зажимов", default=0)
    cl_1 = models.IntegerField(verbose_name="Исходное", default=0)
    cl_2 = models.IntegerField(verbose_name="Время проковки", default=0)
    cl_3 = models.FloatField(verbose_name="Величина разведения", default=0.0)
    cl_4 = models.FloatField(verbose_name="Скорость разведения", default=0.0)
    cl_5 = models.BooleanField(verbose_name="Срезка грата", default=False)
    cl_6 = models.BooleanField(verbose_name="Осадка", default=False)

    class Meta:
        verbose_name = 'Зажим'
        verbose_name_plural = 'Зажим'

    def __str__(self):
        return self.programm.name



class SensorAbstractModel(models.Model):
    """ Астрактная модель сенсоров """

    min_value = models.IntegerField(verbose_name="Минимальное значение", default=0)
    max_value = models.IntegerField(verbose_name="Максимальное значение", default=0)

    class Meta:
        abstract = True


class PositionSensorModel(SensorAbstractModel):
    """ Модель датчиков положения """

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="position_sensor", on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Датчик положения'
        verbose_name_plural = 'Датчик положения'

    def __str__(self):
        return self.programm.name


class CurrentSensorModel(SensorAbstractModel):
    """ Модель датчиков тока """

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="current_sensor", on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Датчик тока'
        verbose_name_plural = 'Датчик тока'

    def __str__(self):
        return self.programm.name


class PrimaryVoltageSensorModel(SensorAbstractModel):
    """ Модель датчиков первичной обмотки """

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="primary_voltage_sensor", on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Датчик первичной обмотки'
        verbose_name_plural = 'Датчик первичнной обмотки'

    def __str__(self):
        return self.programm.name


class SedimentPressureSensorModel(SensorAbstractModel):
    """ Модель датчиков давления осадки """

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="sediment_pressure_sensor", on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Датчик давления осадки'
        verbose_name_plural = 'Датчик давления осадки'

    def __str__(self):
        return self.programm.name


class PKPressureMeterSensorModel(SensorAbstractModel):
    """ Модель датчиков давления ПК"""

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="pk_pressure_meter_sensor", on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Датчик давления ПК'
        verbose_name_plural = 'Датчик давления ПК'

    def __str__(self):
        return self.programm.name


class NKPressureMeterSensorModel(SensorAbstractModel):
    """ Модель датчиков давления НК"""

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="nk_pressure_meter_sensor", on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Датчик давления НК'
        verbose_name_plural = 'Датчик давления НК'

    def __str__(self):
        return self.programm.name


class HydraulicPressureSensorModel(SensorAbstractModel):
    """ Модель датчиков давления гидростанции """

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="hydraulic_pressure_sensor", on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Датчик давления гидростанции'
        verbose_name_plural = 'Датчик давления гидростанции'

    def __str__(self):
        return self.programm.name


class OilTemperatureSensorModel(SensorAbstractModel):
    """ Модель датчиков температуры масла """

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="oil_temperature_sensor", on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Датчик температуры масла'
        verbose_name_plural = 'Датчик температуры масла'

    def __str__(self):
        return self.programm.name


class OtherParameterSensorModel(SensorAbstractModel):
    """ Модель датчиков других параметров """

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="other_parameter_sensor", on_delete=models.CASCADE)

    oth_0 = models.FloatField(verbose_name="Крайнее разведённое положение, мм", default=0.0)
    oth_1 = models.FloatField(verbose_name="Крайнее сведённое положение, мм", default=0.0)
    oth_2 = models.FloatField(verbose_name="Зона возможного запуска, мм", default=0.0)
    oth_3 = models.FloatField(verbose_name="Расстояние между эл. в сведённом положении, мм", default=0.0)
    oth_4 = models.FloatField(verbose_name="Путь выключения клапана осадки, мм", default=0.0)
    oth_5 = models.FloatField(verbose_name="Уставка контроля положения плиты, мм", default=0.0)
    oth_6 = models.FloatField(verbose_name="Уставка наличия проскальзывания, мм", default=0.0)
    oth_7 = models.FloatField(verbose_name="Конечное положение при срезке грата, мм", default=0.0)
    oth_8 = models.FloatField(verbose_name="Скорость сведения, мс/с", default=0.0)
    oth_9 = models.FloatField(verbose_name="Скорость разведения, мс/с", default=0.0)
    oth_10 = models.FloatField(verbose_name="Скорость выхода в исходное положение, мс/с", default=0.0)
    oth_11 = models.FloatField(verbose_name="Скорость движения в тесте, мс/с", default=0.0)
    oth_12 = models.IntegerField(verbose_name="Напряжение в ручном режиме, %", default=0)
    oth_13 = models.IntegerField(verbose_name="Расжим ПК, мс", default=0)
    oth_14 = models.IntegerField(verbose_name="Разжим НК, мс", default=0)
    oth_15 = models.IntegerField(verbose_name="Время подразжима, мс", default=0)
    oth_16 = models.IntegerField(verbose_name="Время котроля осадки, мс", default=0)
    oth_17 = models.IntegerField(verbose_name="Время контроля срезки, мс", default=0)

    class Meta:
        verbose_name = 'Параметры других датчиков'
        verbose_name_plural = 'Параметры других датчиков'

    def __str__(self):
        return self.programm.name



class ReflowParamModel(models.Model):
    """ Параметры оплавления """

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="reflow_param", on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Параметры оплавления'
        verbose_name_plural = 'Параметры оплавления'

    def __str__(self):
        return self.programm.name


class ReflowSectionModel(models.Model):
    """ Участки оплавления """

    reflow = models.ForeignKey(ReflowParamModel, verbose_name="Параметры оплавления", related_name="reflow_section", on_delete=models.CASCADE)
    r_0 = models.FloatField(verbose_name="S", default=0.0)
    r_1 = models.FloatField(verbose_name="Скорость вперёд", default=0.0)
    r_2 = models.FloatField(verbose_name="Скорость назад", default=0.0)
    r_3 = models.FloatField(verbose_name="U", default=0.0)

    class Meta:
        verbose_name = 'Участок оплавления'
        verbose_name_plural = 'Участки оплавления'

    def __str__(self):
        return self.reflow.programm.name


class CorrectorParamModel(models.Model):
    """ Параметры корректора """

    programm = models.ForeignKey(ProgrammModel, verbose_name="Программа", related_name="corrector_param", on_delete=models.CASCADE)

    class Meta:
        verbose_name = 'Параметры корректора'
        verbose_name_plural = 'Параметры корректора'

    def __str__(self):
        return self.programm.name


class CorrectorSectionModel(models.Model):
    """ Участки коррекции """

    corrector = models.ForeignKey(CorrectorParamModel, verbose_name="Параметры корректора", related_name="corrector_section", on_delete=models.CASCADE)
    c_0 = models.FloatField(verbose_name="Ток коррекции", default=0.0)
    c_1 = models.FloatField(verbose_name="Скорость вперёд", default=0.0)
    c_2 = models.FloatField(verbose_name="Скорость назад", default=0.0)
    c_3 = models.FloatField(verbose_name="Ток КЗ", default=0.0)

    class Meta:
        verbose_name = 'Участок коррекции'
        verbose_name_plural = 'Участки коррекции'

    def __str__(self):
        return self.corrector.programm.name