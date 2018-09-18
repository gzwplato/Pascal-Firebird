unit text_test;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

function text(var str : PChar): PChar;stdcall;

implementation
  function text(var str : PChar): PChar;stdcall;
  begin
    result := str;
  end;

end.

