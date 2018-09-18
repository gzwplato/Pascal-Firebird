unit pmt_function;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Math;

function pmt(var tasa, periodos, valor : double) : double;stdcall;

implementation

function pmt(var tasa, periodos, valor : double) : double;stdcall;
var
  t,p,v,r : double;
begin
  t := tasa/12;
  p := periodos*12;
  v := valor;

  r := (t*v)/(1 - (power(1+t,(-p))));

  result := r;
end;

end.

