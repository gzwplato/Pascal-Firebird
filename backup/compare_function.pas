unit compare_function;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

  function compare(const str1, str2 : PAnsiChar) : integer;stdcall;

implementation

  function compare(const str1, str2 : PAnsiChar) : integer;stdcall;
  var
    comp : integer;

  begin
    comp := comparestr(str1, str2);

    if comp > 0 then
      begin
        result := 1;
      end
    else if comp < then
      begin
        result := -1;
      end
    else
      begin
        result := 0;
      end;
  end;

end.

