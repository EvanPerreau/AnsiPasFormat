# AnsiPasFormat

AnsiPasFormat is a pascal unit created to make it easier to format text in terminals.
Created by [Evan Perreau](https://dev-boost.fr).

## Requierment

1. WARNING! Ansi don't work on default windows terminal, you need to use Git Bash or other Ansi friendly terminal

## Installation

### Linux/Windows

1. Clone this repository to get example code and unit or download the ansipasformat.pas in lib/ansipasformat.

2. You can use AnsiPasFormat in your program like this :
   
   ```pascal
   uses
       ansipasformat;
   ```

## Usage

1. If you want to format a text you can do this:
   
   ```pascal
   SetFormat(TFormat.Bold); // Write #27'[1m'
   ```

2. You can also color a text:
   
   ```pascal
   SetColor(TColor.Green); // Write #27'[32m'
   ```

3. To get the ansi code of a color/format you can use this:
   
   ```pascal
   GetFormat(TFormat.Bold); // Return #27'[1m'
   GetColor(TColor.Green); // Return #27'[32m'
   ```

4. To unformat/set default color, you can use:
   
   ```pascal
   UnsetColor(); // Write #27'[0m'
   UnsetFormat(); // Write #27'[0m'
   ```

## Colors/Formats

- TFormat :

  - ResetF
  
  - Bold
  
  - Italic
  
  - Underline
  
  - Strikethrough

- TColor

  - ResetC
  
  - Black 
  
  - Red
  
  - Green
  
  - Yellow
  
  - Blue
  
  - Purple
  
  - Cyan
  
  - White
  
  - BackgroundBlack
  
  - BackgroundRed
  
  - BackgroundGreen
  
  - BackgroundYellow
  
  - BackgroundBlue
  
  - BackgroundPurple
  
  - BackgroundCyan
  
  - BackgroundWhite
  
  - HighIntensityBlack
  
  - HighIntensityRed
  
  - HighIntensityGreen
  
  - HighIntensityYellow
  
  - HighIntensityBlue
  
  - HighIntensityPurple
  
  - HighIntensityCyan
  
  - HighIntensityWhite
  
  - HighIntensityBackgroundBlack
  
  - HighIntensityBackgroundRed
  
  - HighIntensityBackgroundGreen
  
  - HighIntensityBackgroundYellow
  
  - HighIntensityBackgroundBlue
  
  - HighIntensityBackgroundPurple
  
  - HighIntensityBackgroundCyan
  
  - HighIntensityBackgroundWhite
    
    

**Pascal unit created by [Evan Perreau](https://dev-boost.fr/).**
