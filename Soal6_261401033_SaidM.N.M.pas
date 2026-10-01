uses
  crt;
var
  nilaiTugas, nilaiUTS , nilaiUAS : integer;
  kehadiran : integer;
  nilaiAkhir : double ;
  grade : char;
  kelulusan : string;
begin
  nilaiTugas := -1;
  nilaiUTS := -1;
  nilaiUAS := -1;
  kehadiran := -1;
  clrscr;

  while (nilaiTugas < 0) or (nilaiTugas > 100)  do
  begin
    write('Nilai Tugas [0 - 100] : '); readln(nilaiTugas);
  end;

  while (nilaiUTS < 0) or (nilaiUTS > 100) do
  begin
    write('Nilai UTS   [0 - 100] : '); readln(nilaiUTS);
  end;

  while (nilaiUAS < 0) or (nilaiUAS > 100) do
  begin
    write('Nilai UAS   [0 - 100] : '); readln(nilaiUAS);
  end;

  while (kehadiran <  0) or (kehadiran > 10) do
  begin
    write('Kehadiran    [0 - 10] : '); readln(kehadiran);
  end;

  nilaiAkhir := (nilaiTugas + nilaiUTS + nilaiUAS) / 3;

  if (nilaiAkhir >= 85) then
  begin
    grade := 'A';
  end
  else if (nilaiAkhir >= 75) and (nilaiAkhir< 85) then
  begin
    grade := 'B';
  end
  else if (nilaiAkhir >= 60) and (nilaiAkhir < 75) then
  begin
    grade := 'C';
  end
  else if (nilaiAkhir >= 50) and (nilaiAkhir < 60) then
  begin
    grade := 'D';
  end
  else
  begin
    grade := 'E';
  end; 

  if (nilaiAkhir >= 60) and (kehadiran >= 8) then
  begin
    kelulusan := 'LULUS';
  end
  else 
  begin
    kelulusan := 'TIDAK LULUS';
  end;
  
  clrscr;
  write('Nilai Akhir Mahasiswa : '); writeln(nilaiAkhir:0:1);
  write('Index Nilai : '); writeln(grade);
  write('Kehadiran : '); writeln(kehadiran);
  write('Status : '); writeln(kelulusan);
end.
