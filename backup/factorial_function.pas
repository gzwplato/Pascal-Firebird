unit factorial_function;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

function factorial(var number : integer) : integer;stdcall;

implementation

function factorial(var number : integer) : integer;stdcall;
var
i,r : integer;
begin
  r := 1;
  for i := 1 to number do
  begin
    r := r*i;
  end;

  result := r;
end;

end.

