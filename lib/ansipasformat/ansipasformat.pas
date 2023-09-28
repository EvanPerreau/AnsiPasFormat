{Create by Evan Perreau https://dev-boost.fr}
unit AnsiPasFormat;

{$mode objfpc}{$H+}

interface

uses
    SysUtils;

type
    TFormat = (ResetF, Bold, Italic, Underline, Strikethrough);

    TColor = (ResetC, Black, Red, Green, Yellow, Blue, Purple, Cyan,
    White, BackgroundBlack, BackgroundRed, BackgroundGreen, BackgroundYellow,
    BackgroundBlue, BackgroundPurple, BackgroundCyan, BackgroundWhite, HighIntensityBlack,
    HighIntensityRed, HighIntensityGreen, HighIntensityYellow, HighIntensityBlue, HighIntensityPurple,
    HighIntensityCyan, HighIntensityWhite, HighIntensityBackgroundBlack, HighIntensityBackgroundRed,
    HighIntensityBackgroundGreen, HighIntensityBackgroundYellow, HighIntensityBackgroundBlue,
    HighIntensityBackgroundPurple, HighIntensityBackgroundCyan, HighIntensityBackgroundWhite);

    TColorKeyAnsiValue = record
      Color: TColor;
      Ansi: string;
    end;
    TFormatKeyAnsiValue = record
      Format : TFormat;
      Ansi : string;
    end;

const
  FORMATS: array[0..4] of TFormatKeyAnsiValue = (
    (Format: TFormat.ResetF; Ansi: #27'[0m'),
    (Format: TFormat.Bold; Ansi: #27'[1m'),
    (Format: TFormat.Italic; Ansi: #27'[3m'),
    (Format: TFormat.Underline; Ansi: #27'[4m'),
    (Format: TFormat.Strikethrough; Ansi: #27'[9m')
  );
  COLORS: array[0..32] of TColorKeyAnsiValue = (
    {NORMAL COLORS}
    (Color: TColor.ResetC; Ansi: #27'[0m'),
    (Color: TColor.Black; Ansi: #27'[30m'),
    (Color: TColor.Red; Ansi: #27'[31m'),
    (Color: TColor.Green; Ansi: #27'[32m'),
    (Color: TColor.Yellow; Ansi: #27'[33m'),
    (Color: TColor.Blue; Ansi: #27'[34m'),
    (Color: TColor.Purple; Ansi: #27'[35m'),
    (Color: TColor.Cyan; Ansi: #27'[36m'),
    (Color: TColor.White; Ansi: #27'[37m'),
    {BACKGROUND COLORS}
    (Color: TColor.BackgroundBlack; Ansi: #27'[40m'),
    (Color: TColor.BackgroundRed; Ansi: #27'[41m'),
    (Color: TColor.BackgroundGreen; Ansi: #27'[42m'),
    (Color: TColor.BackgroundYellow; Ansi: #27'[43m'),
    (Color: TColor.BackgroundBlue; Ansi: #27'[44m'),
    (Color: TColor.BackgroundPurple; Ansi: #27'[45m'),
    (Color: TColor.BackgroundCyan; Ansi: #27'[46m'),
    (Color: TColor.BackgroundWhite; Ansi: #27'[47m'),
    {HIGH INTENSITY COLORS}
    (Color: TColor.HighIntensityBlack; Ansi: #27'[90m'),
    (Color: TColor.HighIntensityRed; Ansi: #27'[91m'),
    (Color: TColor.HighIntensityGreen; Ansi: #27'[92m'),
    (Color: TColor.HighIntensityYellow; Ansi: #27'[93m'),
    (Color: TColor.HighIntensityBlue; Ansi: #27'[94m'),
    (Color: TColor.HighIntensityPurple; Ansi: #27'[95m'),
    (Color: TColor.HighIntensityCyan; Ansi: #27'[96m'),
    (Color: TColor.HighIntensityWhite; Ansi: #27'[97m'),
    {HIGH INTENSITY BACKGROUND COLORS}
    (Color: TColor.HighIntensityBackgroundBlack; Ansi: #27'[100m'),
    (Color: TColor.HighIntensityBackgroundRed; Ansi: #27'[101m'),
    (Color: TColor.HighIntensityBackgroundGreen; Ansi: #27'[102m'),
    (Color: TColor.HighIntensityBackgroundYellow; Ansi: #27'[103m'),
    (Color: TColor.HighIntensityBackgroundBlue; Ansi: #27'[104m'),
    (Color: TColor.HighIntensityBackgroundPurple; Ansi: #27'[105m'),
    (Color: TColor.HighIntensityBackgroundCyan; Ansi: #27'[106m'),
    (Color: TColor.HighIntensityBackgroundWhite; Ansi: #27'[107m')
);

function GetColor(color : TColor):string;
procedure SetColor(color: TColor);
procedure UnsetColor();
function GetFormat(format : TFormat):string;
procedure SetFormat(format: TFormat);
procedure UnsetFormat();

implementation

function GetColor(color : TColor):string;
var
  i: Integer;
begin
  for i := 0 to High(COLORS) do
  begin
    if COLORS[i].Color = color then
        Result := COLORS[i].Ansi;
  end;
end;

procedure SetColor(color: TColor);
var
  i: Integer;
begin
  for i := 0 to High(COLORS) do
  begin
    if COLORS[i].Color = color then
        write(COLORS[i].Ansi);
  end;
end;

procedure UnsetColor();
begin
  write(GetColor(TColor.ResetC));
end;

function GetFormat(format : TFormat):string;
var
  i: Integer;
begin
  for i := 0 to High(FORMATS) do
  begin
    if FORMATS[i].Format = format then
        Result := FORMATS[i].Ansi;
  end;
end;

procedure SetFormat(format: TFormat);
var
  i: Integer;
begin
  for i := 0 to High(FORMATS) do
  begin
    if FORMATS[i].Format = format then
        write(FORMATS[i].Ansi);
  end;
end;

procedure UnsetFormat();
begin
  write(GetFormat(TFormat.ResetF));
end;

end.
