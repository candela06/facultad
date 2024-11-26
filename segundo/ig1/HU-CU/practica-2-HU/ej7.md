#### Problema 7 : mutual  

##### **Roles**  
- persona.  
- afiliado.  
##### **HU**
- afiliar a una persona.  
- prestación de ortodoncia.  
- prestación de plantillas.  
- prestación de anteojos.  
- prestación de internación.  
- prestación de consulta médica.  

***
**(frente)**  
**ID:** afiliar a una persona.  
**TÍTULO:** como persona quiero afiliarme para poder solicitar un préstamo.  
**REGLAS DE NEGOCIO:** poseer una tarjeta de crédito válida.

**Criterios de aceptación(dorso)**  

**Escenario 1:** *persona afiliada exitosamente*  
>***Dado*** que el numero 123456 corresponde a una tarjeta de crédito y Candela no está afiliada.  
***Cuando*** Candela ingresa el numero de tajerta 123456.  
***Entonces*** el sistema registra a candela y lo redirige a la carga de su pareja e hijos menores de 18 años.

**Escenario 2:** *falla en la afiliación de la persona por tarjeta de crédito inválida*  
>***Dado*** que el numero 123456 no corresponde a una tarjeta de crédito.  
***Cuando*** Candela ingresa el numero de tajerta 123456.  
***Entonces*** el sistema rechaza a candela e informa que el numero no corresponde a una tarjeta de crédito.  

**Escenario 3:** *falla en la afiliación de la persona por ya encontrarse registrada*  
>***Dado*** que Candela ya se encuentra afiliada.  
***Cuando*** Candela ingresa el numero de tajerta 123456.  
***Entonces*** el sistema rechaza la solicitud e informa que ya se encuentra registrada en el sistema.  
***

**(frente)**  
**ID:** prestación de ortodoncia.  
**TÍTULO:** como afiliado quiero solicitar un préstamo para ortodoncia.  
**REGLAS DE NEGOCIO:**  debe estar asentado el pago del mes anterior, se puede solicitar solo una vez y menores de 15 años que estén afiliados desde al menos nueve meses y debe presentarse historia clínica elaborado por el profesional.  

**Criterios de aceptación(dorso)**  

**Escenario 1:** *Préstamo para ortodoncia exitoso*  
>***Dado***  que se asentó el pago del mes anterior, nunca se solicitó un préstamo, es menor a 15 y tiene más de 9 meses de antigüedad y tiene historia clínica elaborada por el profesional.  
***Cuando*** el afiliado solicita el préstamo y presenta historia clínica elaborada por el profesional.  
***Entonces*** el sistema registra el prestamo y lo informa con éxito.  

**Escenario 2:** *fallo en el préstamo para ortodoncia por no asentarse el pago del mes anterior*  
>***Dado***  que no se asentó el pago del mes anterior.  
***Cuando*** el afiliado solicita el préstamo y presenta historia clínica elaborada por el profesional.  
***Entonces*** el sistema rechaza el prestamo e informa que no se realizó el pago del mes anterior.    

**Escenario 3:** *fallo en el préstamo para ortodoncia por ya haber solicitado un préstamo*  
>***Dado***  que ya se solicitó el préstamo para ortdoncia.  
***Cuando*** el afiliado solicita el préstamo y presenta historia clínica elaborada por el profesional.  
***Entonces*** el sistema rechaza la solicitud e informa que ya se registró un préstamo para ortdoncia.   

**Escenario 4:** *fallo en el préstamo para ortdoncia por ser mayor a 15 años*  
>***Dado***  que el afiliado es mayor a 15 años.  
***Cuando*** el afiliado solicita el préstamo y presenta historia clínica elaborada por el profesional.  
***Entonces*** el sistema rechaza la solicitud e informa que el afiliado es mayor a 15 años.  

**Escenario 5:** *fallo en el préstamo para ortdoncia por contar con menos de 9 meses de antigüedad.*  
>***Dado***  que el afiliado tiene menos de 9 meses de antigüedad.  
***Cuando*** el afiliado solicita el préstamo y presenta historia clínica elaborada por el profesional.  
***Entonces*** el sistema rechaza el prestamo e informa que el afiliado no cuenta con al menos 9 meses de antigüedad.  

**Escenario 6:** *fallo en el préstamo para ortdoncia por no presentar historia clínica elaborada por el profesional*  
>***Dado*** que no se tiene historia clínica elaborada por el profesional.  
***Cuando*** el afiliado solicita el préstamo.  
***Entonces*** el sistema rechaza el prestamo e informa que falta presentar historia clínica elaborada por el profesional.  

***
**(frente)**  
**ID:** prestación de plantillas.  
**TÍTULO:** como afiliado quiero solicitar un préstamo para plantillas.  
**REGLAS DE NEGOCIO:** debe estar asentado el pago del mes anterior, dos por año, debe presentarse la indicación del profesional y factura del comercio que la confeccionó.  

**Criterios de aceptación(dorso)**  

**Escenario 1:** *préstamo para plantillas exitoso*    
>***Dado*** que se asentó el pago del mes anterior, se registro un sólo préstamo en el año, se tiene la indicación del profesional y la factura del comercio que la confeccionó.  
***Cuando*** el afiliado solicita el préstamo y presenta la indicación del profesional y factural del comercio que la confeccionó.  
***Entonces*** el sistema registra el préstamo y lo informa con éxito.  

**Escenario 2:** *fallo en el préstamo para plantillas por no asentarse el pago del mes anterior*    
>***Dado*** que no se asentó el pago del mes anterior.  
***Cuando*** el afiliado solicita el préstamo y presenta la indicación del profesional y factural del comercio que la confeccionó.  
***Entonces*** el sistema rechaza el préstamo e informa que no se asentó el pago del mes anterior.    

**Escenario 3:** *fallo en el préstamo para plantillas por tener dos préstamos registrados en el año*    
>***Dado*** que se registraron dos préstamos en el año.  
***Cuando*** el afiliado solicita el préstamo y presenta la indicación del profesional y factural del comercio que la confeccionó.  
***Entonces*** el sistema rechaza el préstamo e informa que ya se registraron dos préstamos en el año.  

**Escenario 4:** *fallo en el préstamo para plantillas por no contar con la indicación del profesional*    
>***Dado*** que no se tiene la indicación del profesional.  
***Cuando*** el afiliado solicita el préstamo y presenta la factural del comercio que la confeccionó.  
***Entonces*** el sistema rechaza el préstamo e informa que se debe presentar la indicación del profesional.  

**Escenario 5:** *fallo en el préstamo para plantillas por no contar con la factura del comercio que la confeccionó*    
>***Dado*** que no se tiene la factura del comercio que la confeccionó.  
***Cuando*** el afiliado solicita el préstamo y presenta la indicación del profesional.  
***Entonces*** el sistema rechaza la solicutd e informa que se debe presentar la factura del comercio que la confeccionó.  

***

**(frente)**  
**ID:** prestación de anteojos.  
**TÍTULO:** como afiliado quiero solicitar un préstamo para anteojos.  
**REGLAS DE NEGOCIO:** debe estar asentado el pago del mes anterior, fecha de afiliación superior a 3 meses, una cada 18 meses.  

**Criterios de aceptación(dorso)**  

**Escenario 1:** *préstamo para anteojos exitoso*   
>***Dado*** que se asentó el pago del mes anterior, la fecha de afiliación es superior a tres meses y no se registró un préstamo en los últimos 18 meses.  
***Cuando*** el afiliado solicita el préstamo.  
***Entonces*** el sistema registra el préstamo y lo informa con éxito.  

**Escenario 2:** *fallo en el préstamo para anteojos por no asentarse el pago del mes anterior*   
>***Dado*** que se asentó el pago del mes anterior.  
***Cuando*** el afiliado solicita el préstamo.  
***Entonces*** el sistema rechaza la solicitud e informa que no se asentó el pago del mes anterior.  

**Escenario 3:** *fallo en el préstamo para anteojos por no superar la fecha de afiliación por 3 meses*   
>***Dado*** que que la fecha de afiliación no superó los 3 meses.  
***Cuando*** el afiliado solicita el préstamo.  
***Entonces*** el sistema rechaza la solicitud e informa que la fecha de afiliación no supera los 3 meses.  

**Escenario 4:** *fallo en el préstamo para anteojos por tener registrado un préstamo en los últimos 18 meses*   
>***Dado*** que se tiene registrado un préstamo en los ultimos 18 meses.  
***Cuando*** el afiliado solicita el préstamo.  
***Entonces*** el sistema rechaza la solicitud e informa que se tiene registrado un préstamo en los últimos 18 meses.  
***

**(frente)**  
**ID:** prestación de internación.  
**TÍTULO:** como afiliado quiero solicitar un préstamo para poder internarme.  
**REGLAS DE NEGOCIO:** tener asentado el pago del mes anterior.  

**Criterios de aceptación(dorso)**  

**Escenario 1:** *préstamo para internación exitoso*  
>***Dado*** que se asentó el pago del mes anterior.  
***Cuando*** el afiliado solicita el préstamo.  
***Entonces*** el sistema registra el préstamo y lo informa con éxito.  

**Escenario 1:** *fallo en el préstamo para internación por no asentarse el pago del mes anterior*  
>***Dado*** que no se asentó el pago del mes anterior.  
***Cuando*** el afiliado solicita el préstamo.  
***Entonces*** el sistema rechaza la solicitud e informa que no se asentó el pago del mes anterior.  

***

**(frente)**  
**ID:** prestación de consultas médicas.  
**TÍTULO:** como afiliado quiero solicitar un préstamo para poder consultar al médico.  
**REGLAS DE NEGOCIO:** tener asentado el pago del mes anterior, 2 por mes.  

**Criterios de aceptación(dorso)**  

**Escenario 1:** *préstamo para consultas médicas exitoso*  
>***Dado*** que se asentó el pago del mes anterior y se tiene registrado menos de 2 préstamos en el mes.  
***Cuando*** el afiliado solicita el préstamo.  
***Entonces*** el sistema registra el préstamo y lo informa con éxito.  

**Escenario 1:** *fallo en el préstamo para consultas médicas por no asentarse el pago del mes anterior*  
>***Dado*** que se asentó el pago del mes anterior.  
***Cuando*** el afiliado solicita el préstamo.  
***Entonces*** el sistema rechaza el préstamo e informa que no se asentó el pago del mes anterior.  

**Escenario 1:** *fallo del préstamo para consultas médicas por tener registrado 2 préstamos en el mes*  
>***Dado*** que se tiene registrado 2 préstamos en el mes.  
***Cuando*** el afiliado solicita el préstamo.  
***Entonces*** el sistema rechaza el préstamo e informa que se ya se registraron 2 préstamos en ese mes.  