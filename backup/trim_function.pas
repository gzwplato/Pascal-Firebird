unit trim_function;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, crt;

  function ib_util_malloc(l: integer): pointer; cdecl; external 'ib_util.dll';

  function trimc(const s, char : PAnsiChar) : PAnsiChar;stdcall;

implementation

  function trimc(const s, char : PAnsiChar) : PAnsiChar;stdcall;
  var
    str : string;
    strn : string;
    compare : string;
    temp : string = '';
    temp2 : string = '';
    i, i2, len, len2 : integer;

  begin
    str := (string(s));
    strn := (string(char));
    len := Length(str);

    For i:=1 to len do begin
       compare:= Copy(str,i,1);
       if (compare <> strn) then
       begin
            temp := Copy(str,i,len-i + 1);
            break;
       end;
    end;

    len2 := Length(temp);
     For i2:=len2 downto 1 do begin
         compare:= Copy(temp,i2,1);
         if (compare <> strn) then
         begin
              temp2 := Copy(temp,1,i2);
              break;
         end;
      end;
  Result := ib_util_malloc(Length(temp2) + 1);
  StrPCopy(Result, AnsiString(temp2));
  end;

end.

