#### Problema 4: venta de bebidas.  

###### **ROLES**  
- clientes.  

###### **HU**  
- registro de clientes.  
- inicio de sesión  
***

**ID:** Registro de clientes  
**Titulo:** como persona quiero registrarme para poder comprar bebidas.  
**Reglas de negocio:** mail único, ser mayor a 18 años.  

**Criterios de aceptación**  
**Escenario 1** Registro exitoso.  
>***Dado*** Pepito Silva de 23 años y el mail pepito@gmail.com no está registrado.  
***Cuando*** Pepito Silva completa con sus datos y presiona *registrar*  
***Entonces*** el sistema genera una contraseña que es enviada al mail ingresado en el registro.  

**Escenario 2** Falla en el registro por mail  ya registrado.  
>***Dado*** Pepito Silva de 23 años y el mail pepito@gmail.com ya registrado.  
***Cuando*** la persona completa con sus datos y presiona *registrar*  
***Entonces*** el sistema informa que el mail ya está registrado y pruebe con otro.  

**Escenario 3** Falla en el registro por ser menor a 18 años.  
>***Dado*** Pepito Silva de 15 años y el mail pepito@gmail.com no registrado.  
***Cuando*** Pepito Silva de 15 años y el mail pepito@gmail.com no registrado ingresa los datos y presiona *registrar*    
***Entonces*** el sistema no registra a la persona e informa la ley que impide la venta de bebidas alcohólicas a menores.  


***

**ID:** iniciar sesión.  
**Titulo:** como usuario quiero iniciar sesión para comprar bebidas.  

**Criterios de aceptación**  
**Escenario 1** inicio de sesión exitoso.  
>***Dado*** pepito@gmail.com y la contraseña es correcta.  
***Cuando*** el usuario completa los datos y presiona *iniciar sesión*  
***Entonces*** el sistema inicia sesión.  

**Escenario 2** Falla en inicio de sesión por credenciales incorrectas.  
>***Dado*** que las credenciales son incorrectas.  
***Cuando*** el usuario completa con los datos y presiona +iniciar sesión*  
***Entonces*** el sistema informa que no se pudo iniciar sesión por credenciales incorrectas y verifique los datos ingresados.  

***

**ID:** comprar bebidas.  
**Titulo:** como usuario logueado quiero comprar bebidas para poder pegarmela.  
**Reglas de neogcio:**

**Criterios de aceptación**  
>***Dado***
***Cuando***
***Entonces***