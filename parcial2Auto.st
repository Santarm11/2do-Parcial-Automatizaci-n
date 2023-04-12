PROGRAM Proyecto
  VAR
    BtnInicio AT %IX0.0 : BOOL;
    BtnParo AT %IX0.1 : BOOL;
    SensorCajas AT %IX0.2 : BOOL;
    SensorMandarinas AT %IX0.3 : BOOL;
    LuzFunciona AT %QX0.0 : BOOL;
    MotorCajas AT %QX0.1 : BOOL;
    MotorMandarinas AT %QX0.2 : BOOL;
  END_VAR
  VAR
    CTU0 : CTU;
    Reset : BOOL;
    CuentaMandarina : INT := 3;
    ContadorCompleto : BOOL;
    ReactivacionCaja : BOOL;
    TON0 : TON;
    TON1 : TON;
    R_TRIG1 : R_TRIG;
  END_VAR

  LuzFunciona := NOT(BtnParo) AND (BtnInicio OR LuzFunciona);
  MotorCajas := LuzFunciona AND (ReactivacionCaja OR SensorCajas);
  MotorMandarinas := NOT(ReactivacionCaja) AND LuzFunciona AND NOT(ContadorCompleto) AND NOT(SensorCajas);
  MotorMandarinas := NOT(SensorMandarinas);
  R_TRIG1(CLK := NOT(SensorMandarinas));
  CTU0(CU := R_TRIG1.Q, R := Reset, PV := CuentaMandarina);
  ContadorCompleto := CTU0.Q;
  TON0(IN := MotorCajas, PT := T#2000ms);
  Reset := TON0.Q;
  TON1(IN := ContadorCompleto, PT := T#2000ms);
  ReactivacionCaja := TON1.Q;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : Proyecto;
  END_RESOURCE
END_CONFIGURATION
