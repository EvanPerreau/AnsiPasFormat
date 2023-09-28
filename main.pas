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
    UnsetColor;
    writeln;
    SetColor(TColor.BackgroundCyan);
    write('Shah kebab dijon > all kebab');
    UnsetFormat;
    writeln;
    write(GetColor(TColor.Red)+'We can also apply color like this.');
    UnsetColor;
    writeln;
end.