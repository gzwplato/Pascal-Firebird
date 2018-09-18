unit bin2dec_function;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, crt, math;

  function bin2dec(var bin : integer) : integer;stdcall;

implementation

function bin2dec(var bin : integer) : integer;stdcall;
var
  bin_string : string;
  i, b, len : byte;
  cont : double = 0;
  r : integer;
begin
  bin_string := IntToStr(bin);
  len := Length(bin_string);

  for i := len downto 1 do
  begin
    Val(bin_string[i], b);
    cont += b*power(2,(len - i));
  end;
  r := StrToInt(FloatToStr(cont));
  result := r;
end;

end.

