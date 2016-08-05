unit Uteis;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

 { Adiciona a barra invertida ao final de um string }
function AddBackSlash( S : string ) : String;

{ Remove a barra invertida ao final de um string }
function DeleteBackSlash( S : string ) : String;

{ Elimina todas as ocorrencias de um caracter em um string }
function DeleteChar( S :string; ch : char ) : string;

{ Troca todas as ocorrencias de um caracter por outro (chsearch por chchange)}
function ChangeChar( S :string; chsearch, chchange : char ) : string;

{ Transforma String em Inteiro -> Verifica strings vazios }
function StrToInt1 ( S : String ) : longint;

{ Transforma String em Valor -> Verifica strings vazios }
function StrtoVal( S : string ) : double;

{ "Zera" a variavel V, segundo o tamanho TAM}
procedure Zera( var V : string; Tam : integer );

{ Elimina brancos à direita }
function Trim( S : string ) : string;

{ Preenche um string com TAM caracteres em branco }
function Blank ( tam : integer ) :string;

{ Centraliza um string em relacao ao tamanho TAM }
function Center ( S : string; tam : integer ) : string;

{ Verifica se o CGC é válido. -> Verifica somente os numeros, i.e.,
  se encarrega de eliminar os caracteres de formatacao }
function CGCValido( S:string ):boolean;

{ Verifica se o CPF é valido. -> Verifica somente os numeros, i.e.,
  se encarrega de eliminar os caracteres de formatacao}
function CPFValido( S:string ):boolean;

{Verifica se o a data de entrada é válida}
function DataValida(Data:string) : boolean;
// extenso
function extenso (valor: real): string;

implementation

uses SysUtils;

{ Adiciona a barra invertida ao final de um string }
function AddBackSlash( S : string ) : String;
begin
  if S[length(S)]<>'\' then S:=S+'\';
  Result:=S;
end;

{ Remove a barra invertida ao final de um string }
function DeleteBackSlash( S : string ) : String;
begin
  if S[length(S)]='\' then Delete(S,length(S),1);
  Result:=S;
end;

{ Preenche um string com TAM caracteres em branco }
function Blank ( tam : integer ) :string;
var S : string;
begin
  fillchar(S, SizeOf(S), ord(' '));
//  S[0]:=chr(tam);
  Result:=S;
end;

{ Centraliza um string em relacao ao tamanho TAM }
function Center ( S : string; tam : integer ) : string;
var i : integer;
begin
  i:=(tam-length(S)) div 2;
  S:=blank(i)+S;
  Center:=S;
end;

{ Elimina brancos à direita }
function Trim( S : string ) : string;
var i : integer;
begin
  i:=length(S);
  while (i>0) and (S[i]=' ') do dec(i);
  if i=0 then S:='' else S:=copy(S,1,i);
  Result:=S;
end;

{ "Zera" a variavel V, segundo o tamanho TAM}
procedure Zera( var V: string; Tam : integer );
begin
  FillChar( V, Tam, #0 );
end;

{ Elimina todas as ocorrencias de um caracter em um string }
function DeleteChar( S :string; ch : char ) : string;
var i : integer;
begin
  i:=1;
  while (i<=length(S)) do
  begin
    if S[i]=ch then delete(S,i,1)
    else inc(i);
  end;
  DeleteChar:=S;
end;

{ Troca todas as ocorrencias de um caracter por outro (chsearch por chchange)}
function ChangeChar( S :string; chsearch, chchange : char ) : string;
var i : integer;
begin
  i:=1;
  while (i<=length(S)) do
  begin
    if (copy(S,i,Length(chsearch))=chsearch) then S[i]:=chChange;
    inc(i);
  end;
  ChangeChar:=S;
end;

{ Transforma String em Inteiro -> Verifica strings vazios }
function StrToInt1 ( S : String ) : longint;
begin
  S:=DeleteChar(S,' ');
  if S<>'' then
    StrToInt1:=StrToInt( S )
  else
    StrToInt1:=0;
end;

{ Transforma String em Valor -> Verifica strings vazios }
function StrtoVal( S : string ) : double;
var i,err : integer;
    n     : double;
begin
  S:=DeleteChar(S,' ');
  i:=Pos(',',S);
  if i<>0 then S[i]:='.';
  Val( S, n , err );
  StrToVal:=n;
end;

{============================================}
function GetOnlyDigits( var S:string ):string;
var aux : string;
     ch : char;
      i : word;
begin
   aux := '';
   for i := 1 to Length( S ) do begin
      ch := S[i];
      if (ch >= '0') and (ch <= '9') then
         aux := aux + ch;
   end;
   GetOnlyDigits := aux;
end;

function CalcDigVerifCGC( CGC:string ):string;
   var i, d1, Soma : integer;
       S           : string;
   const Dig1 : array[1..13] of byte = (6,5,4,3,2,9,8,7,6,5,4,3,2);
begin
   Soma := 0;
   for i := 2 to 13 do
      Soma := Soma + (ord( CGC[i-1] ) - ord('0')) * Dig1[i];
   d1 := 11 - (Soma mod 11);
   if d1 > 9 then d1 := 0;
   Soma := 2 * d1;
   for i := 1 to 12 do
      Soma := Soma + (ord( CGC[i] ) - ord('0')) * Dig1[i];
   Soma := 11 - (Soma mod 11);
   if Soma > 9 then Soma := 0;
   Soma := d1*10 + Soma;
   Str(Soma:1,S);
   S:='0'+S;
   S:=Copy(S,length(S)-1,2);
   CalcDigVerifCGC := S;
end;

function CalcDigVerifCPF( CPF:string ):string;
   var i, d1, d2, m, o, l : integer;
       s                  : string;
begin
   m := 0;
   o := 0;
   for i := 1 to 9 do begin
      l := ord( CPF[i] ) - ord('0');
      m := m + (l * (11 - i));
      o := o + l;
   end;
   d1 := 11 * (1 + (m div 11)) - m;
   if (d1 > 9) then d1 := 0;
   m := m + o + (2 * d1);
   d2 := 11 * (1 + (m div 11)) - m;
   if (d2 > 9) then d2 := 0;
   m:=d1*10 + d2;
   Str(m:1,S);
   S:='0'+S;
   S:=Copy(S,length(S)-1,2);
   CalcDigVerifCPF := S;
end;

{ Verifica se o CPF é valido. -> Verifica somente os numeros, i.e.,
  se encarrega de eliminar os caracteres de formatacao}
function CPFValido( S:string ):boolean;
   var aux : string;
begin
   S := GetOnlyDigits( S );
   if (Length( S ) <> 11) then
      CPFValido := false
   else begin
      aux := CalcDigVerifCPF( Copy( S, 1, 9 ));
      CPFValido := aux = Copy( S, 10, 2 );
   end;
end;

{ Verifica se o CGC é válido. -> Verifica somente os numeros, i.e.,
  se encarrega de eliminar os caracteres de formatacao }
function CGCValido( S:string ):boolean;
   var aux : string;
begin
   S := GetOnlyDigits( S );
   if (Length( S ) <> 14) then
      CGCValido := false
   else begin
      aux := CalcDigVerifCGC( Copy( S, 1, 12 ));
      CGCValido := aux = Copy( S, 13, 2 );
   end;
end;

function DataValida(Data:string) : boolean;
var Dia : smallint;
    Mes : smallint;
    Ano : smallint;
    bissexto  : boolean;
    valido : boolean;
    i : integer;
begin
  valido := true;
  if Data = '' then  //Se data é NULL
    valido := false
  else
  begin
    for i:=1 to 8 do
    begin
      if Data[i] = ' ' then
        valido := false;
    end;
  end;
  if valido = true then
  begin
    Dia := StrtoInt(Data[1] + Data[2]);
    Mes := StrtoInt(Data[3] + Data[4]);
    Ano := StrtoInt(Data[5] + Data[6] + Data[7] + Data[8]);
    //Verifica se e ano bissexto
    if (Ano mod 4 = 0) then
       bissexto := true
    else
       bissexto := false;

    if (Mes = 0) or ( Mes > 12 ) then
      Valido := False
    else
    begin
      if (Mes = 2) then
      begin
        if bissexto then
        begin
          if not ((Dia >= 1) and (Dia <= 29)) then
            Valido := false
        end
        else
        begin
          if not ((Dia >= 1) and (Dia <= 28)) then
            Valido := false;
        end;
      end
      else if ( (Mes = 1) or (Mes = 3) or (Mes = 5) or (Mes = 7) or (Mes = 8) or (Mes = 10) or (Mes = 12)) then
      begin
        if not ((Dia >= 1) and (Dia <= 31)) then
          Valido := false
      end
      else if ( (Mes = 4) or (Mes = 6) or (Mes = 9) or (Mes = 11) ) then
      begin
        if not ((Dia >= 1) and (Dia <= 30)) then
          Valido := false;
      end;
    end;
  end;
  DataValida := valido;
end;

// extenso
function extenso (valor: real): string;
var
 Centavos, Centena, Milhar, Texto, msg: string;
const
 Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco',
                                    'Seis', 'Sete', 'Oito', 'Nove');
 Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze',
                               'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
 Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta',
                                   'Cinquenta', 'Sessenta', 'Setenta',
                                   'Oitenta', 'Noventa');
 Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos',
                                    'Quatrocentos', 'Quinhentos', 'Seiscentos',
                                    'Setecentos', 'Oitocentos', 'Novecentos');

function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
begin
 if Expressao
  then Result:=CasoVerdadeiro
  else Result:=CasoFalso;
end;

function MiniExtenso (trio: string): string;
var
Unidade, Dezena, Centena: string;
begin
Unidade:='';
Dezena:='';
Centena:='';
if (trio[2]='1') and (trio[3]<>'0') then
 begin
  Unidade:=Dez[strtoint(trio[3])];
  Dezena:='';
 end
else
 begin
  if trio[2]<>'0' then Dezena:=Dezenas[strtoint(trio[2])];
  if trio[3]<>'0' then Unidade:=Unidades[strtoint(trio[3])];
 end;
if (trio[1]='1') and (Unidade='') and (Dezena='')
 then Centena:='cem'
else
 if trio[1]<>'0'
  then Centena:=Centenas[strtoint(trio[1])]
  else Centena:='';

 Result:= Centena + ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '')
          + Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;
end;

begin
if (valor>999999.99) or (valor<0) then
 begin
  msg:='O valor está fora do intervalo permitido.';
  msg:=msg+'O número deve ser maior ou igual a zero e menor que 999.999,99.';
  msg:=msg+' Se não for corrigido o número não será escrito por extenso.';
  Result:='';
  exit;
 end;
if valor=0 then
 begin
  Result:='';
  Exit;
 end;
Texto:=formatfloat('000000.00',valor);
Milhar:=MiniExtenso(Copy(Texto,1,3));
Centena:=MiniExtenso(Copy(Texto,4,3));
Centavos:=MiniExtenso('0'+Copy(Texto,8,2));
Result:=Milhar;
if Milhar<>'' then
  if copy(texto,4,3)='000' then
   Result:=Result+' Mil Reais'
  else
   Result:=Result+' Mil, ';
if (((copy(texto,4,2)='00') and (Milhar<>'')
    and (copy(texto,6,1)<>'0')) or (centavos=''))
    and ((Centena<>'') and (Milhar<>''))  then Result:=Result+' e ';
if (Milhar+Centena <>'') then Result:=Result+Centena;
if (Milhar='') and (copy(texto,4,3)='001') then
  Result:=Result+' Real'
 else
  if (copy(texto,4,3)<>'000') then Result:=Result+' Reais';
if Centavos='' then
 begin
  Result:=Result+'.';
  Exit;
 end
else
 begin
  if Milhar+Centena='' then
    Result:=Centavos
   else
    Result:=Result+', e '+Centavos;
if (copy(texto,8,2)='01') and (Centavos<>'') then
  Result:=Result+' Centavo.'
 else
  Result:=Result+' Centavos.';
end;
end;










end.
