**free
    /copy COPY
    // Cómo voy a entrar al programa
    //El export significa que se va a poder usar en otra parte
    dcl-Proc PrEntrada Export; //implementacion del prototipo
        dcl-pi *n;
            InNombre like(wNombreT) Const; //El prefijo con el IN significa que es un parametro de entrada
            InId like(wIdT);
            OutMsgId like(wMssgIdT);
        end-pi;
    end-Proc;

    // estructuras
    dcl-Ds DsUsuario likeDs(DsUsuarioT);

    // Variables

    dcl-s wSqlState like(wSqlStateT);

    //proceso
        DsUsuario.Nombre=InNombre;
        DsUsuario.Id=InId;
        DsUsuario.Fecha=FnFormatoFecha(%Date());
        DsUsuario.Tiempo=FnFormatoTiempo(%Time());
        
        PrInsertar(DsInsertar:wSqlState);

    

