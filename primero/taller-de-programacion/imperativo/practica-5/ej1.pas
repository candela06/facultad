
program ej1;
const maxOficina = 300;
type
	oficina = record
		cod : integer;
		dni : integer;
		expensas : real;
	end;
	
	vector = array [1..maxOficina] of oficina;



procedure informarVector (v : vector; diml : integer);
var i : byte;
begin
	writeln();
	for i:= 1 to diml do begin
		with v[i] do begin
			writeln('codigo ',cod,', dni: ',dni,', $',expensas:0:2);
		end;
	end;
end;



// -------------------- MODULO A --------------------
procedure leerOficina ( var o : oficina);
begin
	with o do begin
		write('codigo: '); readln(cod);
		if (cod <> -1) then begin
			dni := random(99)+100; writeln('DNI: ', dni); 
			expensas := dni * (random(30)+1); writeln('expensas: $',expensas:0:2); 
		end;
	end;
end;



procedure cargarVector(var v : vector; var diml : integer);
var o : oficina;
begin
	leerOficina(o);
	while (dimL < 300) and (o.cod <> -1)do begin
		diml := diml + 1;
		v[diml] := o;
		leerOficina(o);
	end;
end;


// -------------------- MODULO B --------------------


procedure seleccion (var v : vector; diml : integer);
var
	i, j, pos : integer; 
	item : oficina;
begin
	if (diml > 0) then
		for i:= 1 to diml - 1 do begin
			pos := i;
			for j := i+1 to diml do 
				if v[j].cod < v[pos].cod then pos := j;
			
			item := v[pos];
			v[pos] := v[i];
			v[i] := item;
		end;
end;

// -------------------- MODULO C --------------------

function busquedaDicotomica(v: vector; codigo, pri, fin: integer): integer;
var
  medio: integer;
begin
  if pri > fin then
    busquedaDicotomica := 0  // Caso base: no se encontró el elemento
  else begin
    medio := (pri + fin) div 2;  // Calcula el punto medio
    if v[medio].cod = codigo then
      busquedaDicotomica := medio  // Caso base: se encontró el código
    else if codigo < v[medio].cod then
      busquedaDicotomica := busquedaDicotomica(v, codigo, pri, medio - 1)  // Buscar en la primera mitad
    else
      busquedaDicotomica := busquedaDicotomica(v, codigo, medio + 1, fin);  // Buscar en la segunda mitad
  end;
end;

// -------------------- MODULO D --------------------
function montoTotal (v : vector; diml : integer): real;
begin
	if diml > 0 then 
		montoTotal:= v[diml].expensas + montoTotal(v,diml-1)
	else 
		montoTotal := 0;
end;


// -------------------- PROGRAMA PRINCIPAL --------------------
var 
	v : vector;
	id, pri,pos, diml : integer;


BEGIN
	randomize;
	diml := 0;
	// -------------------- MODULO A --------------------
	cargarVector(v,diml);
	informarVector(v,diml);
	// -------------------- MODULO B --------------------
	seleccion(v,diml);
	informarVector(v,diml);
	
	// -------------------- MODULO C --------------------
	pri := 1;
	write('codigo identificador: '); readln(id);
	pos := busquedaDicotomica(v,id,pri,diml);
	if pos <> 0 then writeln(v[pos].dni) else writeln('la oficina no existe');
	
	// -------------------- MODULO D --------------------
	writeln();
	writeln('monto total: $', montoTotal(v,diml):0:2);
	
END.

