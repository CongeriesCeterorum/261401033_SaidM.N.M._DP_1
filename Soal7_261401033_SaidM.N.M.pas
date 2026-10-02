uses
  crt;
var
  id : string;
  sum, hour : longint;
begin
  write('Kode Kendaraan',#10,
    '[ M ] Mobil',#10,'[ K ] Kereta',#10,'[ B ] Bus',#10);
  write('Kendaraan Yang Parkir [ M / K / B ] : '); readln(id);
  write('Jam Kendaraan Tersebut Parkir : '); readln(hour);
  case id of 
  'M' : 
  begin
    if (hour > 10 ) then
    begin
      sum := 30000;
    end
    else
    begin
      sum := ( hour * 3000 ) + 2000;
    end;
  end; 
  'K' :
  begin
    if (hour > 10 ) then
    begin
      sum := 10000;
    end
    else 
    begin
      sum := ( hour * 1000 ) + 1000;
    end;
  end;
  'B' :
  begin
    if (hour > 10 ) then
    begin
      sum := 50000;
    end
    else
    begin
      sum := ( hour * 5000 ) + 5000;
    end;
  end;
  else
  end;
  writeln('Biaya Parkir : ',sum);
end. 
