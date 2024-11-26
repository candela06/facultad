#### Problema 5 : Casa de fotografía



##### **HU**
- registrarse.
- Pagar con tarjeta de credito.
- retirar fotos.

***
**(frente)**  
**ID:** registro de usuario.
**Título:** como cliente quiero registrarme en el sitio para poder subir fotos.
**Reglas de negocio:** som nombre de usuario unico.

**Criterios de aceptación (dorso)**  
>**Ecenario 1** *Registro exitoso* <br>
**Dado** el nombre de usuario charmy no se encuentra registrado  
**cuando** el cliente ingresa Candela silva, cande@gmail.com, domicilio X, nombre de usuario charmy ycontraseña abcde759  
**entonces** el sistema registra al usuario y lo informa con éxito.  


>**Ecenario 2** *Falla del registro por usuario ya en uso*  <br>
 **Dado** que el nombre de usuario charmy se encuentra registrado  
**cuando** el cliente ingresa nombre "candela", apellido "silva", mail "cande@gmail.com", domicilio "X", nombre de usuario "charmy" y contraseña "abcde759  
**entonces** el sistema informa que el nombre de usuario ya se encuentra en uso y que no se pudo realizar el registro.

***

**(frente)**  
**ID:** Iniciar sesión  
**Título:** como usuario registrado quiero iniciar sesión para poder subir mis fotos.
**Reglas de negocio:** el usuario debe estar registrado.


**Criterios de aceptación (dorso)**  
>**Escenario 1:** *Inicio de sesión exitoso*<br>
**dado** que las credenciales son correctas.
**cuando** el usuario ingresa nombre de usuario "charmy", la contrseña "abcde759" y presiona "iniciar sesion"  
**entonces** el sistema inicia sesión y lo informa con éxito.  

>**Escenario 2:** *Inicio de sesión fallido*<br>
**dado** que las credenciales son incorrectas.
**cuando** el usuario ingresa nombre de usuario "charmy", la contrseña "abcde759" y presiona "iniciar sesion"  
**entonces** el sistema no inicia sesión e informa el error.

***

**(frente)**  
**ID:** cerrar sesión
**Título:** como usuario autenticado quiero cerrar sesión
**Reglas de negocio:**

**Criterios de aceptación (dorso)**  
>**Escenario 1:** *cierre de sesión exitoso*
**dado** el usuario "charmy" con la sesión iniciada  
**cuando** el usuario selecciona la opción cerrar sesión 
**entonces** el sistema cierra la sesión del usuario y lo redirige a la pantalla de inicio de sesión.  

***
**(frente)**  
**ID:** subir foto  
**Título:** como usuario autenticado quiero subir fotos para poder retirarlas
**Reglas de negocio** subir una foto a la vez, 50 fotos como máximo.  

**Criterios de aceptación (dorso)**  

>**Escenario 1:** *Éxito en subir la foto"<br>  
**dado** el usuario está subiendo una sola foto, y lleva 40 fotos subidas  
**cuando** el usuario selecciona la foto nro 41 y presiona el boton "cargar foto"
**entonces** el sistema sube la foto con éxito y lo informa.  

>**Escenario 2:** *fallo al subir la foto por superar el máximo permitido*  <br>
**dado** que el usuario lleva 50 fotos subidas  
**cuando** el usuario selecciona la foto nro 51 y presiona el boton "cargar foto"
**entonces** el sistema no carga la foto e informa que ya se alcanzó el máximo permitido.

>**Escenario 3:** *fallo al subir la foto por subir más de una foto a la vez*  <br>
**dado** el usuario está subiendo más de una foto.
**cuando** el usuario selecciona las fotos nro 41 y 42 y presiona el boton "cargar foto"
**entonces** el sistema no carga las fotos e informa que solo se pueden subir una foto a la vez.

***

**(frente)**  
**ID:** pagar con tarjeta de crédito
**Título:** como usuario autenticado quiero pagar con tarjeta de crédito para poder retirar las fotos
**Reglas de negocio:**

**Criterios de aceptación (dorso)**

**Escenario 1:** *pago exitoso* <br>
>***Dado*** que la conexión con el banco es exitoso, el numero "123456" corresponde a una tarjeta de crédito y esta tiene saldo  
***Cuando*** el usuario ingresa el numero de tarjeta "123456" y presiona el botón "pagar"  
***Entonces*** el sistema registra el pago y le enseña el codigo único.  

**Escenario 2:** *Fallo en el pago por numero de tarjeta inválido* <br>
>***Dado*** que la conexión con el banco es exitoso, el numero "123456" no corresponde a una tarjeta de crédito.  
***Cuando*** el usuario ingresa el numero de tarjeta "123456" y presiona el botón "pagar"  
***Entonces*** el sistema no registra el pago e informa que el numero no corresponde a una tarjeta de crédito.

**Escenario 3:** *Fallo en el pago por falla de conexión con el servidor del banco* <br>
>***Dado*** que no se pudo establecer una conexión con el servidor externo del banco.  
***Cuando*** el usuario ingresa el numero de tarjeta "123456" y presiona el botón "pagar"  
***Entonces*** el sistema no registra el pago e informa que hubo un error de conexión.    

**Escenario 4:** *Fallo en el pago por fondos insuficientes* <br>
>***Dado*** que la conexión con el banco es exitoso, el numero "123456" corresponde a una tarjeta de crédito y esta no tiene saldo suficiente.   
***Cuando*** el usuario ingresa el numero de tarjeta "123456" y presiona el botón "pagar"  
***Entonces*** el sistema no registra el pago e informa que la tarjeta no cuenta con saldo suficiente.  

***
**(frente)**  
**ID:** registrar codigo.
**Títlo:** como empleado quiero registrar el codigo único del cliente para poder entregarle las fotos.  
**Reglas de neegocio:**


**Criterios de aceptación (dorso)**  

**Escenario 1:** *entrega de fotos exitosa* <br>
>***Dado*** el codigo es válido.  
***Cuando*** el empleado ingresa el codigo, fecha de retiro y presiona el botón "registrar"
***Entonces*** el sistema registra el codigo y lo informa con éxito.  

**Escenario 1:** *entrega de fotos exitosa* <br>
>***Dado*** el codigo ya fue registrado.  
***Cuando*** el empleado ingresa el codigo, fecha de retiro y presiona el botón "registrar"
***Entonces*** el sistema rechaza el codigo e informa que el código ya fue utilizado.  

**Escenario 1:** *entrega de fotos exitosa* <br>
>***Dado*** el codigo es inválido.  
***Cuando*** el empleado ingresa el codigo, fecha de retiro y presiona el botón "registrar"
***Entonces*** el sistema rechaza el codigo e informa que el código ingresado es inválido.  

***