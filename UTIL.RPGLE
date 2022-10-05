**free

      /copy COPY
      dcl-Proc FnFormatoFecha Export;
        dcl-pi *n like(wFechaT);
          InDate Date(*ISO) Const;
        end-pi;

        //- Variables 

        dcl-s wFecha like(wFechaT);
            //- Process 
            wFecha = %Char(InDate:*Iso0);
        Return wFecha;
 
      end-Proc; 

      dcl-Proc FnFormatoTiempo Export;
        dcl-pi *n like(wTiempoT);
          InTime Time(*ISO) Const;
        end-pi;

        //- Variables 

        dcl-s wTiempo like(wTiempoT); //Variable para almacenar el resultado

        //- Process 

        wTiempo = %Char(InTime:*hms);

        Return wTiempo;

      end-Proc; 

      dcl-Proc FnMensajeStt Export; //implementacion del prototipo
        dcl-pi *n like(wMssgIdT);
          Insqlstate like(wSqlStateT) Const; //El prefijo con el IN significa que es un parametro de entrada
        end-pi;

        dcl-s wwMssgIdT Like(wMssgIdT) Inz(*Blanks);

        select;
          when Insqlstate = '00000';
            wwMssgIdT = 'LNS0000';
          when Insqlstate = '00000';
            wwMssgIdT = 'LNS0000';
          other;
        endsl;

        Return wwMssgIdT;

    end-Proc;
