unit test_function;

{$mode objfpc}{$H+}

interface

  uses
  Classes, SysUtils;

  function test(var x : integer):integer;stdcall;

implementation
  function test(var x : integer):integer;stdcall;
  begin
    result := x*10;
  end;
end.

