uses
  crt;
var
  golonganA, golonganB, golonganC : longint;
  golongan : string = 'D';
  hourSpend , lembur , jamLembur : longint;
  finalSum : extended;
begin

  clrscr;
  golonganA := 1500000;
  golonganB := 2000000;
  golonganC := 2500000;
  hourSpend := -1;
  jamLembur := 0;

  while (golongan <> 'A') and (golongan <> 'B') and (golongan <> 'C') do
  begin
    write('Golongan Karyawan : ');  readln(golongan);
  end;

  while ( hourSpend < 0) do
  begin
    write('Jam Kerja Karyawan : '); readln(hourSpend);
  end;
  
  if (hourSpend > 40) then
  begin
    jamLembur := hourSpend - 40;
    lembur := jamLembur * 20000;
  end;

  if (golongan = 'C') then
  begin
    finalSum := golonganC + lembur ;
    if (hourSpend > 50) then
    begin
      finalSum := finalSum + 100000;
    end;
    writeln('Golongan : C ');
    writeln('Gaji Pokok : ', golonganC);
  end
  else if (golongan = 'B') then
  begin
    finalSum := golonganB + lembur ;
    writeln('Golongan : B ');
    writeln('Gaji Pokok : ', golonganB);
  end
  else 
  begin
    finalSum := golonganA + lembur ;
    writeln('Golongan : A ');
    writeln('Gaji Pokok : ', golonganA);
  end;
  
  write('Waktu Lembur Karyawan : '); writeln(jamLembur);
  write('Gaji Akhir Karyawan : ', finalSum:0:0,#10);

end.
