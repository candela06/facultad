#### problema 6 : biblioteca

##### **Roles**  
- alumno  
- socio habilitado  
- bibliotecaria  

##### **HU**
- carga de libro    
- asociar alumno  
- prestar libro  
- retornar un libro  
***

**(frente)**  
**ID:** cargar un libro.  
**Título:** como bibliotecaria quiero cargar un libro en el sistema para poder ser préstado.  
**Reglas de negocio:**

**Criterios de aceptación(dorso)**

**Escenario 1:** *Carga exitosa del libro*  
>***Dado*** el libro nro 2.  
***Cuando*** la bibliotecaria solicita cargar el libro nro 2.  
***Entonces*** el sistema registra la carga del libro y lo informa con éxito.  

no sé si hacer un escenario de éxito dos para actualizar la cantidad de versiones disponibles para ese título.  
***
**(frente)**  
**ID:** asociar un alumno.  
**Título:** como alumno quiero asociarme para poder retirar un libro.    
**Reglas de negocio:**  

**Criterios de aceptación (dorso)**  

**Escenario 1:** *alumno asociado exitosamente*  
>***Dado*** el dni 11111111 no registrado, y que se cuenta con certificado de alumno regular   
***Cuando*** el alumno presenta el dni 11111111 y el certificador de alumno regular  
***Entonces*** el sistema registra al alumno y le asigna un número de socio  

**Escenario 2:** *fallo al asociar un alumno por dni registrado*  
>***Dado*** el dni 11111111 ya registrado.   
***Cuando*** el alumno presenta el dni 11111111 y el certificador de alumno regular  
***Entonces*** el sistema rechaza al alumno e informa que el dni ya se encuentra registrado  

no sé si hacer un escenario para el certificado de alumno regular...   

***
**(frente)**  
**ID:** prestar un libro  
**Título:** como socio habilitado quiero recibir un prestamo de un libro para poder leerlo  
**Reglas de negocio:** no poseer másd e 3 préstamos vigentes, no contar con préstamos vencidos y el libro debe estar en buen estado.  

**Criterios de aceptación(dorso)**  

**Escenario 1:** *Préstamo de libro exitoso*  
>***Dado*** que tenga 1 préstamo vigente, no cuente con préstamos vencidos y el libro nro 2 se encuentre en buen estado.  
***Cuando*** se solicita el libro nro 2 en buen estado, tiene 1 préstamo vigente y no cuenta con préstamos vencidos.  
***Entonces*** el sistema registar el préstamo y lo informa con éxito.  

**Escenario 2:** *fallo en el préstamo del libro por contar con más de 3 préstamos vigentes*  
>***Dado*** que se tengan más de 3 préstamos vigentes.    
***Cuando*** se solicita un libro en buen estado, tiene más de 3 préstamos vigentes y no cuenta con préstamos vencidos.  
***Entonces*** el sistema rechaza la solicitud e informa que se cuenta con más de 3 préstamos vigentes.  

**Escenario 3:** *fallo en el préstamo del libro por contar con un préstamo vencido*  
>***Dado*** que se cuenta con un préstamo vencido.    
***Cuando*** se solicita el libro nro 2 en buen estado, tiene 1 préstamo vigente y cuenta con un préstamo vencido.  
***Entonces*** el sistema rechaza la solicitud e informa que se cuenta con un préstamo vencido.    

**Escenario 4:** *fallo en el préstamo del libro por no contar con uno en buen estado*  
>***Dado*** que el libro nro 2 no posee ninguna versión en buen estado
***Cuando*** se solicita el libro nro 2, tiene 1 préstamo vigente y no cuenta con préstamos vencidos.  
***Entonces*** el sistema rechaza la solicutd del préstamo e informa que no se cuenta con alguna versión en buen estado.  

**Escenario 5:** *fallo en el préstamo del libro por no contar con el libro en el sistema*  
>***Dado*** que el libro nro 2 no se encuentra registrado en el sistema.  
***Cuando*** se solicita el libro nro 2 en buen estado, tiene 1 préstamo vigente y no cuenta con préstamos vencidos.  
***Entonces*** el sistema rechaza la solicitud e informa que no se cuenta con ese libro en el sistema.   

***

**(frente)**
**ID:** retorna un libro.  
**Título:** como socio quiero devolver un libro para poder actualizar mi situación con la biblioteca.  
**Reglas de negocio:** el préstamo no debe estar vencido.  

**Criterios de aceptación(dorso)**

**Escenario 1:** *devolución del libro exitoso.*  
>***Dado*** el préstamo nro 1 no se encuentra vencido.  
***Cuando*** el socio devuelve el libro nro 1.  
***Entonces*** el sistema registra la devolución, actualiza los datos del socio y lo informa con éxito.  

**Escenario 2:** *devolución del libro fallido.*  
>***Dado*** el préstamo nro 1 se encuentra vencido.  
***Cuando*** el socio devuelve el libro nro 1.  
***Entonces*** el sistema registra la devolución, actualiza los datos del socio e informa que no podrá solicitar libros en 15 días.  

***
