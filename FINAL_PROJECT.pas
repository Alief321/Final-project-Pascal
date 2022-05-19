PROGRAM FINALALPRO;

uses crt;
label s,ketnil;
type
pilgan= array [1..5] of char;
jaw= array [1..5] of string;
Lnama=string[20];
var
start,lanjut:char;
i,ist: integer;
st:pilgan;
NAMA:Lnama;

// INI BUAT LOADING
procedure loading;
VAR
X,Z:integer;
begin
     clrscr;
     Z:=0;
     gotoxy(36,10);
     writeln('Loading..');
     gotoxy(29,13);
     writeln('---------------------');
     gotoxy(29,14);
     writeln('|');
     gotoxy(50,14);
     writeln('|');
     gotoxy(29,15);
     writeln('---------------------');
 
     for x:=1 to 100 do
    begin
          delay(10);
          gotoxy(38,12);
          writeln(x,' %');
 
          if(x mod 5=0) then
        begin
              z:=z+1;
              gotoxy(29+z,14);
              write('=');
          end;
     end;
end;

// Perhitungan Point
procedure poin(answer,jawab:pilgan; Nama:Lnama);
var
benar,salah,kosong,Point:integer;
begin
    // penghitungan point fix untuk 5 nomer ygy
    benar:=0;
    salah:=0;
    kosong:=0;
    for i:=1 to 5 do begin
        if lowercase(answer[i])=jawab[i] then 
        benar:=benar+1
        else if lowercase(answer[i])=' ' then 
        kosong:=kosong+1
        else 
        salah:=salah+1;
    end;
        point:= benar*3+salah*-1+kosong*0;
    Writeln('Nama = ',Nama);
    writeLn('===========================');
    Writeln;
    Writeln('Jawaban benar = ', benar);
    Writeln('Jawaban salah = ', salah);
    writeLn('Jawaban dikosongkan = ', kosong);
    writeLn('Point = ',point);
end;

// coba edit
// Tampil Kunci Jawaban
procedure jb(jawab:pilgan; jp:jaw);
var i:integer;
begin
    // kunci jawaban fix untuk 5 nomer ygy
    for i:=1 to 5 do begin
        Writeln('Jawaban nomer ',i,' = ', jawab[i],') ',jp[i]);
    end;
end;

// Tampilan setelah soal selesai
procedure closing(answer,jawab:pilgan; NAMA:Lnama; jp:jaw);
label u;
var 
lihat:integer; 
kem:char;
begin
     // TAMPILAN SETELAH SELESAI MENGERJAKAN SOAL
    u:
    clrscr;
    Writeln('1. Lihat jumlah point');
    Writeln('2. Lihat kunci jawaban ');
    Writeln('3. Keluar');
    write('pilih = ');readln(lihat);
    writeLn;

    case lihat of
        1:begin 
            poin(answer,jawab,Nama);  //menampilkan jumlah point
            writeLn;
            write('tekan y untuk kembali = ');readln(kem);
            if lowercase(kem)='y' then goto u;
        end;
        2:begin 
            jb(jawab,jp);  //menampilkan kunci jawaban
            writeLn;
            write('tekan y untuk kembali = ');readln(kem);
            if lowercase(kem)='y' then goto u;
        end;
        3:begin //tampilan keluar
            for i:=17 downto 1 do begin
            clrscr;
            textcolor(green);
            gotoxy(1,i);Writeln('                        Terima kasih');
            gotoxy(1,i+1);Writeln('                  =======================   ');
            gotoxy(20,i+3);Writeln('     Kelompok 2');
            gotoxy(20,i+4);Writeln('1. Aliefta Zulvansyah B.');
            gotoxy(20,i+5);Writeln('2. Hala Mutiara P.'); 
            gotoxy(20,i+6);Writeln('3. Hasan Bahtiar H.');
            gotoxy(20,i+7);Writeln('4. Naufal Fadli M.');
            gotoxy(20,i+8);Writeln('5. Putri Aysyah');delay(200);
            end;
            exit;
        end;
        else begin
            writeLn('Maaf input tidak tersedia'); delay(100);
            goto u;
        end;
    end;
end;

// Contoh Sample Soal
procedure soal(NAMA:string);  
var 
answer,jawab:pilgan;
jp:jaw;
begin

// kunci jawaban
jawab[1]:='a'; jp[1]:='saya bang';
jawab[2]:='b'; jp[2]:='Magelang'; {Lanjutin sampe 5;  Jawab itu kunci buat opsi pilgannya;  jp itu kunci jawaban yang tulisan sebelaeh pilgan}


    clrscr;
    Writeln('Soal 1');
    Writeln('Siapa yang kalo sudah besar cita-citanya jadi pro player epep?');
    Writeln('a. saya bang');
    Writeln('b. bukan saya');
    Writeln('c. kamu bang');
    Writeln('d. aceng');
    writeLn;
    write('jawab = ');readln(answer[1]);
    clrscr;
    Writeln('Soal 2');
    Writeln('Candi Borobudur ada dimana?');
    Writeln('a. Kurang tahu');
    Writeln('b. Magelang');
    Writeln('c. Tidak tahu');
    Writeln('d. YNTKTS');
    writeLn;
    write('jawab = ');readln(answer[2]); {LANJUTIN SAMPE 5 SOAL}
    
    // Masuk tampilan setelah selesai mengerjakan
    closing(answer,jawab,NAMA,jp);
end;

// SOAL BAGIAN 1

// SOAL BAGIAN 2

// SOAL BAGIAN 3

// SOAL BAGIAN 4


// MAIN PROGRAM
begin
    s:
    // indekS start wkkw
    st[1]:='S';
    st[2]:='T';
    st[3]:='A';
    st[4]:='R';
    st[5]:='T';

    // Masuk Tampilan awal
    Clrscr;
    GOTOXY(5,WhereY);Writeln('PROGRAM QUIZ "TIDAK SUSAH"');
    Writeln('==================================');
    gotoxy(3,WhereY);writeLn('Dibuat oleh = Kelompok 2 1KS5');
    GotoXy(5,5); writeLn('------------------------');
    gotoxy(5,6);write('|');
    textbackground(0);
    gotoXY(28,6);Writeln('|');
    GotoXy(5,7); writeLn('------------------------');
    writeLn;
    gotoxy(5,9);Write('Tekan y untuk memulai = ');
    ist:=0;
    for i:=1 to 5 do  begin
        delay(500);textbackground(white);textcolor(BLACK);GotoXY(15+ist,6);Write(st[i]);
        ist:=ist+1;
    end;
    textbackground(0);textcolor(white);gotoxy(29,9);readln(start);

    if (lowercase(start)<>'y') then goto s; 
    loading;
    Writeln;
    Writeln;

    // Masukan Identitas
    clrscr;
    gotoxy(25,12);Write('MASUKKAN NAMA (maks 20 karakter)');
    gotoxy(32,16);Write('____________________');
    gotoxy(32,15);readln(NAMA);
    clrscr;
    loading;

    // Masuk ketentuan nilai quiz
    ketnil:
    clrscr;
    Writeln('      Ketentuan nilai');
    Writeln('============================');
    Writeln('|  jawaban benar =  3 poin  |');
    Writeln('|  jawaban salah = -1 poin  |');
    Writeln('|  jawaban kosong = 0 poin  |');
    Writeln('============================');
    writeLn;
    textcolor(yellow);Write('Catatan jika ingin mengosongkan jawaban, tekan');textcolor(red);Write(' "spasi" ');
        textcolor(yellow);write('lalu'); textcolor(red);writeln(' "enter"');textcolor(white);
    write('tekan y untuk lanjut = '); readln(lanjut);
    
    // Rencana disini nanti lanjut ke pemilihan topik soal
    if lowercase(lanjut)='y' then 
    // Disini nanti ada pemilihan subbab soal
    soal(NAMA)
    else goto ketnil;


end.
