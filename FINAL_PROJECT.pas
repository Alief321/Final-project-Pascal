PROGRAM FINALALPRO;

uses crt,math;
label s,ketnil,babchoose;
type
jaw= array [1..5] of string;
Lnama=string[20];
var
i,ist: integer;
st:string[5];
NAMA:Lnama;
start,lanjut:string;

// intro 1 :D
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
    if i>4 then begin gotoxy(1,i-4);Writeln('= = = = = = = =     =     =     =       =        =     =      =');  end;
    if i>3 then begin gotoxy(1,i-3); Writeln('=                   =     =       =     =       = = = = =     ='); end;
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
    textcolor(x);delline;
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
    delay(1000);textcolor(white);
end;

// Intro 2 hehe
procedure intro;
var
teks: string[20];
teks2: string[42];
teks3,teks4:string[30];
i,x,y: integer;

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
        x:=Randomrange(9,14);textcolor(x);
        gotoxy(1,i);write(teks[i]);delay(25);  
    end;
    for i:=2 to length(teks2) do begin
        x:=Randomrange(9,14);textcolor(x);
        gotoxy(i,WhereY);write(teks2[i]);delay(20);
    end;
    for i:=length(teks) downto 1 do begin
        x:=Randomrange(9,14);textcolor(x);
        gotoxy(40,i);write(teks[i]);delay(25);
    end;
    for i:=length(teks2) downto 2 do begin
        x:=Randomrange(9,14);textcolor(x);
        gotoxy(i,WhereY);write(teks2[i]);delay(20);
    end;
    
    {ngeprint tulisan}
    for i:=1 to length(teks3) do begin
        x:=Randomrange(9,14); textcolor(x);
        gotoXY(i+5,9); Write(teks3[i]); delay(25);
    end;

    for i:=1 to length(teks4) do begin
        x:=Randomrange(9,14); textcolor(x);
        gotoXY(i+6,11);Write(teks4[i]);delay(25);
        gotoXY(i+5,10);Write(teks2[i]);delay(25);
    end;
    for i:=1 to 20 do begin   //untuk blink blink wkwk
        x:=Randomrange(10,15);
        y:=Randomrange(0,7);
        textcolor(x);
        textbackground(y);
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
        delay(80);
    end;
    delay(1000); textcolor(white);textbackground(BLACK);
end;

// INI BUAT LOADING
procedure loading;
VAR
X,Z:integer;
begin
    clrscr; Z:=0;
    textcolor(green); gotoxy(9,1); writeln('Memuat..');
    gotoxy(1,3); writeln('---------------------');
    gotoxy(1,4); writeln('|');
    gotoxy(22,4); writeln('|');
    gotoxy(1,5); writeln('---------------------');
    
    for x:=1 to 100 do
    begin
        delay(1); gotoxy(10,2); writeln(x,' %');
        if(x mod 5=0) then
        begin
            z:=z+1; gotoxy(1+z,4); write('=');
        end;
    end;
    textcolor(white);
end;

// Perhitungan Point
procedure poin(answer,jawab:jaw; Nama:Lnama);
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
procedure jb(jawab,jp:jaw);
var i:integer;
begin
    // kunci jawaban fix untuk 5 nomer ygy
    for i:=1 to 5 do begin
        Writeln('Jawaban nomer ',i,' = ', jawab[i],') ',jp[i]);
    end;
end;


// Tampilan setelah soal selesai
procedure pilihBab;forward;
procedure closing(answer,jawab,jp:jaw; NAMA:Lnama);
label u,hitpoint,kuncjaw;
var 
x:integer; 
kem,lihat:string;
begin
     // TAMPILAN SETELAH SELESAI MENGERJAKAN SOAL
    u:
    clrscr;
    Writeln('1. Lihat jumlah point');
    Writeln('2. Lihat kunci jawaban ');
    Writeln('3. Kembali ke Menu Pilih Soal');
    Writeln('4. Keluar');
    write('pilih = ');readln(lihat);
    writeLn;

    case lihat of
        '1':begin 
            Hitpoint:
            clrscr;
            poin(answer,jawab,Nama);  //menampilkan jumlah point
            writeLn;textcolor(green);
            write('tekan y untuk kembali = ');readln(kem);textcolor(white);
            if lowercase(kem)='y' then goto u
            else begin
                textcolor(red);Writeln('Error invalid input');delay(500);
                textcolor(white);goto Hitpoint;
            end;
        end;
        '2':begin
            kuncjaw:
            clrscr; 
            jb(jawab,jp);  //menampilkan kunci jawaban
            writeLn; textcolor(green);
            write('tekan y untuk kembali = ');readln(kem);textcolor(white);
            if lowercase(kem)='y' then goto u
            else begin
                textcolor(red);Writeln('Error invalid input');delay(500);
                textcolor(white);goto kuncjaw;
            end;
        end;
        '3':begin
            Clrscr; loading; clrscr;
            pilihBab;
        end;
        '4':begin //tampilan keluar
            for i:=17 downto 1 do begin
            clrscr;
            x:=Randomrange(9,15);
            textcolor(x);
            gotoxy(1,i);Writeln('                        Terima kasih');
            gotoxy(1,i+1);Writeln('                  =======================   ');
            gotoxy(20,i+3);Writeln('     Kelompok 2');
            gotoxy(20,i+4);Writeln('1. Aliefta Zulvansyah B.');
            gotoxy(20,i+5);Writeln('2. Hala Mutiara P.'); 
            gotoxy(20,i+6);Writeln('3. Hasan Bahtiar H.');
            gotoxy(20,i+7);Writeln('4. Naufal Fadli M.');
            gotoxy(20,i+8);Writeln('5. Putri Aysyah');delay(200);
            end;
            delay(1000); exit;
            exit;
        end;
        else begin
            textcolor(red);writeLn('Maaf input tidak tersedia'); delay(100);
            textcolor(white);goto u;
        end;
    end;
end;

// Gate Check
function check(var a:string; x:integer):string;
label sini;
begin   sini:
        textcolor(yellow); gotoxy(1,x); write('Jawab = '); readln(a); 
        if ((lowercase(a)<>'a') and (lowercase(a)<>'b') and (lowercase(a)<>'c') and (lowercase(a)<>'d') and (lowercase(a)<>' ')) then begin
            textcolor(red); gotoxy(1,x);Write('Error Invalid Input');
            delay(200);delline; goto sini;
        end;
    textcolor(white); check:=lowercase(a); 
end;


// SOAL BAGIAN 1
procedure soal1(NAMA:string);  
var 
answer,jawab,jp:jaw;
begin

// kunci jawaban
    jawab[1]:='c'; jp[1]:='Rekursi';
    jawab[2]:='a'; jp[2]:='Urutan langkah logis untuk menyelesaikan masalah';
    jawab[3]:='d'; jp[3]:='Reserve Word';
    jawab[4]:='a'; jp[4]:='0011 1100';
    jawab[5]:='d'; jp[5]:='Real';

    clrscr;
    Writeln('SOAL 1');writeLn;
    Writeln('Dibawah ini yang bukan struktur dasar algoritma adalah...');
    Writeln('a. Runtunan');
    Writeln('b. Pemilihan');
    Writeln('c. Rekursi');
    Writeln('d. Pengulangan');
    answer[1]:=check(answer[1],9);
    clrscr;
    Writeln('SOAL 2');writeLn;
    Writeln('Apa yang dimaksud dengan algoritma ?');
    Writeln('a. Urutan langkah logis untuk menyelesaikan masalah');
    Writeln('b. Langkah-langkah praktis');
    Writeln('c. Cara untuk menambah masalah');
    Writeln('d. Syntax yang susah dimengerti');
    answer[2]:=check(answer[2],9);
    clrscr;
    Writeln('SOAL 3');writeLn;
    Writeln('Kata-kata yang sudah didefinisikan oleh Pascal yang memiliki maksud tertentu dan tidak boleh digunakan dalam identifier disebut...');	
    Writeln('a. Operator word') ;  
    Writeln('b. Langkah-langkah praktis');
    Writeln('c. Syntax');
    Writeln('d. Reserve word');
    answer[3]:=check(answer[3],9);
    clrscr;
    Writeln('SOAL 4');writeLn;
    Writeln('Bilangan biner dari 60 adalah...');
    Writeln('a. 0011 1100');    
    Writeln('b. 1100 0011');
    Writeln('c. 0000 1101');
    Writeln('d. 1101 0000');
    answer[4]:=check(answer[4],9);
    clrscr;
    Writeln('SOAL 5');writeLn;
    Writeln('Dibawah ini yang tidak termasuk tipe data Ordinal adalah...');
    Writeln('a. Subrange');    
    Writeln('b. Integer');
    Writeln('c. Karakter');  
    Writeln('d. Real');
    answer[5]:=check(answer[5],9);

    // Masuk tampilan setelah selesai mengerjakan 
    closing(answer,jawab,jp,NAMA);
end;

// SOAL BAGIAN 2
procedure soal2(NAMA:string);  
var 
answer,jawab,jp:jaw;
begin

// kunci jawaban
    jawab[1]:='b'; jp[1]:='Berjenjang';
    jawab[2]:='a'; jp[2]:='r=0';
    jawab[3]:='d'; jp[3]:='Polstat STIS Polstat STIS Polstat STIS Oke';
    jawab[4]:='d'; jp[4]:='Double';
    jawab[5]:='d'; jp[5]:='a/b';
    
    clrscr;
    Writeln('SOAL 1');writeLn;
    writeln('Pernyataan seperti di bawah ini');
    writeln('If kondisi then aksi1');
    writeln('Else if kondisi2 then aksi2');
    gotoxy(wherex+3,wherey);writeln('Else if kondisi3 then aksi3');
    writeln('Dan seterusnya disebut dengan pernyataan IF THEN ELSE ...');
    writeln('a. Bersarang');
    writeln('b. Berjenjang');
    writeln('c. Beranak-pinak ');
    writeln('d. Berganda ');
    answer[1]:=check(answer[1],13); 
    clrscr;
    Writeln('SOAL 2');writeLn;
    writeln('Berdasarkan struktur pilihan berikut, nilai indentifier r yang akan ditampilkan adalah ...');
    writeln('P:=1; q:=2; r:=0;');
    writeln('If (p<>1) then');
    gotoxy(wherex+3,wherey);writeln('If (q<>2) then');
    gotoxy(wherex+6,wherey);writeln('r:=r+1');
    writeln('else');
    gotoxy(wherex+3,wherey);writeln('r:=r+2;');
    writeln('writeln(`r= `,r)');
    writeln('a. r=0');
    writeln('b. r=1');
    writeln('c. r=2');
    writeln('d. r=3');
    answer[2]:=check(answer[2],16); 
    clrscr;
    Writeln('Soal 3');writeLn;
    writeln('Output dari cuplikan pengulangan berikut adalah ...');
    writeln;
    writeln('For i:= 1 to 3 do');
    writeln('Write(`Polstat STIS `);');
    writeln('Writeln(`Oke`);');
    writeln('a. Polstat STIS');
    gotoxy(wherex+3,wherey);writeln('Oke');
    gotoxy(wherex+3,wherey);writeln('Polstat STIS');
    gotoxy(wherex+3,wherey);writeln('Oke');
    gotoxy(wherex+3,wherey);writeln('Polstat STIS');
    gotoxy(wherex+3,wherey);writeln('Oke');
    writeln('b. Polstat STIS');
    gotoxy(wherex+3,wherey);writeln('Polstat STIS');
    gotoxy(wherex+3,wherey);writeln('Polstat STIS');
    gotoxy(wherex+3,wherey);writeln('Oke');
    writeln('c. Polstat STIS Oke');
    gotoxy(wherex+3,wherey);writeln('Polstat STIS Oke');
    gotoxy(wherex+3,wherey);writeln('Polstat STIS Oke');
    writeln('d. Polstat STIS Polstat STIS Polstat STIS Oke');
    answer[3]:=check(answer[3],23); 
    clrscr;
    Writeln('Soal 4');writeLn;
    writeln('For i:= awal to akhir do ...');
    writeln('Tipe data yang tidak dapat digunakan untuk variable i adalah ...');
    writeln('a. Boolean');
    writeln('b. Char');
    writeln('c. Subrange');
    writeln('d. Double');
    answer[4]:=check(answer[4],10); 
    clrscr;
    Writeln('Soal 5');writeLn;
    writeln('Lihat cuplikan program di bawah ini...');
    writeln;
    writeln('Case ekspresi of');
    writeln('. . .');
    writeln;
    writeln('Yang pasti error dari ekspresi adalah ?');
    writeln('a. Ord(a)');
    writeln('b. a mod b');
    writeln('c. a div b');
    writeln('d. a/b');
    answer[5]:=check(answer[5],14); 
    
    // Masuk tampilan setelah selesai mengerjakan
    closing(answer,jawab,jp,NAMA);
end;

 // SOAL BAGIAN 3
procedure soalBag3(NAMA:string);  
var 
answer,jawab,jp:jaw;
begin 

// kunci jawaban
    jawab[1]:='a'; jp[1]:='abcaba';
    jawab[2]:='a'; jp[2]:='merupakan fungsi kubik (pangkat 3) dari n';
    jawab[3]:='b'; jp[4]:='Standart & user defined';
    jawab[4]:='b'; jp[3]:='Procedure tidak mengembalikan suatu nilai,function mengembalikan suatu nilai';
    jawab[5]:='b'; jp[5]:='enumerated,subrange type';

    clrscr;
    Writeln('Soal 1'); writeLn;
    Writeln('Program CetakHuruf');
    writeln('Var a,b: char;');
    writeln('Begin');
    writeln('For a:= `c` downto `a` do ');
    writeln('Begin');
    writeln('For b:= `a` to a do');
    writeln('write(b);');
    writeln('End;');
    writeln('End.');
    writeln;
    writeln('Output dari program berikut adalah');
    Writeln('a. abcaba');
    Writeln('b. abc');
    Writeln('   ab');
    Writeln('   a');
    Writeln('c. abcabc');
    Writeln('d. a');
    Writeln('   ab');
    Writeln('   abc');
    answer[1]:=check(answer[1],23); 
    clrscr;
    Writeln('Soal 2');writeLn;
    Writeln('for i := 1 to n do begin');
    writeln('   for j := 1 to n do begin ');
    writeln('       for k := 1 to n do begin');
    writeln('           writeln(`*`);');
    writeln('       end; ');
    Writeln('   end; ');
    writeln('end; ');
    Writeln;
    writeln('dengan sembarang harga n > 0, keluaran `*` akan dicetak berulang-ulang dalam sejumlah baris yang ...');
    Writeln('a. merupakan fungsi kubik (pangkat 3) dari n');
    Writeln('b. merupakan fungsi kuadrat dari n ');
    Writeln('c. merupakan fungsi linier dari n');
    Writeln('d. merupakan konstanta');
    answer[2]:=check(answer[2],17); 
    clrscr;
    Writeln('Soal 3');writeLn;
    Writeln('Tipe data/jenis data sederhana dapat digolongkan menjadi tipe data...');
    Writeln('a.Standar & Terstruktur');
    Writeln('b.Standar & User Defined');
    Writeln('c.Pointer & user Defined');
    Writeln('d.Record & Array');
    answer[3]:=check(answer[3],9); 
    clrscr;
    Writeln('Soal 4');writeLn;
    Writeln('Beda Procedure dengan Function adalah ...');
    Writeln('a.Procedure mengembalikan suatu nilai, sedangkan function tidak');
    Writeln('b.Procedure tidak mengembalikan suatu nilai, function mengembalikan suatu nilai');
    Writeln('c.Procedure dan function mengembalikan suatu nilai');
    Writeln('d.Procedure dan function tidak mengembalikan suatu nilai');
    answer[4]:=check(answer[4],9); 
    clrscr;
    Writeln('Soal 5');writeLn;
    Writeln('Yang termasuk user defined data type/tipe data didefinikan pemakai adalah:');
    Writeln('a.Array, record, subrange type');
    Writeln('b.Enumerated, subrange type');
    Writeln('c. Integer, real, string');
    Writeln('d.Enumerated, real, string');
    answer[5]:=check(answer[5],9); 


    // Masuk tampilan setelah selesai mengerjakan
    closing(answer,jawab,jp,NAMA);
end;

// SOAL BAGIAN 4
procedure soal4(NAMA:string);  
var 
answer,jawab,jp:jaw;
begin

// kunci jawaban
    jawab[1]:='b'; jp[1]:='Elemen array diakses menggunakan namaArray.Namafield, sedangkan record diakses menggunakan namaRecord[..].';
    jawab[2]:='d'; jp[2]:='Base case sudah tercapai'; 
    jawab[3]:='a'; jp[3]:='ArraySatu : Array[Absen]';
    jawab[4]:='b'; jp[4]:='DataMahasiswa = Record             NIM:Integer;Nama:String[15];Nilai:Real;             End;';
    jawab[5]:='d'; jp[5]:='Arr : Array [1..20]';

    clrscr;
    Writeln('Soal 1');writeLn;
    Writeln('Pernyataan berikut tentang record dan array yang salah adalah?');
    Writeln('a. Berbeda dengan array, record terdiri dari kumpulan elemen dengan tipe data yang bisa berbeda');
    Writeln('b. Elemen array diakses menggunakan namaArray.Namafield, sedangkan record diakses menggunakan namaRecord[..]');
    Writeln('c. Elemen dari record dapat berupa array, dan elemen dari array dapat berupa record');
    Writeln('d. Record termasuk ke dalam structured data types, sedangkan array bukan');
    answer[1]:=check(answer[1],9); 
    clrscr;
    Writeln('Soal 2');writeLn;
    Writeln('Suatu program rekursi akan berhenti atau selesai jika...');
    Writeln('a. Tidak ada base case');
    Writeln('b. Base case belum tercapai');
    Writeln('c. Base case tidak terdefinisi');
    Writeln('d. Base case sudah tercapai');
    answer[2]:=check(answer[2],9); 
    clrscr;
    Writeln('Soal 3');writeLn;
    Writeln('Jika diberikan potongan deklarasi Type berikut :');
    Writeln('   TYPE');
    Writeln('   Absen = 1..38');
    Writeln('   Jurusan = (D3, ST, KS)');
    Writeln('Maka deklarasi Array berikut yang tidak benar adalah...');
    Writeln('a. ArraySatu : Array[Absen]');
    Writeln('b. ArraySatu : Array[Jurusan] of Integer');
    Writeln('c. ArraySatu : Array[1..20] of Absen');
    Writeln('d. ArraySatu : Array[Absen] of Integer');
    answer[3]:=check(answer[3],13); 
    clrscr;
    Writeln('Soal 4');writeLn;
    Writeln('Deskripsi tipe data record yang benar adalah...');
    Writeln('a. DataMahasiswa = Record ');
    Writeln('   Begin');
    Writeln('       NIM:Integer;Nama:String[15];Nilai:Real;');
    Writeln('   End;');
    Writeln('b. DataMahasiswa = Record ');
    Writeln('       NIM:Integer;Nama:String[15];Nilai:Real;');
    Writeln('   End;');
    Writeln('c. DataMahasiswa : Record ');
    Writeln('   Begin');
    Writeln('       NIM:Integer;Nama:String[15];Nilai:Real;');
    Writeln('   End;');
    Writeln('d. DataMahasiswa : Record ');
    Writeln('       NIM:Integer;Nama:String[15];Nilai:Real;');
    Writeln('   End;');
    answer[4]:=check(answer[4],19); 
    clrscr;
    Writeln('Soal 5');writeLn;
    Writeln('Berikut penulisan program array yang benar, kecuali...');
    Writeln('a. Arr : Array [1..100] of integer');
    Writeln('b. Arr : Array [1..4] of String[2]=(`A`,`B`,`AB`,`O`)');
    Writeln('c. Arr : Array [1..20] of real');
    Writeln('d. Arr : Array [1..20]');
    answer[5]:=check(answer[5],9); 
    // Masuk tampilan setelah selesai mengerjakan
    closing(answer,jawab,jp,NAMA);
end;

procedure pilihBab;
label babchoose;
var bab:string;
begin
        //  Pemilihan subbab soal
        babchoose:
        clrscr;
        writeLn('         BAB SOAL ');
        Writeln('============================'); textcolor(11);
        Writeln('1. Dasar-Dasar Pemrograman dan Arsitektur Data');
        Writeln('2. Pemilihan dan Pengulangan Tunggal (Conditional dan Looping)');
        Writeln('3. Pengulangan (Nested Loop), Enumerated dan Subrange, serta Subprogram');
        Writeln('4. Array dan Record');
        textcolor(yellow);writeLn;
        textcolor(yellow);gotoxy(WhereX,9);Writeln('note: cukup tuliskan angkanya saja');
        textcolor(white);gotoxy(WhereX,8);write('Silahkan pilih Bab soal = ');Readln(BAB);
        case bab of     {ini nanti casenya bakal diganti}
            '1': begin loading; soal1(NAMA); end;
            '2': begin loading; soal2(NAMA); end;
            '3': begin loading; soalbag3(NAMA); end;
            '4': begin loading; soal4(NAMA); end;
            else begin
                textcolor(red);gotoxy(WhereX,11);Writeln('error invalid code'); 
                delay(150);textcolor(white);goto babchoose;
            end;
        end;
    end;


{       MAIN PROGRAM      }
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
    textbackground(0); gotoXY(28,5);Writeln('|');
    GotoXy(5,6); writeLn('------------------------');
    writeLn;
    gotoxy(5,8);Write('Tekan y untuk memulai = ');
    ist:=15;
    for i:=1 to length(st) do  begin     {animasi start}
        delay(500);textbackground(white);textcolor(BLACK);GotoXY(ist,5);Write(st[i]);
        ist:=ist+1;
    end;
    textbackground(0);textcolor(white);gotoxy(29,8);readln(start);

    if (lowercase(start)<>'y') then begin 
        textcolor(red); gotoxy(5,10);writeln('error invalid input'); delay(150);textcolor(white);goto s;
    end; 
    loading;

    // Masukan Identitas
    clrscr;
    gotoxy(1,1);Write('MASUKKAN NAMA (maks 20 karakter)');
    gotoxy(6,5);Write('____________________');
    gotoxy(6,4);readln(NAMA);
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
    
    if lowercase(lanjut)='y' then pilihBab
    else begin 
        textcolor(red);writeln('error invalid input'); delay(150);textcolor(white);goto ketnil;
    end;
end.
