%ventas del primer semestre
ventas1erSem(mateo,21000).
ventas1erSem(javier,26000).
ventas1erSem(pedro,35600).
ventas1erSem(gustavo,17000).
ventas1erSem(dario,13000).
ventas1erSem(rodrigo,27000).
ventas1erSem(walter,24000).
ventas1erSem(gaston,10000).
ventas1erSem(nicolas,19000).
ventas1erSem(fabricio,15000).

%ventas del segundo semestre
ventas2doSem(mateo,22000).
ventas2doSem(javier,16000).
ventas2doSem(gustavo,17000).
ventas2doSem(dario,26000).
ventas2doSem(rodrigo,24000).
ventas2doSem(gaston,18000).
ventas2doSem(nicolas,14000).
ventas2doSem(esteban,36000).
ventas2doSem(julio,21600).
ventas2doSem(ignacio,18000).

%comisiones anuales de los vendedores
comisionAnual(Vendedor,Comision):-
    ventas1erSem(Vendedor,V1),
    ventas2doSem(Vendedor,V2),
    V1>20000,V2>20000,
    Comision is (V1+V2)/5.
comisionAnual(Vendedor,Comision):-
    ventas1erSem(Vendedor,V1),
    ventas2doSem(Vendedor,V2),
    V1=<20000,
    Comision is (V1+V2)/10.
comisionAnual(Vendedor,Comision):-
    ventas1erSem(Vendedor,V1),
    ventas2doSem(Vendedor,V2),
    V2=<20000,
    Comision is (V1+V2)/10.
comisionAnual(Vendedor,Comision):-
    ventas1erSem(Vendedor,V1),
    Comision is V1/20.
comisionAnual(Vendedor,Comision):-
    ventas2doSem(Vendedor,V2),
    Comision is V2/2.
comisionAnual(Vendedor,0).





