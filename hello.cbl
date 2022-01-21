      ********************************************
      * COBOL PROGRAM USING DATATYPES            *
      * DATE : 09.01.2022                        *
      * AUTHOR : Chatrughan Prasad                     *
      ********************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. UNSTRNG.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * DATA TYPES IN COBOL
       01 WS-DATATYPES.
          02 WS-NUMERIC   PIC 9(3).
          02 WS-NUM-DEC   PIC 9(3)V9(2).
          02 WS-ALPHA     PIC A(10).
          02 WS-ALPHNUM   PIC X(10).
          02 WS-SIGN      PIC S9(3).
          02 WS-SIGN-DEC  PIC S9(5)V9(3).
      * EDITING CHARACTERS
       01 WS-EDITING-CHAR.
      * ZERO SUPRESING ZERO REPLACED WITH SPACE-> IN(0123) OUT( 123)
          02 WS-Z999     PIC Z999.
          02 WS-ZZ999    PIC ZZ999.
          02 WS-ZZZ999   PIC ZZZ999.
      * USING ** SYMBOLS -> IN (00123) OUT (**123)
          02 WS-ASTERIC  PIC **999.
      * USING $ SYMBOLS -> IN (123.25 ) OUT ( $123.25 )
          02 WS-DOLLAR   PIC $999.99.
      * USING MINUS SYMOBOL -> IN(1234) OUT (-1234/1234-)
          02 WS-MINUS-L  PIC -9999.
          02 WS-MINUS-R  PIC 9999-.
      * USING PLUS SYMOBOL -> IN(1234) OUT(+1234/1234+)
          02 WS-PLUS-L   PIC +9999.
          02 WS-PLUS-R   PIC 9999+.
      * USING CREDIT & DEBIT SYMBOL -> IN(-1234) OUT(1234CR/1234DR)
          02 WS-CR       PIC 999CR.
          02 WS-DB       PIC 999DB.
      * USING DOT  IN(123.44) OUT(123.44)
          02 WS-DOT      PIC 9(3).9(2).
      * USING ,    IN(12345) OUT(12,345)
          02 WS-CAMA     PIC 999,99.
      * USING BLANK IN(12345) OUT(12 345)
          02 WS-BLANK     PIC 99B999.
      * USING ZERO  IN(123) OUT(12300)
          02 WS-ZERO      PIC 99900.
          02 WS-ZERO-F    PIC 00999.
      * USING / SLASH IN(07072020) OUT (07/07/2020)
          02 WS-SLASH     PIC 99/99/9999.
       PROCEDURE DIVISION.
           MOVE '123' TO WS-NUMERIC.
           DISPLAY WS-NUMERIC.
           MOVE 123.45 TO WS-NUM-DEC.
           DISPLAY WS-NUM-DEC.
           MOVE "chatrughan" TO WS-ALPHA.
           DISPLAY WS-ALPHA.
           MOVE "chatrughan 2022" TO WS-ALPHNUM.
           DISPLAY WS-ALPHNUM.
           MOVE +123 TO WS-SIGN.
           DISPLAY WS-SIGN.
           MOVE 123.45 TO WS-SIGN-DEC.
           DISPLAY WS-SIGN-DEC.
           MOVE 0123 TO WS-Z999.
           DISPLAY WS-Z999.
           MOVE 00123 TO WS-ZZ999.
           DISPLAY WS-ZZ999.
           MOVE 000123 TO WS-ZZZ999.
           DISPLAY WS-ZZZ999.
           MOVE 00123 TO WS-ASTERIC.
           DISPLAY WS-ASTERIC.
           MOVE 123.45 TO WS-DOLLAR.
           DISPLAY WS-DOLLAR.
           MOVE 1234 TO WS-MINUS-L.
           MOVE 1234 TO WS-MINUS-R.
           DISPLAY WS-MINUS-L.
           DISPLAY WS-MINUS-R.
           MOVE 1234 TO WS-PLUS-L.
           MOVE 1234 TO WS-PLUS-R.
           DISPLAY WS-PLUS-L.
           DISPLAY WS-PLUS-R.
           MOVE -1234 TO WS-CR.
           MOVE -1234 TO WS-DB.
           DISPLAY WS-CR.
           DISPLAY WS-DB.
           MOVE 123.44 TO WS-DOT.
           DISPLAY WS-DOT.
           MOVE 12344 TO WS-CAMA.
           DISPLAY WS-CAMA.
           MOVE 12345 TO WS-BLANK.
           DISPLAY WS-BLANK.
           MOVE 123 TO WS-ZERO.
           MOVE 123 TO WS-ZERO-F.
           DISPLAY WS-ZERO.
           DISPLAY WS-ZERO-F.
           MOVE 07072020 TO WS-SLASH.
           DISPLAY WS-SLASH.
           STOP RUN.
