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
    attempt := attempt - 1;
    write('Masukkan Password Anda : '); readln(userGuess);
    if (userGuess = secretPass) then
    begin
      writeln('Password Benar, Selamat Datang!');
      break;
    end
    else if (attempt = 0) then
    begin
      writeln('Akses Ditolak! Akun Terkunci');
    end
    else
    begin
      writeln('Password anda Salah! Silahkan Coba Lagi');
    end;
  until (attempt = 0);

end.
