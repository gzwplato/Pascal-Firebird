unit PING;

{$mode objfpc}{$H+}

interface

  uses
  Classes, SysUtils, pingsend;

  function ping(var ip : string) : integer;stdcall;

implementation
  function ping(var ip : string) : integer;stdcall;

  var
    myPingSend : TPingSend;

  begin
    myPingSend := TPingSend.Create;
    try
    myPingSend.Timeout := 2000;
      if myPingSend.Ping(ip) = True then
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

