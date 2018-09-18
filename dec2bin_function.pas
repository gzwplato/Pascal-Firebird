unit dec2bin_function;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, crt;

  function dec2bin(var dec : integer) : integer;stdcall;

implementation

function dec2bin(var dec : integer) : integer;stdcall;
var
  i, d : integer;
  r_str : String = '';
  str : String = '';
  st : String = '';
begin
  while dec > 0 do
  begin
    d := dec mod 2;
    dec := dec div 2;
    st := IntToStr(d);
    str := str + st;
  end;

  for i := 0 to (Length(str) - 1) do
  begin
    r_str += Copy(str, Length(str) - i, 1);
  end;

  result := StrToInt(r_str);
end;
end.
