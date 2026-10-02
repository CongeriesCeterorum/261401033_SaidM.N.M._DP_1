uses
  crt;
var
  hari : integer;
begin
  hari := 0;
  clrscr;
  while NOT(( hari >= 1 ) and ( hari <= 7)) do
  begin
    write('Hari Keberapa ? [ 1 - 7 ] : '); readln(hari);
  end;
  
  case hari of
    1:
    begin
      writeln('Senin');
    end;
    2:
    begin
      writeln('Selasa');
    end;
    3:
    begin
      writeln('Rabu');
    end;
    4:
    begin
      writeln('Kamis');
    end;
    5:
    begin
      writeln('Jumat');
    end;
    6:
    begin
      writeln('Sabtu');
    end;
    7:
    begin
      writeln('Minggu');
    end;
    else
    begin
    end;
  end;
end.
