unit pmt_function;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Math;

function pmt(var tasa, periodos, valor : integer) : integer;stdcall;

implementation

function pmt(var tasa, periodos, valor : integer) : integer;stdcall;
var
  t,p,v,r : integer;
begin
  t := tasa div 12;
  p := periodos*12;
  v := valor;

  r := (t*v) div (1 - (power(1+t,(-p))));

  result := r;
end;

end.

