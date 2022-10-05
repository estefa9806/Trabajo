**free 

    dcl-Proc PrInsertar Export;
        dcl-pi *n;
            InUsuario likeDs(DsUsuarioT);
        end-pi;     

        Exec SQL
            insert into Usuario values(:Inusuario);
    end-Proc;
