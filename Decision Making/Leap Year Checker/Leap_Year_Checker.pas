program AnnéeBissextile;

function estBissextile(annee: Integer): Boolean;
begin
    if (annee mod 4 = 0) then
        if (annee mod 100 = 0) then
        if (annee mod 400 = 0) then
            estBissextile := True
        else
            estBissextile := False
        else
        estBissextile := True
    else
        estBissextile := False;
end;

var
    annee: Integer;
begin
    writeln('Entrez une année : ');
    readln(annee);

    if estBissextile(annee) then
        writeln(annee, ' est une année bissextile.')
    else
        writeln(annee, ' n''est pas une année bissextile.');
end.
