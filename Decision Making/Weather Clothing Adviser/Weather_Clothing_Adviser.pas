program ConseilVetement;

var
    temperature: Integer;
    reponse: Char;
    isRaining: Boolean;

begin
    writeln('Entrez la température actuelle (en degrés Celsius) : ');
    readln(temperature);

    writeln('Est-ce qu''il pleut actuellement ? (o/n) : ');
    readln(reponse);

    case reponse of
        'o', 'O': isRaining := True;
        'n', 'N': isRaining := False;
    else
        begin
            writeln('Réponse invalide. Utilisez ''o'' pour oui et ''n'' pour non.');
            exit;
        end;
    end;

    if (temperature > 30) then
    begin
        writeln('Il fait chaud.');
        if isRaining then
            writeln('Portez des vêtements légers et prenez un parapluie.')
        else
            writeln('Portez des vêtements légers et des lunettes de soleil.');
    end
    else if (temperature > 25) and (temperature <= 30) then
    begin
        writeln('Il fait modérément chaud.');
        if isRaining then
            writeln('Portez des vêtements légers et une veste imperméable.')
        else
            writeln('Portez des vêtements légers.');
    end
    else if (temperature > 15) and (temperature <= 20) then
    begin
        writeln('Il fait frais.');
        if isRaining then
            writeln('Portez des vêtements chauds et une veste imperméable.')
        else
            writeln('Portez des vêtements chauds.');
    end
    else if (temperature > 5) and (temperature <= 15) then
    begin
        writeln('Il fait très froid.');
        if isRaining then
            writeln('Portez des vêtements très chauds, imperméables, et prenez un parapluie.')
        else
            writeln('Portez des vêtements très chauds.');
    end;
end.