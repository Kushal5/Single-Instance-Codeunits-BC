interface ICounterManagement
{
    procedure Increment();
    procedure Decrement();

    procedure GetCurrentCounter(): Integer;
}
