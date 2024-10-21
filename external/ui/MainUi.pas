unit MainUi;

interface

uses
  Forms, System.Classes, Vcl.Controls, Vcl.StdCtrls, MainPresenter,
  AppNavigatorAbstract;

type
  TfrmMainUI = class(TForm)
    btnDashboard: TButton;
  private
    FMainPresenter: IMainPresenter;
    FAppNavigator: IAppNavigator;
    procedure HandleDashboard(Sender: TObject);
  public
    constructor Create(AOwner: TComponent; const MainPresenter: IMainPresenter; const AppNavigator: IAppNavigator); reintroduce;
  end;

implementation

{$R *.dfm}

uses
  AppNavigator, DashboardPresenter;

{ TfrmMainUI }

constructor TfrmMainUI.Create(AOwner: TComponent; const MainPresenter: IMainPresenter; const AppNavigator: IAppNavigator);
begin
  inherited Create(AOwner);

  FMainPresenter := MainPresenter;
  FAppNavigator := AppNavigator;
  btnDashboard.OnClick := Self.HandleDashboard;
end;

procedure TfrmMainUI.HandleDashboard(Sender: TObject);
begin
  FAppNavigator.OpenDashboardUI
end;

end.

