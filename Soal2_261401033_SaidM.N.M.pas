uses
  crt;
var
  secretPass : string = 'kucingfasilkom123';
  userGuess : string;
  attempt : integer = 3;
begin
  clrscr;
  repeat 
    writeln('Kesempatan : ',attempt);
    write('Masukkan Password Anda : '); readln(userGuess);
    if (userGuess = secretPass) then
    begin
      writeln('Password Benar, Selamat Datang!');
      break;
    end
    else
    begin
      writeln('Password anda Salah! Silahkan Coba Lagi');
    end;
    attempt := attempt - 1;
  until (attempt = 0);
end.
