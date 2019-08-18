unit UPaises;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons, StdCtrls, Grids, DBGrids, DB, ADODB,
  OleCtrls, SHDocVw, Shellapi, DBCtrls, Menus;

type
  TFrmDicionario_Reli_Pop = class(TForm)
    PnlPop_up: TPanel;
    LblPesquisa: TLabel;
    ImgFonte: TImage;
    ImgColor: TImage;
    ImgBlocoNotas: TImage;
    ImgPoup: TImage;
    edtbusca: TEdit;
    PnlListe: TPanel;
    DBGrid1: TDBGrid;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    qrpesq: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    qrpesq2: TADOQuery;
    Dicionario_Reli_PpMenu: TPopupMenu;
    Menu1: TMenuItem;
    Imprimir1: TMenuItem;
    Sair: TMenuItem;
    Editar1: TMenuItem;
    Recortar: TMenuItem;
    Copiar: TMenuItem;
    Colar: TMenuItem;
    Fonte1: TMenuItem;
    Cor1: TMenuItem;
    Ferramentas1: TMenuItem;
    BlocodeNotas1: TMenuItem;
    Calculadora1: TMenuItem;
    Ajuda1: TMenuItem;
    Indice1: TMenuItem;
    Sobre1: TMenuItem;
    PrintDialog1: TPrintDialog;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    BDMemSign: TDBMemo;
    Web: TWebBrowser;
    ImgAjuda: TImage;
    LblHint: TLabel;
    procedure edtbuscaChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ImgPoupClick(Sender: TObject);
    procedure activo();
    procedure feito();
    procedure ImgFonteClick(Sender: TObject);
    procedure ImgColorClick(Sender: TObject);
    procedure ImgBlocoNotasClick(Sender: TObject);
    procedure ImgAjudaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Fonte1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure Indice1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure BlocodeNotas1Click(Sender: TObject);
    procedure RecortarClick(Sender: TObject);
    procedure CopiarClick(Sender: TObject);
    procedure ColarClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure ImgHelpClick(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgFonteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgColorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgBlocoNotasMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ImgPoupMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImgAjudaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    Nave,Naque:integer;
    { Public declarations }
  end;

var
  FrmDicionario_Reli_Pop: TFrmDicionario_Reli_Pop;

implementation

uses UMenu, UDados, UPricipal_Religiao, USlide, ULigBanco, UNotas,
  UPrincipal, Uloggo;

{$R *.dfm}

procedure TFrmDicionario_Reli_Pop.edtbuscaChange(Sender: TObject);
Var sql, sql2:string;
Begin
sql:='select palavras from religiao where palavras like' + #39 + edtbusca.text + '%' + #39;
qrpesq.sql.Clear;
qrpesq.SQL.Add(sql);
qrpesq.Open;

qrpesq2.sql.clear;
sql2:='select significado from religiao where palavras like' + #39 + edtbusca.text + '%' + #39;
qrpesq2.sql.Add(sql2);
qrpesq2.Open;

if Nave = 0 then
Begin
Web.Destroy;
Nave:=1;
End;
End;

procedure TFrmDicionario_Reli_Pop.DBGrid1DblClick(Sender: TObject);
var sql2:string;
begin
qrpesq2.sql.clear;
sql2:='select significado from religiao where palavras =' + #39 + qrpesq['palavras'] + #39;
qrpesq2.sql.Add(sql2);
qrpesq2.Open;

if Nave = 0 then
Begin
Web.Destroy;
Nave:=1;
End;
End;
procedure TFrmDicionario_Reli_Pop.ImgPoupClick(Sender: TObject);
begin
 FrmPrincipal_Religiao.Nate:=1;
 FrmPrincipal_Religiao.activo;
 FrmDicionario_Reli_Pop.CloseQuery;
end;

procedure TFrmDicionario_Reli_Pop.activo();
Begin

if Naque=0 then
Begin

dm.qrreligiao.Active:=True;
qrpesq.Active:=True;

Nave:= 0;
Web.Navigate(ExtractFilePath(Application.ExeName) + 'Páginas\Dic_Reli_Pop.html');

End else

if Naque=1 then
Begin

dm.qrreligiao.Active:=True;
qrpesq.Active:=True;

End;
End;

procedure TFrmDicionario_Reli_Pop.feito();
Begin

   FrmDicionario_Reli_Pop.Color:=clBtnText;
   FrmDicionario_Reli_Pop.Font.Name:='Times New Roman';
   FrmDicionario_Reli_Pop.Font.Color:=clRed;
   FrmDicionario_Reli_Pop.Font.Style:=[fsBold,fsItalic];
   FrmDicionario_Reli_Pop.Font.Size:=8;
   FrmDicionario_Reli_Pop.PnlPop_up.Color:=clBtnText;
   FrmDicionario_Reli_Pop.PnlListe.Color:=clBtnText;
   FrmDicionario_Reli_Pop.edtbusca.Font.Size:=8;
   FrmDicionario_Reli_Pop.LblPesquisa.Font.Size:=10;

   FrmDicionario_Reli_Pop.edtbusca.Font.Name:='Times New Roman';
   FrmDicionario_Reli_Pop.edtbusca.Font.Style:=[fsBold,fsItalic];
   FrmDicionario_Reli_Pop.edtbusca.Font.Size:=10;
   FrmDicionario_Reli_Pop.edtbusca.Font.Color:=clRed;

   Recortar.Enabled:=False;
   Copiar.Enabled:=False;
   Colar.Enabled:=False;

   FrmDicionario_Reli_Pop.ImgFonte.Picture.LoadFromFile(caminho + 'icons\28-Font Type.ico');
   //FrmDicionario_Reli_Pop.ImgColor.Picture.LoadFromFile(caminho + 'icons\Icon_162.ICO');
   FrmDicionario_Reli_Pop.ImgColor.Picture.LoadFromFile(caminho + 'icons\Charts_2.ico');
   FrmDicionario_Reli_Pop.ImgPoup.Picture.LoadFromFile(caminho + 'icons\msn logo.ICO');
   FrmDicionario_Reli_Pop.ImgBlocoNotas.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
   FrmDicionario_Reli_Pop.ImgAjuda.Picture.LoadFromFile(caminho + 'icons\help.ico');

   End;

procedure TFrmDicionario_Reli_Pop.ImgFonteClick(Sender: TObject);
   Begin
      FontDialog1.Font:=FrmDicionario_Reli_Pop.Font;
    If FontDialog1.Execute then
     Begin
      FrmDicionario_Reli_Pop.Font:=FontDialog1.Font;
      FrmDicionario_Reli_Pop.edtbusca.Font:=FontDialog1.Font;
      FrmDicionario_Reli_Pop.LblPesquisa.Font:=FontDialog1.Font;
      FrmDicionario_Reli_Pop.LblPesquisa.Font.Size:=10;
      FrmDicionario_Reli_Pop.LblPesquisa.Font.Name:='Times New Roman';

      FrmDicionario_Reli_Pop.LblHint.Font:=FontDialog1.Font;
      FrmDicionario_Reli_Pop.LblHint.Font.Size:=10;
      FrmDicionario_Reli_Pop.LblHint.Font.Name:='Times New Roman';

      FrmDicionario_Reli_Pop.edtbusca.Font.Name:='Times New Roman';
      FrmDicionario_Reli_Pop.edtbusca.Font.Style:=[fsBold,fsItalic];
      FrmDicionario_Reli_Pop.edtbusca.Font.Size:=10;

  End;
End;

procedure TFrmDicionario_Reli_Pop.ImgColorClick(Sender: TObject);
begin
    ColorDialog1.Color:=FrmDicionario_Reli_Pop.Color;
      if ColorDialog1.Execute then
     FrmDicionario_Reli_Pop.Color:=ColorDialog1.color;
     FrmDicionario_Reli_Pop.PnlPop_up.Color:=ColorDialog1.Color;
     FrmDicionario_Reli_Pop.PnlListe.Color:=ColorDialog1.Color;

end;

procedure TFrmDicionario_Reli_Pop.ImgBlocoNotasClick(Sender: TObject);
begin
     Application.CreateForm(TFrmNotas, FrmNotas);
      FrmNotas.Sna:=4;
      FrmNotas.feito(nil);
      FrmNotas.show;

end;

procedure TFrmDicionario_Reli_Pop.ImgAjudaClick(Sender: TObject);
begin
FrmMenu.SpedButonAjudaClick(nil);
end;

procedure TFrmDicionario_Reli_Pop.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   FrmMenu.Show;
   FrmPrincipal_Religiao.show;
   FrmPrincipal_Religiao.Nate:=1;
   FrmPrincipal_Religiao.activo;
   FrmPrincipal_Religiao.edtbusca.Text:=FrmDicionario_Reli_Pop.edtbusca.Text;
   FrmDicionario_Reli_Pop.Hide;
end;

procedure TFrmDicionario_Reli_Pop.Fonte1Click(Sender: TObject);
begin
   FrmDicionario_Reli_Pop.ImgFonteClick(nil);
end;

procedure TFrmDicionario_Reli_Pop.Cor1Click(Sender: TObject);
begin
  FrmDicionario_Reli_Pop.ImgColorClick(nil);
end;

procedure TFrmDicionario_Reli_Pop.SairClick(Sender: TObject);
begin
FrmDicionario_Reli_Pop.CloseQuery;
end;

procedure TFrmDicionario_Reli_Pop.Indice1Click(Sender: TObject);
begin
WinHelp(FrmDicionario_Reli_Pop.Handle,'Ajuda.hlp',HELP_CONTENTS,0);
end;

procedure TFrmDicionario_Reli_Pop.Sobre1Click(Sender: TObject);
begin
  FrmPrincipal_Religiao.Sobre1Click(nil);
end;

procedure TFrmDicionario_Reli_Pop.Calculadora1Click(Sender: TObject);
begin
 FrmPrincipal_Religiao.ImgCalcClick(nil);
end;

procedure TFrmDicionario_Reli_Pop.BlocodeNotas1Click(Sender: TObject);
begin
 FrmDicionario_Reli_Pop.ImgBlocoNotasClick(nil);
end;

procedure TFrmDicionario_Reli_Pop.RecortarClick(Sender: TObject);
begin
 BDMemSign.CutToClipboard;
end;

procedure TFrmDicionario_Reli_Pop.CopiarClick(Sender: TObject);
begin
 BDMemSign.CopyToClipboard;
end;

procedure TFrmDicionario_Reli_Pop.ColarClick(Sender: TObject);
begin
 BDMemSign.PasteFromClipboard;
end;

procedure TFrmDicionario_Reli_Pop.Imprimir1Click(Sender: TObject);
begin
 PrintDialog1.Execute;
end;

procedure TFrmDicionario_Reli_Pop.Salvar1Click(Sender: TObject);
     Begin
    if SaveDialog1.Execute then
    Begin
   BDMemSign.Lines.SaveToFile(SaveDialog1.FileName);
   End;
     End;
procedure TFrmDicionario_Reli_Pop.Abrir1Click(Sender: TObject);
   Begin
  if OpenDialog1.Execute then
    Begin
   FrmPrincipal_Religiao.BlocodeNotas1Click(nil);
   FrmNotas.MemBloc_Notas.Lines.LoadFromFile(OpenDialog1.FileName);
    End;
   End;
procedure TFrmDicionario_Reli_Pop.ImgHelpClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho + 'Ajuda.hlp'),nil,nil,sw_Shownormal);
end;

procedure TFrmDicionario_Reli_Pop.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= '';
end;

procedure TFrmDicionario_Reli_Pop.ImgFonteMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Muda o Tipo de Fonte do Dicionário';

end;

procedure TFrmDicionario_Reli_Pop.ImgColorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Muda a Cor do Dicionário';

end;

procedure TFrmDicionario_Reli_Pop.ImgBlocoNotasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Abre um Bloco de Notas para Anotações';

end;

procedure TFrmDicionario_Reli_Pop.ImgPoupMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Volta a Forma do Dicionário';

end;

procedure TFrmDicionario_Reli_Pop.ImgAjudaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Abre a Ajuda do Dicionário';

end;

end.
