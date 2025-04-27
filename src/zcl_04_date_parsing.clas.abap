CLASS zcl_04_date_parsing DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
    INTERFACES zif_abap_course_basics .
    DATA input TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA parsed_date TYPE dats.

ENDCLASS.

CLASS zcl_04_date_parsing IMPLEMENTATION.

  METHOD zif_abap_course_basics~date_parsing.
  DATA parts TYPE STANDARD TABLE OF string WITH EMPTY KEY.
  DATA day TYPE i.
  DATA month TYPE i.
  DATA year TYPE i.


  IF input IS INITIAL.
    parsed_date = ''.
    RETURN.
  ENDIF.

  SPLIT input AT space INTO TABLE parts.

  IF lines( parts ) <> 3.
    parsed_date = ''.
    RETURN.
  ENDIF.

   READ TABLE parts INDEX 1 INTO DATA(v_day).
   READ TABLE parts INDEX 2 INTO DATA(v_month).
   READ TABLE parts INDEX 3 INTO DATA(v_year).

   day = v_day.
   year = v_year.

   if v_month CS '0123456789'.
   month = v_month.
   else.
   CASE v_month.
   WHEN 'January'.   month = 1.
        WHEN 'February'.  month = 2.
        WHEN 'March'.     month = 3.
        WHEN 'April'.     month = 4.
        WHEN 'May'.       month = 5.
        WHEN 'June'.      month = 6.
        WHEN 'July'.      month = 7.
        WHEN 'August'.    month = 8.
        WHEN 'September'. month = 9.
        WHEN 'October'.   month = 10.
        WHEN 'November'.  month = 11.
        WHEN 'December'.  month = 12.
        WHEN OTHERS.
          month = 0.
      ENDCASE.
      ENDIF.

         IF month > 0 AND month <= 12.
      parsed_date = |{ year WIDTH = 4 ALIGN = RIGHT PAD = '0' }{ month WIDTH = 2 ALIGN = RIGHT PAD = '0' }{ day WIDTH = 2 ALIGN = RIGHT PAD = '0' }|.
         ELSE.
      parsed_date = ''.  "
         ENDIF.
    ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
  input = '12 April 2017'.
  zif_abap_course_basics~date_parsing( input  ).
    out->write( parsed_date ).
  ENDMETHOD.

ENDCLASS.
