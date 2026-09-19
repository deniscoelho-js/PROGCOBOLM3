      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENHANCEDBMICALCULATOR.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT BMI-FILE ASSIGN TO "BMI-INPUT.DAT".
                   ORGANIZATION IS LINE SEQUENTIAL.
           SELECT PRINT-FILE ASSIGN TO "BMI-REPORT.DAT".
       
       DATA DIVISION.
       FILE SECTION.
           FD BMI-FILE.

           01 BMIDETAILS.
                   88 ENDFBMI VALUE HIGH-VALUES.
                05 PERSON-NAME.
                    10 LASTNAME                PIC X(20).
                    10 FIRSTNAME               PIC X(20).
                05 HEIGHT-INCHES               PIC 999.
                05 WEIGHT                      PIC 999.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
  
            STOP RUN.
       END PROGRAM ENHANCEDBMICALCULATOR.
