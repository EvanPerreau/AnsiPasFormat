program Main;

uses
    ansipasformat;
begin
    SetColor(TColor.Green);
    SetFormat(TFormat.Italic);
    SetFormat(TFormat.Bold);
    SetFormat(TFormat.Underline);
    SetFormat(TFormat.Strikethrough);
    write('Hello, world!');
    Reset;
    writeln;
    SetColor(TColor.BackgroundCyan);
    write('Shah kebab dijon > all kebab');
    Reset;
    writeln;
    write(GetColor(TColor.Red)+'We can also apply color like this.');
    Reset;
    writeln;
end.