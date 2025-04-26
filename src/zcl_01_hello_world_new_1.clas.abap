CLASS zcl_01_hello_world_new_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    INTERFACES zif_abap_course_basics.

  PRIVATE SECTION.
    DATA uv_name TYPE string.     " Class attribute for the name
    DATA mv_message TYPE string.  " Class attribute for the message

    " Declare method to set message
    METHODS set_message.

ENDCLASS.

CLASS zcl_01_hello_world_new_1 IMPLEMENTATION.

  METHOD zif_abap_course_basics~hello_world.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    uv_name = 'Amanda T'.
    me->set_message( ).
    out->write( mv_message ).
  ENDMETHOD.

  METHOD set_message.
     mv_message = |Hello { uv_name }, your system user is { sy-uname }|.
  ENDMETHOD.

  METHOD zif_abap_course_basics~calculator.
  ENDMETHOD.


  METHOD zif_abap_course_basics~date_parsing.
  ENDMETHOD.


  METHOD zif_abap_course_basics~fizz_buzz.
  ENDMETHOD.


  METHOD zif_abap_course_basics~get_current_date_time.
  ENDMETHOD.


  METHOD zif_abap_course_basics~internal_tables.
  ENDMETHOD.


  METHOD zif_abap_course_basics~open_sql.
  ENDMETHOD.


  METHOD zif_abap_course_basics~scrabble_score.
  ENDMETHOD.
ENDCLASS.
