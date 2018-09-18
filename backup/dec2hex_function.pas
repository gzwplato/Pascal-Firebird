unit dec2hex_function;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, math, crt, strutils;

  function ib_util_malloc(l: integer): pointer; cdecl; external 'ib_util.dll';

  function dec2hex(var dec : integer) : PAnsiChar;stdcall;

implementation

  function dec2hex(var dec : integer) : PAnsiChar;stdcall;
  var
      h : integer;
      hexes, hex : string;
  begin
       hexes := '0123456789ABCDEF';
       hex := '';

       repeat
         h := dec mod 16;
         dec := dec div 16;
         hex := concat(hexes[h+1], hex);
       until dec < 1;

       result := ib_util_malloc(length(hex) + 1);
       strpcopy(result, ansistring(hex));
  end;

end.

