PROGRAM FINALALPRO;

uses crt,math;
label s,ketnil,babchoose;
type
pilgan= array [1..5] of char;
jaw= array [1..5] of string;
Lnama=string[20];
var
start,lanjut:char;
i,ist: integer;
st:string[5];
NAMA:Lnama;
BAB:string;


// intro 1 wkwk
procedure intro1;
var x:integer;
begin
    clrscr;
    Randomize;
    for i:=1 to 11 do begin //ini nanti tulisannya turun
    x:=Randomrange(9,14);
    if i=11 then x:=14;
    textcolor(x);
    clrscr;
    if i>7 then begin gotoxy(1,i-7);Writeln('= = = = = = = =     =     =             =           =         =');  end;
    if i>6 then begin gotoxy(1,i-6);Writeln('=                   =     = =           =          = =        =');  end;
    if i>5 then begin gotoxy(1,i-5);Writeln('=                   =     =   =         =         =   =       =');  end;
    if i>4 then begin gotoxy(1,i-4);Writeln('= = = = = = = =     =     =     =       =        = = = =      =');  end;
    if i>3 then begin gotoxy(1,i-3); Writeln('=                   =     =       =     =       =       =     ='); end;
    if i>2 then begin gotoxy(1,i-2);Writeln('=                   =     =         =   =      =         =    =');  end;
    if i>1 then begin gotoxy(1,i-1);Writeln('=                   =     =           = =     =           =   ='); end;
    gotoxy(1,i);Writeln('=                   =     =             =    =             =  = = = = = = = ');
    delay(150);
    end;
    writeLn;
    writeLn;
    for i:=21 downto 12 do begin //ini nanti tulisannya naik
    x:=Randomrange(9,14);
    if i=12 then x:=10;
    textcolor(x);
    delline;
    gotoxy(1,i+3);Writeln('= = = = = =     = = = = = =  = = = = = =           =   = = = = =     = = = = =   = = = = = =');delline;
    gotoxy(1,i+4);Writeln('=         =     =         =  =         =           =   =           =                  =');delline;
    gotoxy(1,i+5);Writeln('=         =     =         =  =         =           =   =           =                  =');delline;
    gotoxy(1,i+6);Writeln('= = = = = =     = = = = = =  =         =           =   = = = = =   =                  =');delline;
    gotoxy(1,i+7);Writeln('=               = =          =         =           =   =           =                  =');delline;
    gotoxy(1,i+8);Writeln('=               =  =         =         =    =      =   =           =                  =');delline;
    gotoxy(1,i+9);Writeln('=               =   =        =         =    =      =   =           =                  =');delline;
    gotoxy(1,i+10);Writeln('=               =    =       = = = = = =     = = = =   = = = = =     = = = = =        =');delline;
    delay(150);
    end;
    delay(1500);
    textcolor(white);
end;

// Intro 2 hehe
procedure intro;
var
teks: string[20];
teks2: string[42];
teks3,teks4:string[30];
posisiKar,i,x,y: integer;

begin
    intro1;
    clrscr;
    teks := '===================';
    teks2 := '=======================================';
    teks3 := 'SELAMAT DATANG DI PROGRAM QUIZ';
    teks4 := '         KELOMPOK 2           ';

    Randomize;
    clrscr;
    // Ngeprint kotakan
    for i:=1 to length(teks) do begin  
        gotoxy(1,i);write(teks[i]);
        delay(60);  
    end;
    for i:=2 to length(teks2) do begin
        gotoxy(i,WhereY);write(teks2[i]);
        delay(60);
    end;
    for i:=length(teks) downto 1 do begin
        gotoxy(40,i);write(teks[i]);
        delay(60);
    end;
    for i:=length(teks2) downto 2 do begin
        gotoxy(i,WhereY);write(teks2[i]);
        delay(60);
    end;
    
    {ngeprint tulisan}
    for i:=1 to length(teks3) do begin
        gotoXY(i+5,9);Write(teks3[i]);
        delay(60);
    end;

    for i:=1 to length(teks4) do begin
        gotoXY(i+6,11);Write(teks4[i]);
        delay(60);
        gotoXY(i+5,10);Write(teks2[i]);
        delay(60);
    end;
    for i:=1 to 19 do begin   //untuk blink blink wkwk
        x:=Randomrange(9,14);
        textcolor(x);
        gotoxy(1,1);
        Writeln('========================================');
        Writeln('=                                      =');
        Writeln('=                                      =');
        Writeln('=                                      =');
        Writeln('=                                      =');    
        Writeln('=                                      =');
        Writeln('=                                      =');    
        Writeln('=                                      =');
        Writeln('=    SELAMAT DATANG DI PROGRAM QUIZ    =');
        Writeln('=    ==============================    =');
        Writeln('=              KELOMPOK 2              =');
        Writeln('=                                      =');
        Writeln('=                                      =');
        Writeln('=                                      =');
        Writeln('=                                      =');
        Writeln('=                                      =');
        Writeln('=                                      =');
        Writeln('=                                      =');
        Writeln('=                                      =');
        Writeln('========================================');
        delay(100);
    end;
    textcolor(white);

end;


// INI BUAT LOADING
procedure loading;
VAR
X,Z:integer;
begin
    clrscr;
    Z:=0;
    textcolor(green);
    gotoxy(36,10);
    writeln('Loading');
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
    textcolor(white);
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
        point:= (benar*20)+(salah*-5)+(kosong*0);
    Writeln('Nama = ',Nama);
    writeLn('===========================');
    Writeln;
    Writeln('Jawaban benar = ', benar);
    Writeln('Jawaban salah = ', salah);
    writeLn('Jawaban dikosongkan = ', kosong);
    writeLn('Point = ',point);
end;

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
            writeLn;textcolor(green);
            write('tekan y untuk kembali = ');readln(kem);textcolor(white);
            if lowercase(kem)='y' then goto u;
        end;
        2:begin 
            jb(jawab,jp);  //menampilkan kunci jawaban
            writeLn; textcolor(green);
            write('tekan y untuk kembali = ');readln(kem);textcolor(white);
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
    st:='START';

    // Masuk Tampilan awal
    Clrscr;
    textbackground(0);
    intro;
    s: 
    clrscr;
    GOTOXY(5,WhereY);Writeln('   PROGRAM QUIZ ALPRO');
    Writeln('==================================');
    GotoXy(5,4); writeLn('------------------------');
    gotoxy(5,5);write('|');
    textbackground(0);
    gotoXY(28,5);Writeln('|');
    GotoXy(5,6); writeLn('------------------------');
    writeLn;
    gotoxy(5,8);Write('Tekan y untuk memulai = ');
    ist:=15;
    for i:=1 to length(st) do  begin     {animasi start}
        delay(500);textbackground(white);textcolor(BLACK);GotoXY(ist,5);Write(st[i]);
        ist:=ist+1;
    end;
    textbackground(0);textcolor(white);gotoxy(29,8);readln(start);

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
    Writeln('|  jawaban benar =  20 poin |');
    Writeln('|  jawaban salah = -5 poin  |');
    Writeln('|  jawaban kosong = 0 poin  |');
    Writeln('============================');
    writeLn;
    textcolor(yellow);Write('Catatan jika ingin mengosongkan jawaban, tekan');textcolor(red);Write(' "spasi" ');
        textcolor(yellow);write('lalu'); textcolor(red);writeln(' "enter"');textcolor(white);
    write('tekan y untuk lanjut = '); readln(lanjut);
    
    if lowercase(lanjut)='y' then 
    begin
    //  Pemilihan subbab soal
        babchoose:
        clrscr;
        writeLn('         BAB SOAL ');
        Writeln('============================');
        Writeln('1. Materi ..');
        Writeln('2. Materi ..');
        Writeln('3. Materi ..');
        Writeln('4. Materi ..');
        Writeln();
        textcolor(yellow);gotoxy(WhereX,9);Writeln('note: cukup tuliskan angkanya saja');
        textcolor(white);gotoxy(WhereX,8);write('Silahkan pilih Bab soal = ');Readln(BAB);
        case bab of     {ini nanti casenya bakal diganti}
            '1': begin loading; soal(NAMA); end;
            '2': begin loading; soal(NAMA); end;
            '3': begin loading; soal(NAMA); end;
            '4': begin loading; soal(NAMA); end;
            else begin
                textcolor(red);gotoxy(WhereX,11);Writeln('error invalid code'); 
                delay(150);textcolor(white);goto babchoose;
            end;
        end;
    end
    else goto ketnil;

end.
