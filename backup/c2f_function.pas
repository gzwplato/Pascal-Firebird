unit c2f_function;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

function c2f(var celsius : double) : double;stdcall;

implementation

function c2f(var celsius : double) : double;stdcall;
var
 f : double;

begin
  r := ((9.0/5.0) * celsius + 32);
  result := r;
end;

end.

