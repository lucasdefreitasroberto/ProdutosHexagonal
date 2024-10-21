unit Main;

interface

uses
  MainUi, Forms;

type
  IMain = interface
    ['{BFB4F478-AC06-4296-BB97-773898D4E091}']
    procedure Initialize;
  end;

type
  TMain = class(TInterfacedObject, IMain)
  private
    FrmMainUI: TfrmMainUI;

    constructor Create;
  public
    procedure Initialize;
    class function New: IMain;
  end;

implementation

uses
  MainPresenter, AppNavigator;

{ TMain }

constructor TMain.Create;
begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.ShowMainForm := False;

  FrmMainUI := TfrmMainUI.Create(Application, TMainPresenter.New, TAppNavigator.New);
end;

class function TMain.New: IMain;
begin
  Result := Self.Create;
end;

procedure TMain.Initialize;
begin
  try
    FrmMainUI.ShowModal;
  finally
    FrmMainUI.Free;
  end;
end;

end.

