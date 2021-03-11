codeunit 50100 "Counter Management" implements ICounterManagement
{
    SingleInstance = true;

    var
        counter: Integer;

    procedure Increment()
    begin
        counter += 1;
    end;

    procedure Decrement()
    begin
        counter -= 1;
    end;

    procedure GetCurrentCounter(): Integer
    begin
        exit(counter);
    end;
}



