uses
  crt;
var
  i , goodsCount : longInt;
  goodsPrice , originalTotal : longInt;
  discount , discountedTotal : extended;
begin

  clrscr;

  goodsCount := 0;
  while (goodsCount < 1) do
  begin
    write('Total Barang Yang Di Beli : '); readln(goodsCount);
  end;
  originalTotal := 0;
  for i := 1 to goodsCount do
  begin
    goodsPrice := 0;
    while (goodsPrice <= 0) do
    begin
      write('Harga Barang ke ',i,' : '); readln(goodsPrice);
    end;
    originalTotal := originalTotal + goodsPrice;
  end;

  if (originalTotal < 100000) then
  begin
    discount := 0
  end
  else if (originalTotal >= 100000) and (originalTotal < 500000) then
  begin
    discount := 0.10
  end
  else
  begin
    discount := 0.20;
  end;

  discountedTotal  := originalTotal - (originalTotal * discount);
  clrscr;
  writeln('Banyak Barang Yang Di Beli : ',goodsCount,#10,
    'Total Harga (Sebelum Diskon) : Rp.',originalTotal,#10,
    'Besar Diskon Yang Di Dapatkan : ',(discount * 100):0:0,'%',#10,
    'Total Harga (Setelah Diskkon) : Rp.',discountedTotal:0:0);

end.
