**free 
     /copy COPY   
    //El export permite exponer afuera del fuente
    dcl-Proc PrInsertar Export;
        dcl-pi *n;
            InUsuario likeDs(DsUsuarioT); //Cuando el parametro es de entrada debe de tener el IN
            OutSqlState like(wSqlStateT);
        end-pi;     

        Exec SQL
            insert into Usuario values(:Inusuario);
         OutSqlState = SQLSTATE;
    end-Proc;
