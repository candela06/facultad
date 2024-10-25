#### Problema 2: Postgrado  

###### **ROLES**  
- empleado administrativo  
- alumnos no registrados  
- alumnos registrados  

###### **HU**  
- cargar carreras  ✔
- registarses  ✔
- inscribirse a una materia  ✔
- pagar con tarjeta  ✔
- iniciar sesión ✔
- cerrar sesión  ✔

***
**ID:** cargar carreras  
**Titulo:** como empleado administrativo quiero cargar las carreras para que los alumnos se puedan inscribir  
**Reglas de negocio:** no se puede repetir el código y puede durar hasta 5 años.  

**Criterios de aceptación**  
**Escenario 1** carga exitosa de la carrera  
>***Dado*** la carrera Lic. Sistemas que dura 5 años y no se encuentra registrada, la cual cuesta $250.000 pesos y que se puede pagar hasta en 6 cuotas.  
***Cuando*** el empleado administrativo completa los datos para cargar la carrera y pulse *cargar*  
***Entonces*** el sistema carga la carrera al sistema.  

**Escenario 2** falla en la cara de la carrera por nombre repetido  
>***Dado*** la carrera Lic. Sistemas que dura 5 años y se encuentra registrada, la cual cuesta $250.000 pesos y que se puede pagar hasta en 6 cuotas.  
***Cuando*** el empleado administrativo completa los datos para cargar la carrera y pulsa *cargar*  
***Entonces*** el sistema no carga la carrera e informa que ya existe una carrera con ese nombre.  

**Escenario 3** falla en la carga de la carrera por estar fuera del límite de duración.  
>***Dado*** la carrera Lic. Sistemas que dura 7 años y no se encuentra registrada, la cual cuesta $250.000 pesos y que se puede pagar hasta en 6 cuotas.  
***Cuando*** el empleado administrativo completa los datos para cargar la carrera y pulsa *cargar*  
***Entonces*** el sistema no carga la carrera e informa que la duración excede al máximo permitido.  



***
**ID:** Iniciar sesión  
**Titulo** como alumno quiero iniciar sesión para poder inscribirme a una carrera.  
**Reglas de negocio:** el alumno debe estar registrado en el sistema.  

**Criterios de aceptación**  
**Escenario 1** Inicio de sesión exitoso.  
>***Dado*** el usuario pepito123 se encuentra registrado con la contraseña 1234567.  
***Cuando*** el alumno Pepito Silva completa los datos y presiona *iniciar sesión*  
***Entonces*** el sistema inicia sesión del usuario pepito123  

**Escenario 2** Falla en inicio de sesión.  
>***Dado*** el usuario registrado y credenciales inválidas.   
***Cuando*** el alumno Pepito ingresa los datos y presiona *inciar sesión*  
***Entonces*** el sistema no inicia sesión e informa que las credenciales son inválidas e intente de nuevo.  

**Escenario 3** Flla de inicio de sesión por usuario no registrado.  
>***Dado*** el usuario pepito123 no se encuentra registrado.  
***Cuando*** el alumno Pepito ingresa nombre de usuario pepito123 y una contraseña y presiona *iniciar sesión*  
***Entonces*** el sistema no inicia sesión e informa que el usuario no existe.  



***
**ID:** registro del alumno  
**Titulo:**  como alumno quiero registrarme en el sistema para poder inscribirme a la carrera deseada.  
**Reglas de negocio:** nombre de usuario único y contraseña de m+as de 6 dígitos.  

**Criterios de aceptación**  
**Escenario 1** Registro exitoso del alumno.  
>***Dado*** Pepito Silva, nombre de usuario: pepito123 y contraseña 1234567 que no se encuentra registrado.   
***Cuando*** el usuario Pepito Silva completa los datos con su nombre, apellido, usuario pepito123 y contraseña 1234567 y presiona *registrar*   
***Entonces*** el sistema registro al usuario en el sistema.  

**Escenario 2** falla en el registro de usuario por nombre de usuario ya en uso.  
>***Dado*** Pepito Silva, nombre de usuario: pepito123 y contraseña 1234567 que se encuentra registrado.
***Cuando*** el usuario Pepito Silva completa los datos con su nombre, apellido, usuario pepito123, contraseña 1234567 y presiona *Registrar*  
***Entonces*** el sistema no registra al usuario e informa que el nombre de usuario ya está en uso y pruebe con otro.  

**Escenario 3** falla en el registro de usuario por contraseña con menos de 6 dígitos.  
>***Dado*** Pepito Silva, nombre de usuario: pepito123 y contraseña 12345 que no se encuentra registrado.  
***Cuando*** el usuario Pepito Silva completa los datos con su nombre, apellido, usuario pepito123, contraseña 12345 y presiona *Registrar*  
***Entonces*** el sistema no registra al usuario e informa que la contrseña debe tener más de 6 dígitos y pruebe con otra.  

***

**ID:** Inscribirse a una carrera  
**Titulo** como alumnos logueado quiero inscribirme a una carrera  
**Reglas de negocio:** ?? andá a saber  

**Criterios de aceptación**  
**Escenario 1** Inscripción exitosa a la carrera.  
>***Dado*** el alumno logueado, la carrera Lic. Sistemas que se encuentra cargada en el sistema y se paga en 5 cuotas.  
***Cuando*** el alumno logueado selecciona la carrera Lic. Sistemas que se encuentra cargada en el sistema y pagar en 5 cuotas.  
***Entonces*** el sistema dirige al alumno a la sección de cobro.  

**Escenario 2**  falla en la inscripción porque la carrera no se encuentra en el sistema.  
>***Dado*** el alumno logueado, la carrera Lic. Sistemas que no se encuentra cargada en el sistema y se paga en 5 cuotas.  
***Cuando*** el alumno logueado completa los datos con la carrera Lic. Sistemas y pagar en 5 cuotas.  
***Entonces*** el sistema informa que la carrera no se encuentra en el sistema y que pruebe con otra.  

**Escenario 3** Falla en la inscripción a la carrera por exceso de cuotas permitidas.  
>***Dado*** el alumno logueado, la carrera Lic. Sistemas que se encuentra cargada en el sistema y se paga en 8 cuotas.  
***Cuando*** el alumno logueado completa los datos con la carrera Lic. Sistemas y pagar en 8 cuotas.  
***Entonces*** el sistema informa que el número de cuotas excede al máximo permitido y que ingrese otras.  

***
**ID** Pagar con tarjeta  
**Titulo** como alumno logueado quiero pagar la inscripción a la carrera  
**Reglas de negocio** número de la tarjeta válida y fondos suficientes  

**Criterios de aceptación**  
**Escenario 1:** Pago exitoso de la inscripción.  
>***Dado***  la conexión de banco es estable, el numero 123 corresponde a una tarjeta de crédito y tiene suficiente saldo.  
***Cuando*** el alumno logueado ingresa el numero de la tarjeta 123 y presiona *pagar*  
***Entonces*** el sistema inscribe al alumno en la carrera q imprime un comprobante de inscripción y otro de pago.  

**Escenario 2:** Fallo en el pago de la inscripción por tarjeta inválida.  
>***Dado*** la conexión de banco es estable, el numero 123 no corresponde a una tarjeta de crédito y tiene suficiente saldo.  
***Cuando*** el alumno ingresa el numero de tarjeta 123 y presiona *pagar*  
***Entonces*** el sistema informa un error porque el numero de tarjeta no es válido, no imprime ningún comprobante ni inscribe al alumno a la carrera, pide que se intente con otro número que sí corresponda.  

**Escenario 2:** Fallo en el pago de inscripción por fondos insuficientes.  
>***Dado*** la conexión de banco es estable, el numero 123 corresponde a una tarjeta de crédito y no tiene suficiente saldo.  
***Cuando*** el alumno ingresa el numero de tarjeta 123 y presiona *Pagar*  
***Entonces*** el sistema informa que la inscripción no se pudo concretar por fallo en el pago.  

**Escenario 3:** Fallo en el pago de inscripción por conexión con el servidor del banco inestable.  
>***Dado*** la conexión de banco es inestable, el numero 123 corresponde a una tarjeta de crédito y tiene suficiente saldo.  
***Cuando*** el alumno ingresa el numero de tarjeta 123 y presiona *Pagar*  
***Entonces*** el sistema informa que la inscripción no se llevó a cabo por fallo de conexión.  

***

**ID:** cierre de sesión.  
**Titulo:** como alumno logueado quiero cerrar sesión  

**Criterios de aceptación**  
**Escenario 1** cierre de sesión exitoso.  
>***Dado*** el usuario pepito123 tiene la sesión activa.  
***Cuando*** el alumno Pepito Silva presiona el boton *cerrar sesión*  
***Entonces*** sistema cierra sesión del usuario.  
***