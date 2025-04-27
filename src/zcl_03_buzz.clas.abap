CLASS zcl_03_buzz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
    INTERFACES zif_abap_course_basics .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA result TYPE string.
ENDCLASS.

CLASS zcl_03_buzz IMPLEMENTATION.

  METHOD zif_abap_course_basics~fizz_buzz.
  DATA i TYPE i.
  result = ''."

  DO 100 TIMES.
   i = sy-index.

    if i MOD 15 = 0 .
     result = result && 'FizzBuzz'.
    elseif  i MOD 3 = 0 .
     result = result && 'Fizz'.
    elseif  i MOD 5 = 0 .
     result = result && 'Buzz'.
    else.
     result = result && |{ i }|.
    ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
  zif_abap_course_basics~fizz_buzz(  ).
  out->write( result ).
  ENDMETHOD.

ENDCLASS.
