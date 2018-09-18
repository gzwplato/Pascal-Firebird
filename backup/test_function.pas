unit test_function;

{$mode objfpc}{$H+}

interface

  uses
  Classes, SysUtils;

  function test(var x,y : integer):integer;stdcall;

implementation
  function test(var x,y : integer):integer;stdcall;
  begin
    result := x + y;
  end;
end.

