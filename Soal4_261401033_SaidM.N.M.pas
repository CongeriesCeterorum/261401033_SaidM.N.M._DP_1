uses
  crt;
var
  x , y : longint;
  mode : integer;
  isContinue : boolean = true;
  answer : char;

begin
  clrscr;

  while (isContinue = true) do
  begin
    writeln('=================');
    writeln('Simple Kalkulator');
    writeln('=================');
    writeln('Available Mode : ');
    writeln('[1] Penjumlahan');
    writeln('[2] Pengurangan');
    writeln('[3] Perkalian');
    writeln('[4] Pembagian Real');
    writeln('[5] DIV & MOD');
    writeln('=================');
    write('Mode Pilihan : '); readln(mode);

    case mode of 
      1 :
      begin
        write('Masukkan Angka Pertama : '); readln(x);
        write('Masukkan Angka Kedua : '); readln(y);
        writeln(x, ' + ' , y , ' = ', x + y);
      end;
      2 :
      begin
        write('Masukkan Angka Pertama : '); readln(x);
        write('Masukkan Angka Kedua : '); readln(y);
        writeln(x, ' - ' , y , ' = ', x - y);
      end;
      3 :
      begin
        write('Masukkan Angka Pertama : '); readln(x);
        write('Masukkan Angka Kedua : '); readln(y);
        writeln(x, ' x ' , y , ' = ', x * y);
      end;
      4 :
      begin
        write('Masukkan Angka Pertama : '); readln(x);
        write('Masukkan Angka Kedua : '); readln(y);
        writeln(x, ' / ' , y , ' = ', (x / y):0:2);
      end;
      5 :
      begin
        write('Masukkan Angka Pertama : '); readln(x);
        write('Masukkan Angka Kedua : '); readln(y);
        writeln(x, ' DIV ' , y , ' = ', (x div y));
        writeln(x, ' MOD ' , y , ' = ', (x mod y));
      end;
      else
      begin
        writeln('Not a Valid Mode!');
      end;
    end;
    
    while (true) do
    begin
      write('Apakah Ingin melanjutkkan perhitungan Lagi? (Y/T) : '); readln(answer);
      if (answer = 'T') or (answer = 't') then
      begin
        isContinue := false; 
        break;
      end
      else if (answer = 'Y') or (answer = 'y') then
        break;
      begin
      end;
    end;
  end;
end.
