program RockPaperScissors;
{$R *.res}
uses
  crt;
var
  temp: string;
  selection: char;

procedure backgroundColour(var colour: string); begin

  if colour = 'Blue' then
    textBackground(Blue);

  clrScr;

end;

procedure waitKey; begin

  repeat
  until keyPressed;

end;

procedure ascii(var asciiType: string); begin

  if asciiType = 'logo' then begin
    writeln('===============================================================================');
    writeln;
    writeln('                 RRRRR          PPPPP            SSSSS');
    writeln('                 R    R         P    P          S');
    writeln('                 RRRRR       -  PPPPP        -   SSSS');
    writeln('                 R  R           P                    S');
    writeln('                 R   RR OCK     P      APER     SSSSS  CISSORS');
    writeln;
    writeln('===============================================================================');
    writeln;
  end;

  if asciiType = 'titleTop' then begin
    writeln('-------------------------------------------------------------------------------');
    writeln;
    writeln('  Rock-Paper-Scissors');
    writeln;
    writeln('-------------------------------------------------------------------------------');
    writeln;
  end;

  if asciiType = 'titleShort' then begin
    writeln('  Rock-Paper-Scissors');
    writeln;
    writeln('-------------------------------------------------------------------------------');
    writeln;
  end;

  if asciiType = 'titleLong' then begin
    writeln('  Rock-Paper-Scissors');
    writeln('  Develop by Jason Kwok');
    writeln;
    writeln('-------------------------------------------------------------------------------');
    writeln;
  end;

  if asciiType = 'divideMiddle' then begin
    writeln;
    writeln('-------------------------------------------------------------------------------');
    writeln;
  end;

  if asciiType = 'divideLast' then begin
    writeln;
    write('-------------------------------------------------------------------------------');
  end;

end;

procedure intro; begin

  clrScr;

  temp := 'logo';
  ascii(temp);
  temp := 'titleLong';
  ascii(temp);
  writeln('  Loading, please wait...');
  temp := 'divideLast';
  ascii(temp);

  delay(2500);

end;

procedure menu; begin

  clrScr;

  temp := 'titleTop';
  ascii(temp);
  writeln('  You can choose to play the game (1), or change the option of the game (2). ');
  writeln('  You can also choose to leave this program (9).');
  temp := 'divideMiddle';
  ascii(temp);

  writeln('  Menu options:');
  writeln('    [1] Play');
  writeln('    [2] Option');
  writeln('    [9] LEAVE');
  writeln('  *Please enter the NUMBER in front of each option.');
  temp := 'divideMiddle';
  ascii(temp);

  write('Please select an item: ');
  readln(selection);
  temp := 'divideLast';
  ascii(temp);

  case selection of
     {'1':}
     {'2':}
     '9': halt;
     else menu;
  end;

end;

procedure gameMain; begin

end;

begin

  temp := 'Blue';
  backgroundColour(temp);

  intro;

  menu;

  waitKey;

end.

