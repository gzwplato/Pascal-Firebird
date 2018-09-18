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
  f := ((9.0/5.0) * celsius + 32);
  result := f;
end;

end.

