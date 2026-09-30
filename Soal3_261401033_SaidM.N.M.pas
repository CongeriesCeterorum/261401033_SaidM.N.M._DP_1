uses
  crt;
var
  n : longint;
  i : longint = 0;
  mode : integer;
begin
  clrscr;

  write('Masukkan Integer Positive : '); readln(n);
  writeln('Deret Odd Number [1]',#10,
  'Deret Even Number [2]');
  write('Kategori Deret : '); readln(mode);

  writeln();
    
  while ( i < n ) do
  begin
  i := i + 1;
    if (mode = 1) then
    begin
      if ( i mod 2 = 0 ) and NOT( i mod 5 = 0) then
      begin
        continue;
      end
      else if ( i mod 5 = 0 ) then
      begin
        continue;
      end
      else 
      begin
        write(i,' ');
      end;
    end
    else if (mode = 2 ) then
    begin
      if ( i mod 2 = 1 ) and NOT( i mod 5 = 0) then
      begin
        continue;
      end
      else if ( i mod 5 = 0 ) then
      begin
        continue;
      end
      else 
      begin
        write(i,' ');
      end;
    end 
    else
    begin
      writeln('Mode Is Invalid!');
      break;
    end;
  end;

end.
