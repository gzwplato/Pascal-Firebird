unit ping_function;

{$mode objfpc}{$H+}

interface

  uses
  Classes, SysUtils, pingsend;

  function ib_util_malloc(l: integer): pointer; cdecl; external 'ib_util.dll';

  function ping(var ip : PAnsiChar) : integer;stdcall;

implementation
  function ping(var ip : PAnsiChar) : integer;stdcall;

  var
    myPingSend : TPingSend;
    s : string;

  begin
    myPingSend := TPingSend.Create;
    s := string(ip);
    try
    myPingSend.Timeout := 2000;
      if myPingSend.Ping(s) = True then
         begin
           result := 1;
         end
         else
         begin
           result := 0;
         end;
      finally
     myPingSend.Free;
     end;
end;
end.

