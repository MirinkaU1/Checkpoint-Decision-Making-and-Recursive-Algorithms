program puissanceDunNombre;

function puissance(nombre, exposant: Integer): Integer;
begin
    if exposant = 0 then
        puissance := 1
    else if exposant > 0 then
        puissance := nombre * puissance(nombre, exposant - 1)
    else
        writeln('Entrée invalide')
end;

var
    nombre, resultat, exposant: Integer;
begin
    writeln('Entrez le nombre :');
    readln(nombre);
    
    writeln('Entrez l''exposant :');
    readln(exposant);
    
    resultat := puissance(nombre, exposant);
    
    writeln(nombre, ' ^ ', exposant, ' = ', resultat);
end.