


program oficina;
type
	reclamo = record
		tipo, dni, anio, codigo : integer;
	end;
	
	lista = ^nodo;
	nodo = record
		dato : reclamo;
		sig : lista;
		end;
		
	regArbol = record
		reclamos : lista;
		cantReclamos, dni : integer;
		end;
	
	arbol = ^nodoArbol;
	nodoArbol = record
		dato : regArbol;
		HI : arbol;
		HD : arbol;
		end;
	
// ------------------ MODULO A ------------------
procedure crearArbol (var a : arbol);
	procedure leerReclamo (var r : reclamo);
	begin
		with r do begin
			codigo := random(10)-1; writeln('codigo ',codigo);
			if (codigo <> -1) then begin
				dni := random(10)+1; writeln('dni ',dni);
				anio := random(25)+ 2000; writeln('anio ', anio);
				tipo := random(5)+1; writeln('tipo ',tipo); writeln();
			end;
		end;
	end;
	
	procedure agregarAdelante(var l : lista; r : reclamo);
	var nue : lista;
	begin
		new(nue); nue^.dato := r; nue^.sig := l; l := nue;
	end;
	
	procedure insertar (var a : arbol; r : reclamo);
	var
		dato : regArbol;
	begin
		if (a = nil) then begin
			dato.reclamos := nil; 
			dato.cantReclamos := 1; 
			dato.dni := r.dni;
			
			new(a);
			a^.dato := dato;
			agregarAdelante(a^.dato.reclamos, r);
			a^.HI := nil; a ^.HD := nil;
		end
		else
			if (a^.dato.dni	= r.dni) then begin
				agregarAdelante(a^.dato.reclamos,r);
				a^.dato.cantReclamos := a^.dato.cantReclamos + 1;
			end
			else 
				if (r.dni < a^.dato.dni) then insertar(a^.HI,r)
				else insertar(a^.HD,r);
	end;
var
	r : reclamo;
begin
	leerReclamo(r);
	if (r.codigo <> -1) then begin
		insertar(a,r);
		crearArbol(a);
	end;
	
end;

function cantidadReclamos (a : arbol; dni : integer):integer;
begin
	if (a <> nil) then begin
		if (a^.dato.dni = dni) then 
			cantidadReclamos := a^.dato.cantReclamos
		else
			if (dni < a^.dato.dni) then cantidadReclamos := cantidadReclamos(a^.HI,dni)
			else cantidadReclamos := cantidadReclamos(a^.HD,dni);
	end
	else
		cantidadReclamos := 0;
end;


function contarEntreRangos (a : arbol; min, max : integer): integer;
begin
	if (a = nil) then
		contarEntreRangos := 0
	else
		if (a^.dato.dni >= min) and (a^.dato.dni <= max) then 
			contarEntreRangos := contarEntreRangos(a^.HI,min,max) + contarEntreRangos(a^.HD,min,max) + a^.dato.cantReclamos
		else
			if (a^.dato.dni < max) then contarEntreRangos := contarEntreRangos(a^.HD,min,max)
			else contarEntreRangos:=contarEntreRangos(a^.HI,min,max);
end;



//---------- MODULO D --------------------

procedure imprimirReclamosPorAnio (a : arbol; anio : integer);
	procedure imprimirReclamo ( r : reclamo);
	begin
		with r do begin
			writeln('codigo ',codigo,', dni: ',dni,'. Anio ',anio,' y tipo de reclamo: ',tipo);
		end;
	end;
	procedure imprimir (l : lista);
	begin
		if ( l <> nil) then begin
			if (l^.dato.anio = anio) then begin
				imprimirReclamo(l^.dato);
				imprimir(l^.sig);
			end;
		end;
	end;
begin
	if (a <>nil) then begin
		imprimir(a^.dato.reclamos);
		imprimirReclamosPorAnio(a^.HI,anio);
		imprimirReclamosPorAnio(a^.HD,anio);
	end
end;

var 
	a : arbol;
	anio, aux, min, max, dni1, dni2 : integer;

BEGIN
	randomize;
	// ------------------ MODULO A ------------------
	crearArbol(a);
	// ----------------- MODULO B -------------------
	
	write('DNI: '); readln(aux);
	writeln('Cantidad de reclamos: ', cantidadReclamos(a,aux));
	

	// ----------------- MODULO c -------------------
	write('DNI 1: ');readln(dni1); write('DNI 2: '); readln(dni2);
	if (dni1 < dni2) then begin
		min := dni1; 
		max := dni2;
	end  
	else begin
		min := dni2; max := dni1;
	end;
	writeln('cantidad de reclamos entre el dni ',min,' y el dni ',max,': ', contarEntreRangos(a,min,max)); writeln();
	
	// -------------- MODULO D --------------------
	
	write('Ingrese un anio para buscar: '); readln(anio); 
	imprimirReclamosPorAnio(a,anio);
	
	
END.

