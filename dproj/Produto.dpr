program Produto;

uses
  Vcl.Forms,
  Produtos in 'Produtos.pas' {frmPrincipal},
  dm in '..\dm\dm.pas' {DMConexao: TDataModule},
  ProdutosData in '..\produtos\interactors\structs\ProdutosData.pas',
  IBXProdutosRepository in '..\produtos\external\repositories\IBXProdutosRepository.pas',
  ProdutosControllerAbstract in '..\produtos\adapters\abstracts\ProdutosControllerAbstract.pas',
  ProdutosControllerFactoryAbstract in '..\produtos\adapters\abstracts\ProdutosControllerFactoryAbstract.pas',
  ProdutosRepositoryAbstract in '..\produtos\interactors\abstracts\Repository\ProdutosRepositoryAbstract.pas',
  ProdutosService in '..\produtos\external\services\ProdutosService.pas',
  ProdutosUseCaseAbstract in '..\produtos\interactors\abstracts\UseCase\ProdutosUseCaseAbstract.pas',
  ListarProdutosUseCase in '..\produtos\interactors\ListarProdutosUseCase.pas',
  ProdutosPresenter in '..\produtos\adapters\presentation\ProdutosPresenter.pas',
  ProdutosControllerFactory in '..\produtos\main\ProdutosControllerFactory.pas',
  ProdutoUI in '..\produtos\external\ui\ProdutoUI.pas' {frmProdutoUI};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.Run;
end.
