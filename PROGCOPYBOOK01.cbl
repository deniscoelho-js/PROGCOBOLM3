      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOPYBOOK01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-TM-1                             PIC 99.
       77 WS-TM-2                             PIC 99.
       COPY 'FIAWVGA'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
           MOVE 'SEC'                       TO WS-PRIMEIRO-NOME
           MOVE 'SILVA'                     TO WS-ULTIMO-NOME
           MOVE '5511998765523'             TO WS-TELEFONE
           MOVE 'RUA DEZ, 02'               TO WS-RUA
           MOVE 'SAO JOSE'                  TO WS-BAIRRO
           MOVE 'SAO PAULO'                 TO WS-CIDADE
           MOVE 'SP'                        TO WS-UF
           MOVE '0112002'                   TO WS-CEP
           MOVE 'BRASILEIRA'                TO WS-NACIONALIDADE
           MOVE 'DESENVOLVEDOR'             TO WS-PROFISSAO

           DISPLAY '==================================================='

           MOVE ZEROS                       TO WS-TM-1
           INSPECT FUNCTION REVERSE(WS-PRIMEIRO-NOME)
                   TALLYING WS-TM-1 FOR LEADING ' '
      
           DISPLAY '1 - NOMDE COMPLETO: ' WS-PRIMEIRO-NOME
                 (1:(FUNCTION LENGTH(WS-PRIMEIRO-NOME) - WS-TM-1))
                                          ' '
                                         WS-ULTIMO-NOME
           DISPLAY '2 - TELEFONE: ' '+' WS-PAIS ' '
                                         '(' WS-DDD ')'
                                         ' '
                                         WS-PREFIXO
                                         '-'
                                         WS-SUFIXO

           MOVE ZEROS                       TO WS-TM-1
           INSPECT FUNCTION REVERSE(WS-RUA)
                   TALLYING WS-TM-1 FOR LEADING ' '    

           MOVE ZEROS                       TO WS-TM-2
           INSPECT FUNCTION REVERSE(WS-CIDADE)
                   TALLYING WS-TM-2 FOR LEADING ' '    

           DISPLAY '3 - ENDERECO: ' WS-RUA
                 (1:(FUNCTION LENGTH(WS-RUA) - WS-TM-1))
                                                 ' '
                                               WS-BAIRRO
                                               WS-CIDADE
           (1:(FUNCTION LENGTH(WS-RUA) - WS-TM-2))
                                                ' '
                                               WS-UF
           FUNCTION CONCATENATE(' - CEP: '
                                    WS-CEP-1
                                    '-'
                                    WS-CEP-2
           )
           DISPLAY '4 - NACIONALIDADE: ' WS-NACIONALIDADE
           DISPLAY '5 - PROFISSAO: ' WS-PROFISSAO

           DISPLAY '==================================================='
            .
            STOP RUN.
       END PROGRAM PROGCOPYBOOK01.
