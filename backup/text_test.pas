unit text_test;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

function text(var str : PChar): string;stdcall;

implementation
  function text(var str : PChar): string;stdcall;
  begin
    result := str;
  end;

end.

