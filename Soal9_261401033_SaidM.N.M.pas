uses
  crt;
var
  tahun : integer;
  bulan : integer;
  hari : integer;
  isKabisat : boolean = false;
begin
  clrscr;

  while ( true ) do
  begin
    write('Input Tahun : '); readln( tahun );
    if ( tahun >= 0 ) then
    begin
      break;
    end;
  end;

  while ( true ) do
  begin
    write('Input Bulan (1-12): '); readln( bulan );
    if ( bulan >= 0 ) and ( bulan <= 12 ) then
    begin
      break;
    end;
  end;

  if ((tahun mod 4 = 0 ) and (tahun mod 100 <> 0)) or (tahun mod 400 = 0) then
  begin
    isKabisat := true;
  end;

  case bulan of 
  1:
  begin
    hari := 31;
  end;
  2:
  begin
    if (isKabisat = true) then
      hari := 29
    else
      hari := 28;
  end;
    3:
    begin
      hari := 31;
    end;
    4:
    begin
      hari := 30;
    end;
    5:
    begin
      hari := 31;
    end;
    6:
    begin
      hari := 30;
    end;
    7:
    begin
      hari := 31;
    end;
    8:
    begin
      hari := 31;
    end;
    9:
    begin
      hari := 30;
    end;
    10:
    begin
      hari := 31;
    end;
    11:
    begin
      hari := 30;
    end;
    12:
    begin
      hari := 31;
    end;
  end;

  writeln('Pada Tahun ',tahun,' Bulan Ke ',bulan,' Jumlah Hari Adalah ',hari);
end.
