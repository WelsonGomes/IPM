unit unFrPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, unDataModule, StdCtrls, Buttons, unFrCliente, unFrLivro,
  unFrEmprestimos;

type
  TfrPrincipal = class(TForm)
    btnClientes: TBitBtn;
    btnLivros: TBitBtn;
    btnEmprestimo: TBitBtn;
    actlstPrincipal: TActionList;
    actClientes: TAction;
    actLivros: TAction;
    actEmprestimos: TAction;
    procedure actClientesExecute(Sender: TObject);
    procedure actLivrosExecute(Sender: TObject);
    procedure actEmprestimosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

procedure TfrPrincipal.actClientesExecute(Sender: TObject);
begin
  //Exibi��o do formul�rio dos clientes
  frCliente.ShowModal;
end;

procedure TfrPrincipal.actLivrosExecute(Sender: TObject);
begin
  //Exibi��o fomrul�rio livros
  frLivro.ShowModal;
end;

procedure TfrPrincipal.actEmprestimosExecute(Sender: TObject);
begin
  //Exibi��o formul�rio Emprestimo
  frEmprestimos.ShowModal;
end;

end.
