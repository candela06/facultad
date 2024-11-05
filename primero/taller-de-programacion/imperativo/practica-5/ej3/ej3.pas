


program untitled;
type
	rango = 1..10;
	producto = record
		codigo,stock,precio : integer;
		rubro : rango;
		end;
	
	arbol = ^nodo;
	nodo = record
		dato : producto;
		HI : arbol;
		HD : arbol;
		end;
		
	regv = record
		codigo,rubro,stock : integer;
	end;
	vector = array [rango] of arbol;
	vector2 = array [rango] of regv;
	

// PROCESOS Y FUNCIONES


// MODULO A
procedure inicializarVector (var v : vector);
var i : byte;
begin
	for i:=1 to 10 do v[i] := nil;
end;





procedure leerProducto (var p : producto);
begin
	with p do begin
		codigo := random(51)- 1;
		if codigo <> -1 then begin
			rubro := random(10)+1;
			stock := random(500) + 1;
			precio := random(1000) + 20;
			writeln('[cod: ',codigo,', rubro: ',rubro,', stock: ',stock,', precio: $',precio,']');
		end
		else writeln('[codigo: ',codigo,']');
	end;
end;





procedure cargar (var v : vector);
	procedure agregar (var a : arbol; p : producto);
	begin
		if a = nil then begin
			new(a);
			a^.dato := p;
			a^.HD := nil; a^.HI := nil;
		end
		else if a^.dato.codigo = p.codigo then
			writeln('codigo ya agregado')
			else if p.codigo < a^.dato.codigo then agregar(a^.HI,p) else agregar(a^.HD,p);
	end;	
	
var p : producto;
begin
	leerProducto(p);
	while p.codigo <> -1 do begin
		agregar(v[p.rubro],p);
		leerProducto(p);
	end;
end;







// MODULO B


function existeCodigo(a : arbol; codigo : integer): boolean;
begin
	if a = nil then
		existeCodigo := false
	else
		if a^.dato.codigo = codigo then
			existeCodigo := true
		else if codigo < a^.dato.codigo then existeCodigo := existeCodigo(a^.HI,codigo) else existeCodigo := existeCodigo(a^.HD,codigo);
end;









// MODULO C

procedure calcularMaximos (v : vector; var v2 : vector2);
	function maximo (a:arbol): arbol;
	begin
		if a=nil then
			maximo := nil
		else 
			if a^.HD = nil then maximo := a else maximo := maximo(a^.HD);
	end;
var i : byte; aux : arbol;
begin
	for i := 1 to 10 do begin
		v2[i].rubro := i;
		aux := maximo(v[i]);
		if aux <> nil then begin
			v2[i].codigo := aux^.dato.codigo;
			v2[i].stock := aux^.dato.stock;
		end
		else begin
			v2[i].codigo := -1;
			v2[i].stock := 0;
		end;
	end;
end;








// MODULO D

procedure buscarEntreCodigos(v: vector; min, max: integer);
	function calcular (a: arbol; min, max : integer):integer;
	begin
		if a = nil then
			calcular := 0
		else
			if ((a^.dato.codigo >= min) and (a^.dato.codigo <= max)) then 
				calcular := calcular(a^.HI,min,max) + calcular(a^.HD,min,max) + 1
			else
				if a^.dato.codigo < min then calcular := calcular(a^.HD,min,max) else calcular:= calcular(a^.HI,min,max);
				
	end;
	
var i : byte;
begin
	writeln('cantidad de productos entre el codigo ', min, ' y el codigo ',max);
	for i := 1 to 10 do begin
		writeln('Rubro ',i,': ',calcular(v[i],min,max));
	end;
end;




// PROCESOS DE IMPRIMIR PARA VERIFICAR COSITAS
procedure imprimirVector(v: vector);
	procedure imprimirProducto(a:arbol);
	begin
		if a<>nil then begin
			imprimirProducto(a^.HI);
			writeln('	[cod: ',a^.dato.codigo,', rubro: ',a^.dato.rubro,', stock: ',a^.dato.stock,', precio: $',a^.dato.precio,']');
			imprimirProducto(a^.HD);
		end;
	end;
var i : byte;
begin
	for i:= 1 to 10 do begin
		writeln('Rubro: ',i,' ');
		if v[i] = nil then writeln('	vacio') else		imprimirProducto(v[i]);
	end;
end;


procedure imprimirVectorDos (v2 : vector2);
var i : byte;
begin
	for i:=1 to 10 do
		writeln('[cod: ',v2[i].codigo,', rubro: ',v2[i].rubro,', stock: ',v2[i].stock,']')
end;






var v : vector; cod1,cod2,min,max,aux_rubro,aux_codigo : integer; v2 : vector2;

BEGIN
	
	// ---------------- MODULO A -----------------------
	randomize;
	inicializarVector(v);
	cargar(v);
	
	imprimirVector(v);
	// ---------------------- MODULO B --------------
	writeln();
	
	write('rubro para buscar: '); readln(aux_rubro);
	write('codigo para buscar: '); readln(aux_codigo);
	
	if ((aux_rubro >= 1) and (aux_rubro <= 10)) then
		if existeCodigo(v[aux_rubro],aux_codigo) then writeln('¡El codigo existe para ese rubro!') else writeln('Lo siento, no existe el codigo para ese rubro')
	else
		writeln('Lo siento, no contamos con ese rubro...');
		
		
	// ---------------- MODULO C ---------------------
	
	writeln();
	calcularMaximos(v,v2);
	writeln('MAXIMOS');
	imprimirVectorDos(v2);
	
	
	//--------------------- MODULO D -----------------
	
	writeln();
	write('codigo 1: ');readln(cod1);
	write('codigo 2: ');readln(cod2);
	
	if cod1 < cod2 then begin
		min := cod1; max := cod2;
	end
	else begin min := cod2; max := cod1; end;
	
	buscarEntreCodigos(v,min,max);
END.

