CLASS zcl_05_scrabble_score DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
    INTERFACES zif_abap_course_basics .
    DATA input TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_05_scrabble_score IMPLEMENTATION.

  METHOD zif_abap_course_basics~scrabble_score.

  DATA total_score TYPE i VALUE 0.
  DATA char TYPE c LENGTH 1.
  DATA char_value TYPE i.
  DATA str_length TYPE i.
  DATA i TYPE i.

  input = to_upper( input ).
  str_length = strlen( input ).

    DO str_length TIMES.
      char = input+sy-index(1).

      IF char >= 'A' AND char <= 'Z'.
        char_value = ( char - 'A' + 1 ).
        total_score = total_score + char_value.
      ENDIF.
    ENDDO.

    RETURN total_score.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
  DATA score TYPE i.
    score = zif_abap_course_basics~scrabble_score( 'ABCD' ).
    out->write( score ).
  ENDMETHOD.

ENDCLASS.
