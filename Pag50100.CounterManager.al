page 50100 "Counter Manager"
{

    Caption = 'Counter Manager';
    PageType = Document;
    ApplicationArea = Suite;
    UsageCategory = Tasks;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Counter; CounterManagement.GetCurrentCounter())
                {
                    ApplicationArea = All;
                    Caption = 'Current Counter';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(IncrementCounter)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Increment Global Counter';
                Image = Add;
                trigger OnAction()
                begin
                    CounterManagement.Increment();
                    CurrPage.Update();
                end;
            }
            action(DecrementCounter)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Decrement Global Counter';
                Image = Delete;
                trigger OnAction()
                begin
                    CounterManagement.Decrement();
                    CurrPage.Update();
                end;
            }
        }
    }
    var
        CounterManagement: Codeunit "Counter Management";
}
