## NO COMPLETO. es mejor poner un ejemplo específico en vez de generalizar, y todos los datos van en el cuando pero en el dado solo van los que generan el conflicto.    
***


#### Problema 8 : teatro.  

##### **Roles**  
- empleado.  
- vendedor de la boletería.
- usuario.  
- administrador.  

##### **HU**  
- reservar entradas.  
- comprar entradas vía web.  
- comprar entradas personalmente.  
- retirar entradas.  
- administrar programación de salas.
- pagar con tarjeta de crédito.  

***
**(frente)**  
**ID:** reservar entradas.  
**Título:** como empleado quiero reservar entradas para que una persona vea una función.  
**Reglas de negocio:** hasta dos entradas.

**Criterios de aceptación(dorso)**  

**Escenario 1:** *reserva exitosa*  
>***Dado*** que la obra "x" existe, la función de las 8p.m para el 26/11/2024 está disponible y se queire reservar 1 entrada.  
***Cuando*** el empleado ingresa la fecha de la función 26/11/2024, hora de la función 8p.m, nombre de la obra "x", nombre del espectador "pepito", el dni del espectador 11111111, elige 1 entrada y presiona RESERVAR.   
***Entonces*** el sistema registra la reserva y lo informa con éxito.  

**Escenario 2:** *reserva fallida por obra inexistente*  
>***Dado*** que la obra "x".    
***Cuando*** el empleado ingresa la fecha de la función 26/11/2024, hora de la función 8p.m, nombre de la obra "x", nombre del espectador "pepito", el dni del espectador 11111111, elige 1 entrada y presiona RESERVAR.   
***Entonces*** el sistema rechaza la reserva e informa que la obra no existe en el sistema.    

**Escenario 3:** *reserva fallida por horario y fecha de función no disponibles*  
>***Dado*** que la función de las 8p.m para el 26/11/2024 no se encuentra disponible.  
***Cuando*** el empleado ingresa la fecha de la función 26/11/2024, hora de la función 8p.m, nombre de la obra "x", nombre del espectador "pepito", el dni del espectador 11111111, elige 1 entrada y presiona RESERVAR.   
***Entonces*** el sistema rechaza la reserva e informa que la función no se encuentra disponible.  

probablemente este escenario no debería hacerse porque el enunciado dice "Para seleccionar el nombre de la obra, el sistema muestra una grilla de funciones disponibles para que el usuario seleccione una" entonces no mostraría el horario y fecha ingresadas sino las disponibles alrededor... ni idea y no pregunté xd.  

**Escenario 4:** *reserva fallida por excede la cantidad de entradas permitidas*  
>***Dado*** que se queire reservar 3 entradas.  
***Cuando*** el empleado ingresa la fecha de la función 26/11/2024, hora de la función 8p.m, nombre de la obra "x", nombre del espectador "pepito", el dni del espectador 11111111, elige 3 entrada y presiona RESERVAR.   
***Entonces*** el sistema regrechaza la reserva e informa que se excedió el máximo de entradas permitidas.   

**Escenario 1:** *reserva fallida por terminarse el tiempo para reservar*  
>***Dado*** que se terminó el tiempo de espera para reservar entradas.  
***Cuando*** el empleado ingresa la fecha de la función 26/11/2024, hora de la función 8p.m, nombre de la obra "x", nombre del espectador "pepito", el dni del espectador 11111111, elige 1 entrada y presiona RESERVAR.   
***Entonces*** el sistema rechaza la reserva e informa que se acabó el tiempo.  

no estoy segura de ese escenario tampoco.  
***
**(frente)**  
**ID:** lista funciones.  
**Título:** como usuario quiero ver la lista de funciones disponibles para poder ver una obra.  
**Reglas de negocio:** -  

**Criterios de aceptación(dorso)** 
**Escenario 1:** *listado exitoso*  
>***Dado*** que hay obras con funciones
***Cuando***
***Entonces*** 
***

**(frente)**  
**ID:** comprar entradas vía web.  
**Título:** como usuario quiero reservar entradas para poder ver una obra.  
**Reglas de negocio:**  

**Criterios de aceptación(dorso)**  

**Escenario 1:** *reserva exitosa*  
>***Dado*** que se enseña la lista de funciones disponibles y hay lugar disponible para 3 entradas.  
***Cuando*** el usuario selecciona una función, pone su dni 11111111, elige 2 lugares y selecciona PAGAR.  
***Entonces*** el sistema reserva los lugares y redirige al usuario a la sección de pago.  

**Escenario 2:** *fallo por no contar con lugar disponible*  
>***Dado*** que se enseña la lista de funciones disponibles y hay lugar disponible para 3 entradas.  
***Cuando*** el usuario selecciona una función, pone su dni 11111111, elige 4 lugares y selecciona PAGAR.  
***Entonces*** el sistema rechaza la reserva de los lugares e informa que no hay espacio disponible.  
