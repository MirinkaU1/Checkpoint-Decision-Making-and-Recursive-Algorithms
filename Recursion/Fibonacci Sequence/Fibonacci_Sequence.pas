program sequenceDeFibonacci;

function fibonacci(n: Integer): Integer;
begin
    if n <= 0 then
        fibonacci := 0
    else if n = 1 then
        fibonacci := 1
    else
        fibonacci := fibonacci(n - 1) + fibonacci(n - 2);
end;

var
    n, resultat: Integer;
begin
    writeln('Entrez la valeur de n pour obtenir le nième nombre de Fibonacci :');
    readln(n);
    resultat := fibonacci(n);
    writeln('Le ', n, 'ième nombre de Fibonacci est : ', resultat);
end.
