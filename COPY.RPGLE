**free
/** Los módulos van dentro de mi propio programa
le copy en tranversal a mi solución
en el copy tenemos las definiciones
 lo que ayuda el qualifies es que coloca la estructura de esta forma DsUsuarioT.Nombre**/
      dcl-Ds DsUsuarioT Qualified Template;
        Nombre like(wNombreT);
        Id like(wIdT);
        Fecha Date(*ISO);
        Tiempo Time(*ISO);
      end-Ds;

      dcl-s wNombreT char(10) Template;
      dcl-s wIdT int(5) Template;
      dcl-s wMssgIdT char(7) Template;

      dcl-pr PrInsertar;
        parUsuario likeDs(DsUsuarioT);
      end-pr;  