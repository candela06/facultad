
program untitled;
type
	reclamo = record
	dni, anio, tipo, codigo : integer;
	end;
	
	lista = ^nodoLista;
	nodoLista = record
	dato : reclamo;
	sig : lista;
	end;
	
	Rarbol = record
	cant, dni : integer;
	reclamos : lista;
	end;
	
	arbol = ^nodoArbol;
	nodoArbol = record
	dato : Rarbol;
	HI, HD: arbol;
	end;
	
// procesos

// --------------- MODULO A ---------------

procedure leerReclamo (var r: reclamo);
begin
	with r do begin
		codigo := random(50)-1; writeln('codigo: ',codigo);
		if (codigo <> -1) then begin
			dni := random(10)+1; writeln('dni: ',dni);
			anio := random(25)+2000; writeln('anio: ',anio);
			tipo := random(5)+1;
		end;
	end;

end;
procedure crear (var a: arbol);
	procedure agregar (var a: arbol; r : reclamo);

		procedure agregarAdelante (var l : lista; r: reclamo);
		var nue : lista;
		begin
			new(nue); nue^.dato := r; nue ^.sig := l; l := nue;
		end;		// fin del agregar adelante

	begin
		if (a = nil) then begin
			new(a);
			a^.dato.reclamos := nil;
			a^.dato.cant := 1;
			a^.dato.dni := r.dni;
			agregarAdelante(a^.dato.reclamos,r);
			a^.HI := nil; a^.HD := nil;
		end
		else if (r.dni = a^.dato.dni) then begin
			agregarAdelante(a^.dato.reclamos,r);
			a^.dato.cant := a^.dato.cant + 1;
		end
		else if (r.dni < a^.dato.dni) then agregar(a^.HI,r) else agregar(a^.HD,r);
	end; // fin del agregar

var
	r : reclamo;
begin
	leerReclamo(r);
	while (r.codigo <> -1) do begin
		agregar(a,r);
		writeln();
		leerReclamo(r);
	end;
end; //fin del crear

procedure imprimirArbol(a: arbol);

	procedure imprimirLista (l:lista);
	begin
		while (l <> nil) do begin
			writeln(' [Cod: ', l^.dato.codigo, ', Anio: ', l^.dato.anio, ', Tipo: ', l^.dato.tipo, '] ');
			l := l^.sig;
		end;
	end; //fin del imprimir lista
	
begin
    if a <> nil then
    begin
        imprimirArbol(a^.HI); 
        writeln();
        writeln('DNI: ', a^.dato.dni, ' - Cantidad de Reclamos: ', a^.dato.cant);
        writeln('Reclamos: ');
        imprimirLista(a^.dato.reclamos);
        
        imprimirArbol(a^.HD);  // Luego imprimimos el subárbol izquierdo
    end;
end;





// ---------- MODULO B ------------

function cantReclamos(a:arbol; dni: integer): integer;
begin
	if a = nil then cantReclamos := 0
	
	else 
		if a^.dato.dni = dni then cantReclamos := a^.dato.cant 
		
		else if dni < a^.dato.dni then cantReclamos := cantReclamos(a^.HI,dni) else cantReclamos := cantReclamos(a^.HD,dni);

end;


// ----------- MODULO C ---------------

function cantReclamosEntreDnis(a:arbol; min, max: integer): integer;
begin
	if a = nil then 
		cantReclamosEntreDnis := 0
		
	else begin
		if ((a^.dato.dni >= min) and (a^.dato.dni <= max)) then begin
			cantReclamosEntreDnis := cantReclamosEntreDnis(a^.HI,min,max) + cantReclamosEntreDnis(a^.HD,min,max) + a^.dato.cant;
		end
		
		else
			if a^.dato.dni > max then
				cantReclamosEntreDnis := cantReclamosEntreDnis(a^.HI,min,max)
			else
				cantReclamosEntreDnis := cantReclamosEntreDnis(a^.HD,min,max);
	end;
end;



// ------------- MODULO D -------------
procedure buscarPorAnio (a:arbol; anio : integer);
	procedure imprimirListaPorAnio(l:lista; anio: integer);
	begin
		while l <> nil do begin
			if l^.dato.anio = anio then
				writeln(' [Cod: ', l^.dato.codigo, ', Anio: ', l^.dato.anio, ', dni: ', l^.dato.dni, '] ');
			l := l^.sig;
		end;
	end;
begin
	if a <> nil then begin
		buscarPorAnio(a^.HI,anio);
		imprimirListaPorAnio(a^.dato.reclamos,anio);
		buscarPorAnio(a^.HD,anio);
	end;
end;

// programa principal

var a : arbol;
	aux, dni1, dni2, min, max, dni : integer;
	
BEGIN
	randomize;
	a := nil;
	// ------------- MODULO A -------------
	crear(a);
	imprimirArbol(a);
	
	// ---------- MODULO B -----------------
	
	writeln();
	write('Buscar reclamo para dni: '); readln(dni);
	writeln(cantReclamos(a,dni),' reclamos');
	
	// ---------- MODULO C -------------
	writeln();
	write('dni 1: '); readln(dni1);
	write('dni 2:'); readln(dni2);
	
	if (dni1 < dni2) then begin
		min := dni1;
		max := dni2;
	end
	else begin
		min := dni2;
		max := dni1;
	end;
	
	writeln(cantReclamosEntreDnis(a,min,max),' reclamos entre ',dni1,' y ',dni2);
	
	// ------------- MODULO D ------------------
	writeln();
	write('anio para buscar: '); readln(aux);
	buscarPorAnio(a,aux);
END.

