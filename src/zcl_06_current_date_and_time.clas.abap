CLASS zcl_06_current_date_and_time DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
    INTERFACES zif_abap_course_basics .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_06_current_date_and_time IMPLEMENTATION.

  METHOD zif_abap_course_basics~get_current_date_time.
  DATA lv_timestamp TYPE timestamp.

  GET TIME STAMP FIELD lv_timestamp.
    RETURN lv_timestamp.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
  DATA current_time TYPE timestamp.
    current_time = zif_abap_course_basics~get_current_date_time( ).
    out->write( |Current Timestamp: { current_time }| ).
  ENDMETHOD.

ENDCLASS.
