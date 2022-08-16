program Keobuabao; 
//By QuanAnwir


uses
  crt;


var
  K: array [0..3] of Integer;
  s, luot, man, chon: byte;
  sotu, luotcuaban, luotcuaBot, a: Integer;


var
  tongdiem1, tongdiem2: byte;
  name: string;
  c: Integer;
  //dấu cách



begin
  textColor(Yellow);
  delay(100);
  write('|=============================|');
  writeln();
  delay(100);
  write('|         Welcome player      |');
  writeln();
  delay(100);
  write('|           to Game           |');
  writeln();
  delay(100);
  write('|     FromQuanartWithLove     |');
  writeln();
  delay(100);
  write('|                             |');
  writeln();
  delay(100);
  write('|                             |');
  writeln();
  delay(100);
  write('|                             |');
  writeln();
  delay(100);
  write('|                             |');
  writeln();
  delay(100);
  write('|=============================|');
  writeln();
  delay(100);
  writeln;
  writeln;
  textColor(White);
  writeln('Điếm kí tự tên của bạn sau đó ghi vào đây');
  writeln('(vidu: 4 thì chỉ ghi tên của bạn là có 3 kí tự)');
  write(' Ghi: ');
  readln(sotu);
  delay(100);
  textcolor(- 318788924);
  writeln('Số từ giới hạn của bạn là ', sotu - 1);
  delay(100);
  textcolor(white);
  Write('Tên của bạn: ');
  readln(name);
  Length(name);
  delete(name, sotu, 999999);
  clrscr;
  Randomize();
  luotcuaban := 0;
  luotcuabot := 0;
  man := 0;
  luot := 0;
  textColor(Brown);
  WriteLn;
  writeln;
  writeln;
  WriteLn('                   Chào ', name, ' chúc bạn may mắn:3 ');
  delay(1300);
  textColor(White);
  writeln('Thể lệ sẽ như sau:');
  delay(1300);
  WriteLn('Màn 1:Có 10 lượt chơi ai được nhiều lần thắng hơn sẽ là người chiến thắng.');
  delay(1700);
  writeln;
  writeln('--Lưu ý');
  writeln('Chọn theo số : Kéo = 1, Búa = 2 , Bao = 3');
  delay(300);
  writeln();
  writeln();
  writeln();
  textcolor(lightblue);
  writeln('                        Màn 1');
  man := man + 1;
  delay(100);
  writeln('                       Lượt 1');
  luot := luot + 1;
  delay(1000);
  textcolor(White);
  writeln('Lưu ý: Việc bot chọn 2 lần là do lỗi chúng tôi đã không thể khắc phục');
  delay(100);
  writeln('Kết quả có thể sẽ bị thay đổi.Trantrong!');
  delay(1000);
  Write('Mời bạn chọn trước : ');
  readln(chon);
  begin
    if chon = 1 then
      Writeln('Bạn chọn Kéo') ;
    delay(350);
    if chon = 2 then
      writeln('Bạn chọn Búa') ;
    delay(350);
    if chon = 3 then
      writeln('Bạn chọn Bao') ;
    delay(350);
  end;
  begin
    for a := 0 to 1 do 
      begin
        k[a] := Random(4) - random(1);
      end;
    if K[a] = 0 then
      begin
        Writeln('AI chọn Bao');
        delay(300);
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
            if chon = 2 then
              begin
                writeln('AI thắng và ché bạn Gàシ');
                luotcuabot := luotcuabot + 1;
              end ;
            if chon = 3 then
              begin
                Writeln('Hòa');
              end ;
          end ;
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
      end ;
    if K[a] = 1 then
      begin
        writeln('AI chọn Kéo');
        delay(300);
        if chon = 1 then
          begin
            writeln('Hòa');
          end ;
        if chon = 2 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
        if chon = 3 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
      end ;
    if K[a] = 2 then
      begin
        writeln('AI chọn Búa');
        delay(300);
        if chon = 2 then
          begin
            writeln('Hòa');
          end ;
        if chon = 1 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
        if chon = 3 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
      end ;
    if K[a] = 3 then
      begin
        writeln('AI chọn Bao');
        delay(300);
        if chon = 3 then
          begin
            writeln('Hòa');
          end ;
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
        if chon = 2 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
      end ;
    delay(300);
  end;
  begin
    textcolor(lightblue);
    if luotcuaban > luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    if luotcuaban < luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    if luotcuaban = luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' ', 'tỉ số chưa có thay đổi: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
  end;
  textcolor(Red);
  write('Enter để đi tiếp');
  readln();
  begin
    for s := 3downto 0 do 
      begin
        writeln('Đợi ', s, 's');
        delay(1000);
      end;
  end;
  clrscr;
  writeln;
  for c := 1 to 65 do 
    begin
      write('=');
      delay(20);
    end;
  writeln;
  writeln;
  writeln;
  textcolor(lightblue);
  writeln('              (Kéo = 1, Búa = 2 , Bao = 3)');
  writeln('                            Màn 1');
  delay(100);
  writeln('                           Lượt 2');
  luot := luot + 1;
  delay(1000);
  textcolor(white);
  Write('Mời bạn chọn tiếp: ');
  readln(chon);
  begin
    if chon = 1 then
      Writeln('Bạn chọn Kéo') ;
    delay(350);
    if chon = 2 then
      writeln('Bạn chọn Búa') ;
    delay(350);
    if chon = 3 then
      writeln('Bạn chọn Bao') ;
    delay(350);
  end;
  begin
    for a := 0 to 1 do 
      begin
        k[a] := Random(4) - random(1);
      end;
    if K[a] = 0 then
      begin
        Writeln('AI chọn Bao');
        delay(300);
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
            if chon = 2 then
              begin
                writeln('AI thắng và ché bạn Gàシ');
                luotcuabot := luotcuabot + 1;
              end ;
            if chon = 3 then
              begin
                Writeln('Hòa');
                delay(300);
              end ;
          end ;
      end ;
    if K[a] = 1 then
      begin
        writeln('AI chọn Kéo');
        delay(300);
        if chon = 1 then
          begin
            writeln('Hòa');
            delay(300);
          end ;
        if chon = 2 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
        if chon = 3 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
      end ;
    if K[a] = 2 then
      begin
        writeln('AI chọn Búa');
        delay(300);
        if chon = 2 then
          begin
            writeln('Hòa');
            delay(300);
          end ;
        if chon = 1 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
        if chon = 3 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
      end ;
    if K[a] = 3 then
      begin
        writeln('AI chọn Bao');
        delay(300);
        if chon = 3 then
          begin
            writeln('Hòa');
            delay(300);
          end ;
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
        if chon = 2 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
      end ;
    delay(300);
  end;
  begin
    textcolor(lightblue);
    if luotcuaban > luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    if luotcuaban < luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    if luotcuaban = luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' ', 'tỉ số chưa có thay đổi: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
  end;
  textcolor(Red);
  write('Enter để đi tiếp');
  readln();
  begin
    for s := 3downto 0 do 
      begin
        writeln('Đợi ', s, 's');
        delay(1000);
      end;
  end;
  clrscr;
  writeln;
  for c := 1 to 65 do 
    begin
      write('=');
      delay(20);
    end;
  writeln;
  writeln;
  writeln;
  textcolor(lightblue);
  writeln('              (Kéo = 1, Búa = 2 , Bao = 3)');
  writeln('                        Màn 1');
  delay(100);
  writeln('                       Lượt 3');
  luot := luot + 1;
  delay(1000);
  textcolor(White);
  Write('Mời bạn chọn: ');
  readln(chon);
  begin
    if chon = 1 then
      Writeln('Bạn chọn Kéo') ;
    delay(350);
    if chon = 2 then
      writeln('Bạn chọn Búa') ;
    delay(350);
    if chon = 3 then
      writeln('Bạn chọn Bao') ;
    delay(350);
  end;
  begin
    for a := 0 to 1 do 
      begin
        k[a] := Random(4) - random(1);
      end;
    if K[a] = 0 then
      begin
        Writeln('AI chọn Bao');
        delay(300);
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
            if chon = 2 then
              begin
                writeln('AI thắng và ché bạn Gàシ');
                luotcuabot := luotcuabot + 1;
              end ;
            if chon = 3 then
              begin
                Writeln('Hòa');
              end ;
          end ;
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
      end ;
    if K[a] = 1 then
      begin
        writeln('AI chọn Kéo');
        delay(300);
        if chon = 1 then
          begin
            writeln('Hòa');
          end ;
        if chon = 2 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
        if chon = 3 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
      end ;
    if K[a] = 2 then
      begin
        writeln('AI chọn Búa');
        delay(300);
        if chon = 2 then
          begin
            writeln('Hòa');
          end ;
        if chon = 1 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
        if chon = 3 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
      end ;
    if K[a] = 3 then
      begin
        writeln('AI chọn Bao');
        delay(300);
        if chon = 3 then
          begin
            writeln('Hòa');
          end ;
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
        if chon = 2 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
      end ;
    delay(300);
  end;
  begin
    textcolor(lightblue);
    if luotcuaban > luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    if luotcuaban < luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    if luotcuaban = luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' ', 'tỉ số chưa có thay đổi: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
  end;
  delay(3000);
  textcolor(lightmagenta);
  tongdiem1 := luotcuaban;
  tongdiem2 := luotcuabot;
  writeln('-Kết quả');
  writeln('+)Điểm của bạn: ', tongdiem1);
  delay(200);
  Writeln('+)Điểm của Bot: ', tongdiem2);
  delay(200);
  if tongdiem1 = 3 then
    writeln('Victory') ;
  if tongdiem1 < 3 then
    begin
      writeln;
      for c := 1 to 65 do 
        begin
          write('=');
          delay(20);
        end;
      writeln;
      writeln;
      writeln;
      textcolor(lightblue);
      writeln('              (Kéo = 1, Búa = 2 , Bao = 3)');
      writeln('                        Màn 1');
      delay(100);
      writeln('                       Lượt 4');
      luot := luot + 1;
      delay(1000);
      textcolor(White);
      Write('Mời bạn chọn: ');
      readln(chon);
      begin
        if chon = 1 then
          Writeln('Bạn chọn Kéo') ;
        delay(350);
        if chon = 2 then
          writeln('Bạn chọn Búa') ;
        delay(350);
        if chon = 3 then
          writeln('Bạn chọn Bao') ;
        delay(350);
      end;
      begin
        for a := 0 to 1 do 
          begin
            k[a] := Random(4) - random(1);
          end;
        if K[a] = 0 then
          begin
            Writeln('AI chọn Bao');
            delay(300);
            if chon = 1 then
              begin
                writeln(name, ' thắng');
                luotcuaban := luotcuaban + 1;
                if chon = 2 then
                  begin
                    writeln('AI thắng và ché bạn Gàシ');
                    luotcuabot := luotcuabot + 1;
                  end ;
                if chon = 3 then
                  begin
                    Writeln('Hòa');
                  end ;
              end ;
            if chon = 1 then
              begin
                writeln(name, ' thắng');
                luotcuaban := luotcuaban + 1;
              end ;
          end ;
        if K[a] = 1 then
          begin
            writeln('AI chọn Kéo');
            delay(300);
            if chon = 1 then
              begin
                writeln('Hòa');
              end ;
            if chon = 2 then
              begin
                writeln(name, ' thắng');
                luotcuaban := luotcuaban + 1;
              end ;
            if chon = 3 then
              begin
                writeln('AI thắng và chê bạn Gàシ');
                luotcuabot := luotcuabot + 1 
              end ;
          end ;
        if K[a] = 2 then
          begin
            writeln('AI chọn Búa');
            delay(300);
            if chon = 2 then
              begin
                writeln('Hòa');
              end ;
            if chon = 1 then
              begin
                writeln('AI thắng và chê bạn Gàシ');
                luotcuabot := luotcuabot + 1 
              end ;
            if chon = 3 then
              begin
                writeln(name, ' thắng');
                luotcuaban := luotcuaban + 1;
              end ;
          end ;
        if K[a] = 3 then
          begin
            writeln('AI chọn Bao');
            delay(300);
            if chon = 3 then
              begin
                writeln('Hòa');
              end ;
            if chon = 1 then
              begin
                writeln(name, ' thắng');
                luotcuaban := luotcuaban + 1;
              end ;
            if chon = 2 then
              begin
                writeln('AI thắng và chê bạn Gàシ');
                luotcuabot := luotcuabot + 1 
              end ;
          end ;
        delay(300);
      end;
      begin
        textcolor(lightblue);
        if luotcuaban > luotcuabot then
          writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
        if luotcuaban < luotcuabot then
          writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
        if luotcuaban = luotcuabot then
          writeln('Màn ', man, ',', ' Lượt ', luot, ' ', 'tỉ số chưa có thay đổi: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
      end;
      delay(3000);
    end ;
  textcolor(lightmagenta);
  tongdiem1 := luotcuaban;
  tongdiem2 := luotcuabot;
  writeln('-Kết quả');
  writeln('+)Điểm của bạn: ', tongdiem1);
  delay(200);
  Writeln('+)Điểm của Bot: ', tongdiem2);
  delay(200);
  begin
    writeln;
    for c := 1 to 65 do 
      begin
        write('=');
        delay(20);
      end;
    writeln;
    writeln;
    writeln;
    textcolor(lightblue);
    writeln('              (Kéo = 1, Búa = 2 , Bao = 3)');
    writeln('                        Màn 1');
    delay(100);
    writeln('                       Lượt 5');
    luot := luot + 1;
    delay(1000);
    textcolor(White);
    Write('Mời bạn chọn: ');
    readln(chon);
    begin
      if chon = 1 then
        Writeln('Bạn chọn Kéo') ;
      delay(350);
      if chon = 2 then
        writeln('Bạn chọn Búa') ;
      delay(350);
      if chon = 3 then
        writeln('Bạn chọn Bao') ;
      delay(350);
    end;
    begin
      for a := 0 to 1 do 
        begin
          k[a] := Random(4) - random(1);
        end;
      if K[a] = 0 then
        begin
          Writeln('AI chọn Bao');
          delay(300);
          if chon = 1 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
              if chon = 2 then
                begin
                  writeln('AI thắng và ché bạn Gàシ');
                  luotcuabot := luotcuabot + 1;
                end ;
              if chon = 3 then
                begin
                  Writeln('Hòa');
                end ;
            end ;
          if chon = 1 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
            end ;
        end ;
      if K[a] = 1 then
        begin
          writeln('AI chọn Kéo');
          delay(300);
          if chon = 1 then
            begin
              writeln('Hòa');
            end ;
          if chon = 2 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
            end ;
          if chon = 3 then
            begin
              writeln('AI thắng và chê bạn Gàシ');
              luotcuabot := luotcuabot + 1 
            end ;
        end ;
      if K[a] = 2 then
        begin
          writeln('AI chọn Búa');
          delay(300);
          if chon = 2 then
            begin
              writeln('Hòa');
            end ;
          if chon = 1 then
            begin
              writeln('AI thắng và chê bạn Gàシ');
              luotcuabot := luotcuabot + 1 
            end ;
          if chon = 3 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
            end ;
        end ;
      if K[a] = 3 then
        begin
          writeln('AI chọn Bao');
          delay(300);
          if chon = 3 then
            begin
              writeln('Hòa');
            end ;
          if chon = 1 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
            end ;
          if chon = 2 then
            begin
              writeln('AI thắng và chê bạn Gàシ');
              luotcuabot := luotcuabot + 1 
            end ;
        end ;
      delay(300);
    end;
    begin
      textcolor(lightblue);
      if luotcuaban > luotcuabot then
        writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
      if luotcuaban < luotcuabot then
        writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
      if luotcuaban = luotcuabot then
        writeln('Màn ', man, ',', ' Lượt ', luot, ' ', 'tỉ số chưa có thay đổi: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    end;
    delay(3000);
  end;
  textcolor(lightmagenta);
  tongdiem1 := luotcuaban;
  tongdiem2 := luotcuabot;
  writeln('-Kết quả');
  writeln('+)Điểm của bạn: ', tongdiem1);
  delay(200);
  Writeln('+)Điểm của Bot: ', tongdiem2);
  delay(200);
  begin
    writeln;
    for c := 1 to 65 do 
      begin
        write('=');
        delay(20);
      end;
    writeln;
    writeln;
    writeln;
    textcolor(lightblue);
    writeln('              (Kéo = 1, Búa = 2 , Bao = 3)');
    writeln('                        Màn 1');
    delay(100);
    writeln('                       Lượt 6');
    luot := luot + 1;
    delay(1000);
    textcolor(White);
    Write('Mời bạn chọn: ');
    readln(chon);
    begin
      if chon = 1 then
        Writeln('Bạn chọn Kéo') ;
      delay(350);
      if chon = 2 then
        writeln('Bạn chọn Búa') ;
      delay(350);
      if chon = 3 then
        writeln('Bạn chọn Bao') ;
      delay(350);
    end;
    begin
      for a := 0 to 1 do 
        begin
          k[a] := Random(4) - random(1);
        end;
      if K[a] = 0 then
        begin
          Writeln('AI chọn Bao');
          delay(300);
          if chon = 1 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
              if chon = 2 then
                begin
                  writeln('AI thắng và ché bạn Gàシ');
                  luotcuabot := luotcuabot + 1;
                end ;
              if chon = 3 then
                begin
                  Writeln('Hòa');
                end ;
            end ;
          if chon = 1 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
            end ;
        end ;
      if K[a] = 1 then
        begin
          writeln('AI chọn Kéo');
          delay(300);
          if chon = 1 then
            begin
              writeln('Hòa');
            end ;
          if chon = 2 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
            end ;
          if chon = 3 then
            begin
              writeln('AI thắng và chê bạn Gàシ');
              luotcuabot := luotcuabot + 1 
            end ;
        end ;
      if K[a] = 2 then
        begin
          writeln('AI chọn Búa');
          delay(300);
          if chon = 2 then
            begin
              writeln('Hòa');
            end ;
          if chon = 1 then
            begin
              writeln('AI thắng và chê bạn Gàシ');
              luotcuabot := luotcuabot + 1 
            end ;
          if chon = 3 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
            end ;
        end ;
      if K[a] = 3 then
        begin
          writeln('AI chọn Bao');
          delay(300);
          if chon = 3 then
            begin
              writeln('Hòa');
            end ;
          if chon = 1 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
            end ;
          if chon = 2 then
            begin
              writeln('AI thắng và chê bạn Gàシ');
              luotcuabot := luotcuabot + 1 
            end ;
        end ;
      delay(300);
    end;
    begin
      textcolor(lightblue);
      if luotcuaban > luotcuabot then
        writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
      if luotcuaban < luotcuabot then
        writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
      if luotcuaban = luotcuabot then
        writeln('Màn ', man, ',', ' Lượt ', luot, ' ', 'tỉ số chưa có thay đổi: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    end;
    delay(3000);
  end;
  begin
    textcolor(lightmagenta);
    tongdiem1 := luotcuaban;
    tongdiem2 := luotcuabot;
    writeln('-Kết quả');
    writeln('+)Điểm của bạn: ', tongdiem1);
    delay(200);
    Writeln('+)Điểm của Bot: ', tongdiem2);
    delay(200);
    writeln;
    for c := 1 to 65 do 
      begin
        write('=');
        delay(20);
      end;
    writeln;
    writeln;
    writeln;
    textcolor(lightblue);
    writeln('              (Kéo = 1, Búa = 2 , Bao = 3)');
    writeln('                        Màn 1');
    delay(100);
    writeln('                       Lượt 7');
    luot := luot + 1;
    delay(1000);
    textcolor(White);
    Write('Mời bạn chọn: ');
    readln(chon);
    begin
      if chon = 1 then
        Writeln('Bạn chọn Kéo') ;
      delay(350);
      if chon = 2 then
        writeln('Bạn chọn Búa') ;
      delay(350);
      if chon = 3 then
        writeln('Bạn chọn Bao') ;
      delay(350);
    end;
    begin
      for a := 0 to 1 do 
        begin
          k[a] := Random(4) - random(1);
        end;
      if K[a] = 0 then
        begin
          Writeln('AI chọn Bao');
          delay(300);
          if chon = 1 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
              if chon = 2 then
                begin
                  writeln('AI thắng và ché bạn Gàシ');
                  luotcuabot := luotcuabot + 1;
                end ;
              if chon = 3 then
                begin
                  Writeln('Hòa');
                end ;
            end ;
          if chon = 1 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
            end ;
        end ;
      if K[a] = 1 then
        begin
          writeln('AI chọn Kéo');
          delay(300);
          if chon = 1 then
            begin
              writeln('Hòa');
            end ;
          if chon = 2 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
            end ;
          if chon = 3 then
            begin
              writeln('AI thắng và chê bạn Gàシ');
              luotcuabot := luotcuabot + 1 
            end ;
        end ;
      if K[a] = 2 then
        begin
          writeln('AI chọn Búa');
          delay(300);
          if chon = 2 then
            begin
              writeln('Hòa');
            end ;
          if chon = 1 then
            begin
              writeln('AI thắng và chê bạn Gàシ');
              luotcuabot := luotcuabot + 1 
            end ;
          if chon = 3 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
            end ;
        end ;
      if K[a] = 3 then
        begin
          writeln('AI chọn Bao');
          delay(300);
          if chon = 3 then
            begin
              writeln('Hòa');
            end ;
          if chon = 1 then
            begin
              writeln(name, ' thắng');
              luotcuaban := luotcuaban + 1;
            end ;
          if chon = 2 then
            begin
              writeln('AI thắng và chê bạn Gàシ');
              luotcuabot := luotcuabot + 1 
            end ;
        end ;
      delay(300);
    end;
    begin
      textcolor(lightblue);
      if luotcuaban > luotcuabot then
        writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
      if luotcuaban < luotcuabot then
        writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
      if luotcuaban = luotcuabot then
        writeln('Màn ', man, ',', ' Lượt ', luot, ' ', 'tỉ số chưa có thay đổi: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    end;
    delay(3000);
  end;
  writeln;
  for c := 1 to 65 do 
    begin
      write('=');
      delay(20);
    end;
  writeln;
  writeln;
  writeln;
  textcolor(lightblue);
  writeln('              (Kéo = 1, Búa = 2 , Bao = 3)');
  writeln('                        Màn 1');
  delay(100);
  writeln('                       Lượt 8');
  luot := luot + 1;
  delay(1000);
  textcolor(White);
  Write('Mời bạn chọn: ');
  readln(chon);
  begin
    if chon = 1 then
      Writeln('Bạn chọn Kéo') ;
    delay(350);
    if chon = 2 then
      writeln('Bạn chọn Búa') ;
    delay(350);
    if chon = 3 then
      writeln('Bạn chọn Bao') ;
    delay(350);
  end;
  begin
    for a := 0 to 1 do 
      begin
        k[a] := Random(4) - random(1);
      end;
    if K[a] = 0 then
      begin
        Writeln('AI chọn Bao');
        delay(300);
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
            if chon = 2 then
              begin
                writeln('AI thắng và ché bạn Gàシ');
                luotcuabot := luotcuabot + 1;
              end ;
            if chon = 3 then
              begin
                Writeln('Hòa');
              end ;
          end ;
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
      end ;
    if K[a] = 1 then
      begin
        writeln('AI chọn Kéo');
        delay(300);
        if chon = 1 then
          begin
            writeln('Hòa');
          end ;
        if chon = 2 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
        if chon = 3 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
      end ;
    if K[a] = 2 then
      begin
        writeln('AI chọn Búa');
        delay(300);
        if chon = 2 then
          begin
            writeln('Hòa');
          end ;
        if chon = 1 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
        if chon = 3 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
      end ;
    if K[a] = 3 then
      begin
        writeln('AI chọn Bao');
        delay(300);
        if chon = 3 then
          begin
            writeln('Hòa');
          end ;
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
        if chon = 2 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
      end ;
    delay(300);
  end;
  begin
    textcolor(lightblue);
    if luotcuaban > luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    if luotcuaban < luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    if luotcuaban = luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' ', 'tỉ số chưa có thay đổi: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
  end;
  delay(3000);
  writeln;
  for c := 1 to 65 do 
    begin
      write('=');
      delay(20);
    end;
  writeln;
  writeln;
  writeln;
  textcolor(lightblue);
  writeln('              (Kéo = 1, Búa = 2 , Bao = 3)');
  writeln('                        Màn 1');
  delay(100);
  writeln('                       Lượt 9');
  luot := luot + 1;
  delay(1000);
  textcolor(White);
  Write('Mời bạn chọn: ');
  readln(chon);
  begin
    if chon = 1 then
      Writeln('Bạn chọn Kéo') ;
    delay(350);
    if chon = 2 then
      writeln('Bạn chọn Búa') ;
    delay(350);
    if chon = 3 then
      writeln('Bạn chọn Bao') ;
    delay(350);
  end;
  begin
    for a := 0 to 1 do 
      begin
        k[a] := Random(4) - random(1);
      end;
    if K[a] = 0 then
      begin
        Writeln('AI chọn Bao');
        delay(300);
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
            if chon = 2 then
              begin
                writeln('AI thắng và ché bạn Gàシ');
                luotcuabot := luotcuabot + 1;
              end ;
            if chon = 3 then
              begin
                Writeln('Hòa');
              end ;
          end ;
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
      end ;
    if K[a] = 1 then
      begin
        writeln('AI chọn Kéo');
        delay(300);
        if chon = 1 then
          begin
            writeln('Hòa');
          end ;
        if chon = 2 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
        if chon = 3 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
      end ;
    if K[a] = 2 then
      begin
        writeln('AI chọn Búa');
        delay(300);
        if chon = 2 then
          begin
            writeln('Hòa');
          end ;
        if chon = 1 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
        if chon = 3 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
      end ;
    if K[a] = 3 then
      begin
        writeln('AI chọn Bao');
        delay(300);
        if chon = 3 then
          begin
            writeln('Hòa');
          end ;
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
        if chon = 2 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
      end ;
    delay(300);
  end;
  begin
    textcolor(lightblue);
    if luotcuaban > luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    if luotcuaban < luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    if luotcuaban = luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' ', 'tỉ số chưa có thay đổi: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
  end;
  delay(3000);
  writeln;
  for c := 1 to 65 do 
    begin
      write('=');
      delay(20);
    end;
  writeln;
  writeln;
  writeln;
  textcolor(lightblue);
  writeln('              (Kéo = 1, Búa = 2 , Bao = 3)');
  writeln('                        Màn 1');
  delay(100);
  writeln('                       Lượt 10');
  luot := luot + 1;
  delay(1000);
  textcolor(White);
  Write('Mời bạn chọn: ');
  readln(chon);
  begin
    if chon = 1 then
      Writeln('Bạn chọn Kéo') ;
    delay(350);
    if chon = 2 then
      writeln('Bạn chọn Búa') ;
    delay(350);
    if chon = 3 then
      writeln('Bạn chọn Bao') ;
    delay(350);
  end;
  begin
    for a := 0 to 1 do 
      begin
        k[a] := Random(4) - random(1);
      end;
    if K[a] = 0 then
      begin
        Writeln('AI chọn Bao');
        delay(300);
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
            if chon = 2 then
              begin
                writeln('AI thắng và ché bạn Gàシ');
                luotcuabot := luotcuabot + 1;
              end ;
            if chon = 3 then
              begin
                Writeln('Hòa');
              end ;
          end ;
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
      end ;
    if K[a] = 1 then
      begin
        writeln('AI chọn Kéo');
        delay(300);
        if chon = 1 then
          begin
            writeln('Hòa');
          end ;
        if chon = 2 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
        if chon = 3 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
      end ;
    if K[a] = 2 then
      begin
        writeln('AI chọn Búa');
        delay(300);
        if chon = 2 then
          begin
            writeln('Hòa');
          end ;
        if chon = 1 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
        if chon = 3 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
      end ;
    if K[a] = 3 then
      begin
        writeln('AI chọn Bao');
        delay(300);
        if chon = 3 then
          begin
            writeln('Hòa');
          end ;
        if chon = 1 then
          begin
            writeln(name, ' thắng');
            luotcuaban := luotcuaban + 1;
          end ;
        if chon = 2 then
          begin
            writeln('AI thắng và chê bạn Gàシ');
            luotcuabot := luotcuabot + 1 
          end ;
      end ;
    delay(300);
  end;
  begin
    textcolor(lightblue);
    if luotcuaban > luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' ', name, ' thắng,tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    if luotcuaban < luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' ', 'AI thắng,tỉ số: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
    if luotcuaban = luotcuabot then
      writeln('Màn ', man, ',', ' Lượt ', luot, ' ', 'Cùng ý tưởng,tỉ số không thay đổi: ', 'Bot ', luotcuabot, ' - ', luotcuaban, ' Bạn') ;
  end;
  delay(3000);
  writeln;
  for c := 1 to 65 do 
    begin
      write('=');
      delay(20);
    end;
  writeln;
  writeln;
  writeln;
  textcolor(lightcyan);
  if luotcuaban > luotcuabot then
    begin
      writeln('Tổng kết lại sau ', luot, ' lượt ', name, ' thắng');
      delay(1000);
      writeln('Đúng là đệ nhất vô nhị:))');
      delay(2000);
      clrscr;
      writeln;
      writeln;
      writeln;
      writeln;
      writeln;
      writeln;
      writeln;
      textcolor(lightblue);
      writeln('                            Tiếng Hoan hô các thứツ');
      delay(1000);
      writeln;
      writeln;
      writeln(' |======================================|');
      delay(20);
      writeln(' |                                      |');
      delay(20);
      writeln(' |                                      |');
      delay(60);
      writeln(' |  Chức mừng ', name, ' chiến thắng        ');
      delay(60);
      writeln(' |   Thành tích của bạn đã              |');
      delay(60);
      writeln(' |    được admin ghi nhớ➣               |');
      delay(60);
      writeln(' |                                      |');
      delay(20);
      writeln(' |                                      |');
      delay(20);
      writeln(' |                                      |');
      delay(20);
      writeln(' |======================================|');
    end ;
  if luotcuabot > luotcuaban then
    begin
      writeln('Tổng kết lại sau ', luot, ' lượt bạn tức ', name, ' đã thua thảm hại trước con Bot có trí tuệ AI bậc caoシ');
      delay(1000);
      write('Gà:))');
    end ;
  textcolor(lightmagenta);
  if luotcuaban = luotcuabot then
    begin
      writeln('Ai rồi cũng cùng đẳng cấp và bạn cũng chỉ có đến thế thôi!');
      delay(200);
      writeln('Sao lại không thắng được bot zạy bro');
      writeln;
      writeln('GÀAAAAAシ');
    end ;
  readln 
end.
