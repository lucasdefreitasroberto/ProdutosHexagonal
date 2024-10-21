program OrionProduct;

uses
  MainUi in '..\external\ui\MainUi.pas' {frmMainUI},
  DashboardUI in '..\external\ui\DashboardUI.pas' {frmDashboard},
  main in '..\main\main.pas',
  MainPresenter in '..\adapters\presenter\MainPresenter.pas',
  Observerabstract in '..\adapters\abstracts\Observerabstract.pas',
  MainPresenterFactory in '..\main\MainPresenterFactory.pas',
  DashboardPresenter in '..\adapters\presenter\DashboardPresenter.pas',
  AppNavigator in '..\main\AppNavigator.pas';

{$R *.res}

begin
  TMain.Initialize;
end.
