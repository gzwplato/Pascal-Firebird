unit f2c_function;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

function f2c(var fahrenheit : double) : double;stdcall;

implementation

function f2c(var fahrenheit : double) : double;stdcall;
var
  celsius : double;
begin
  celsius := ((5.0/9.0) * (fahrenheit - 32));
  result := celsius;
end;

end.

