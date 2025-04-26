CLASS zcl_02_compute_new DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
    INTERFACES zif_abap_course_basics .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_compute_new IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA result TYPE p LENGTH 8 DECIMALS 2.


    DATA number1 TYPE i.
    DATA number2 TYPE i.

    number1 = -8.
    number2 =  3.

   result = number1 / number2.
    DATA(output) = |{ number1 } / { number2 } = { result }|.

out->write( output ).

  ENDMETHOD.


  METHOD zif_abap_course_basics~calculator.
  ENDMETHOD.


  METHOD zif_abap_course_basics~date_parsing.
  ENDMETHOD.


  METHOD zif_abap_course_basics~fizz_buzz.
  ENDMETHOD.


  METHOD zif_abap_course_basics~get_current_date_time.
  ENDMETHOD.


  METHOD zif_abap_course_basics~hello_world.
  ENDMETHOD.


  METHOD zif_abap_course_basics~internal_tables.
  ENDMETHOD.


  METHOD zif_abap_course_basics~open_sql.
  ENDMETHOD.


  METHOD zif_abap_course_basics~scrabble_score.
  ENDMETHOD.
ENDCLASS.
