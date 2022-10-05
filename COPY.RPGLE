**free
/** Los módulos van dentro de mi propio programa
le copy en tranversal a mi solución
en el copy tenemos las definiciones
 lo que ayuda el qualifies es que coloca la estructura de esta forma DsUsuarioT.Nombre**/
      dcl-Ds DsUsuarioT Qualified Template;
        Nombre like(wNombreT);
        Id like(wIdT);
        Fecha like(wFechaT);
        Tiempo like(wTiempoT);
      end-Ds;

      dcl-s wNombreT char(10) Template;
      dcl-s wIdT int(5) Template;
      dcl-s wMssgIdT char(7) Template;
      dcl-s wFechaT varchar(100) Template;
      dcl-s wTiempoT varchar(100) Template;
      dcl-s wSqlStateT char(5) Template;
      dcl-s wMensajeT Varchar(100) Template;

      dcl-pr PrInsertar;
        parUsuario likeDs(DsUsuarioT) Const;
        parsqlState like(wSqlStateT);
      end-pr;  

      dcl-pr FnFormatoTiempo like(wTiempoT);
          parTime Time(*ISO) Const;
      end-pr;

      dcl-pr FnFormatoFecha like(wFechaT);
          parDate Date(*ISO) Const;
      end-pr;

      dcl-pr FnMensajeStt like(wMssgIdT);
          parsqlstate Like(wSqlStateT) Const;
      end-pr;

      dcl-pr PrEntrada; // prototipo
        parNombre like(wNombreT);
        parId like(wIdT);
        parMsgId like(wMssgIdT);
      end-pr;  