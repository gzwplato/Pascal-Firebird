unit repeat_function;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

  function ib_util_malloc(l: integer): pointer; cdecl; external 'ib_util.dll';

  function repetir(const rep : PAnsiChar; var times : integer) : PAnsiChar;stdcall;

implementation

  function repetir(const rep : PAnsiChar; var times : integer) : PAnsiChar;stdcall;

  var
    input : string;
    i : integer;
    res : string = '';
    s : string = '';

    begin
      input := (string(rep));

      s := input;

      for i := 1 to times do
      begin
        res := res + s;
      end;
      result := ib_util_malloc(Length(res) + 1);
      StrPCopy(result, AnsiString(res));
    end;

end.

