uses
  crt;
var
  n , m , runningSum , runningInput : longint;
  i , j , lulus , tidakLulus : longint;
  average : extended; 

begin
  lulus      := 0;
  tidakLulus := 0;

  clrscr;

  while (true) do
  begin
    write('Banyak Mahasiswa : '); readln(m);
    if ( m >= 1 ) then
    begin
      break;
    end;
  end;
 
  while (true) do
  begin
    write('Jumlah Tugas : '); readln(n);
    if ( n >= 1 ) then
    begin
      break;
    end;
  end;

  for i := 1 to m do
  begin
  writeln(#10,'MAHASISWA ', i);
    runningSum := 0;
    for j := 1 to n do
    begin
      write('Nilai Tugas ',j,' : '); readln(runningInput);
      runningSum := runningSum + runningInput;
    end;
    average := runningSum / n ; 

    write('Mahasiswa ',i,' : ');
    if (average >= 65) then
    begin
      lulus := lulus + 1 ;
      writeln('LULUS');
      writeln('Nilai : ',average:0:1);
    end
    else
    begin
      tidakLulus := tidakLulus + 1 ;
      writeln('TIDAK LULUS');
      writeln('Nilai : ',average:0:1);
    end;

  end;
  writeln(#10,'Total Mahasiswa Lulus :', lulus);
  writeln('Total Mahasiswa Tidak Lulus :', tidakLulus);
end.
