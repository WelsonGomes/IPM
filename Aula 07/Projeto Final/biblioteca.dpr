program biblioteca;

uses
  Forms,
  unFrPrincipal in 'unFrPrincipal.pas' {frPrincipal},
  unDataModule in 'unDataModule.pas' {dm: TDataModule},
  unFrCliente in 'unFrCliente.pas' {frCliente},
  unFrLivro in 'unFrLivro.pas' {frLivro},
  unFrEmprestimos in 'unFrEmprestimos.pas' {frEmprestimos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrCliente, frCliente);
  Application.CreateForm(TfrLivro, frLivro);
  Application.CreateForm(TfrEmprestimos, frEmprestimos);
  Application.Run;
end.
