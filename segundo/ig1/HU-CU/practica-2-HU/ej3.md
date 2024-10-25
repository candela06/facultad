#### Problema 3: contratos  

###### **ROLES**  
- empleado de mesa  
- empleado de rendiciones  


###### **HU**
- confeccionar una minuta  
- aprobar una minuta  
- mostrar los datos de una minuta para su aprobación  
- verificación del CUIT   
- imprimir listados  

***

**ID:** confeccionar una minuta.  
**Titulo:** como empleado de mesa quiero confeccionar una minuta para poder contratar a una persona.  
**Reglas de negocio** los montos no pueden superar a $25.000 y el máximo de duración debe ser 6 meses.  

**Criterios de aceptación**  
**Escenario 1** Confección de minuta exitosa.  
>***Dado*** Pepito de CUIT 27.11.111.111.8, que comienza el 9/10/2024 con un contrato de tipo 1 por 2 meses y el monto es de $30.000.  
***Cuando*** el empleado de mesa ingresa los datos y presiona *Confeccionar minuta*  
***Entonces*** el sistema confecciona la minuta de la persona a contratar y queda al pendiente de su aprobación.  

**Escenario 2** Falla en la confección de minuta por superar el monto.  
>***Dado*** Pepito de CUIT 27.11.111.111.8, que comienza el 9/10/2024 con un contrato de tipo 1 por 2 meses y el monto es de $30.000.  
***Cuando*** el empleado de mesa ingresa los datos y presiona *confeccionar minuta*  
***Entonces*** el sistema informa que el monto supera al máximo permitido y verifique los datos.  

**Escenario 3** Falla en la confección de minuta por duración mayor al permitido.  
>***Dado*** Pepito de CUIT 27.11.111.111.8, que comienza el 9/10/2024 con un contrato de tipo 1 por 2 meses y el monto es de $30.000.    
***Cuando*** el empleado de mesa ingresa los datos y presiona *confeccionar minuta*  
***Entonces*** el sistema informa que la duración supera al máximo permitido y verifique los datos.  

***

**ID:** mostrar los datos de una minuta para su aprobación.  
**Titulo:** como empleado de rendiciones quiero aprobar una minuta para poder contratar a una persona.  
**Reglas de negocio:**  la persona no puede tener más de 3 contratos vigentes.  

**Criterios de aceptación**  
**Escenario 1** La minuta existe y tiene menos de 3 contratos.
>***Dado*** la minuta con el codigo 123 que existe, y la persona tiene 2 contratos vigentes.  
***Cuando*** el empleado de rendiciones ingresa el codigo 123.      
***Entonces***  el sistema muetra los datos, envía un token y el CUIT al sistema de la AFIP para verificar el CUIT.    

**Escenario 2** La minuta no existe.  
>***Dado*** la minuta con el codigo  no existe.  
***Cuando*** el empleado de rendiciones ingresa el codigo 123.  
***Entonces*** el sistema informa que la minuta no existe y verifique el codigo ingresado.  

**Escenario 3** La minuta existe pero excede el máximo de contratos permitidos.  
>***Dado*** la minuta con el codigo 123 que existe, y la persona tiene 3 contratos vigentes.  
***Cuando*** el empleado rendiciones ingresa el código 123.  
***Entonces*** el sistema informa que la minuta no puede ser aprobada por contar con 3 contratos vigentes.  


***


**ID:** aprobación de la minuta.  
**Titulo:** como empleado de rendiciones quiero verificar el CUIT con el servidor del AFIP para poder aprobar una minuta.  
**Reglas de negocio:** el token es correcto.  (el token puede ser incorrecto si lo manda un sistema??? pq se equivocaría el sistema¿)

**Criterios de aceptación**  
**Escenario 1** Minuta aprobada.
>***Dado*** el token 'zzz' correcto y el CUIT 27.11.111.111.8. está habilitado  
***Cuando*** el sistema envía el token 'zzz' y el cuit 27.11.111.111.8.  
***Entonces*** el servidor responde que el CUIT está habilitado y el sistema aprueba la minuta.  

**Escenario 2** Minuta desaprobada porque el cuit esta inhabilitado.  
>***Dado*** el token 'zzz' correcto y el CUIT 27.11.111.111.8. no está habilitado  
***Cuando*** el sistema envía el token 'zzz' y el cuit 27.11.111.111.8.  
***Entonces*** el servidor responde que el CUIT está inhabilitado y el sistema no aprueba la minuta.  

**Escenario 3** Minuta desaprobada porque el token es incorrecto (?¿?).  
>***Dado*** el token 'zzz' incorrecto y el CUIT 27.11.111.111.8.  
***Cuando*** el sistema envía el token 'zzz' y el CUIT 27.11.111.111.8.  
***Entonces*** el servidor responde que el token es incorrecto y el sistema se queda tildado ni idea  

***


**ID:** imprimir listados.  
**Titulo:** como empleado de rendiciones quiero imprimir los listados con el personal contratado para poder dárselo al jefe del departamento para que lo firme.  

**Criterios de aceptación**
**Escenario 1** se imprime el listado con éxito.  
>***Dado*** existe al menos 1 persona contratada.  
***Cuando*** el empleado de rendiciones presiona *Imprimir*  
***Entonces*** el sistema imprime el listado del personal contratado.  

**Escenario 2** no se imprime el listado porque no hay personal contratado.  
>***Dado*** no existe ninguna persona contratada.  
***Cuando*** el empleado de rendiciones presiona *imprimir*  
***Entonces*** el sistema no imprime e informa que no hay personal contratado.  

***

