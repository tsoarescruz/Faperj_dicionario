unit USlide;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, ShockwaveFlashObjects_TLB, Buttons, ExtCtrls,
  StdCtrls, SHDocVw, DBCtrls, DB, ADODB, Grids, DBGrids, Menus,Shellapi, jpeg;

type
  TFrmDicionario_pop_up = class(TForm)
    PnlPop_up: TPanel;
    edtbusca: TEdit;
    LblPesquisa: TLabel;
    ImgFonte: TImage;
    ImgColor: TImage;
    ImgBlocoNotas: TImage;
    ImgPoup: TImage;
    ImgAjuda: TImage;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    qrpesq: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    qrpesq2: TADOQuery;
    PnlListe: TPanel;
    DBGrid1: TDBGrid;
    Dicionario_PpMenu: TPopupMenu;
    Imprimir1: TMenuItem;
    Recortar: TMenuItem;
    Copiar: TMenuItem;
    Colar: TMenuItem;
    Fonte1: TMenuItem;
    Cor1: TMenuItem;
    Menu1: TMenuItem;
    Editar1: TMenuItem;
    Ferramentas1: TMenuItem;
    BlocodeNotas1: TMenuItem;
    Calculadora1: TMenuItem;
    Ajuda1: TMenuItem;
    Indice1: TMenuItem;
    Sobre1: TMenuItem;
    PrintDialog1: TPrintDialog;
    Sair: TMenuItem;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    BDMemSign: TDBMemo;
    Web: TWebBrowser;
    LblHint: TLabel;
    procedure feito();
    procedure ImgFonteClick(Sender: TObject);
    procedure ImgColorClick(Sender: TObject);
    procedure ImgBlocoNotasClick(Sender: TObject);
    procedure ImgAjudaClick(Sender: TObject);
    procedure ImgPoupClick(Sender: TObject);
    procedure edtbuscaChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure activo();
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure BDMemSignChange(Sender: TObject);
    procedure BlocodeNotas1Click(Sender: TObject);
    procedure Indice1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure RecortarClick(Sender: TObject);
    procedure ColarClick(Sender: TObject);
    procedure CopiarClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
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
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    Naqe,Nave:integer;
    { Public declarations }
  end;

var
  FrmDicionario_pop_up: TFrmDicionario_pop_up;

implementation

uses UTipo_Midia, UApre, UConfing, UPrincipal, UMenu, UNotas, ULigBanco, ULoggo;

{$R *.dfm}

procedure TFrmDicionario_pop_up.feito();
Begin

   FrmDicionario_pop_up.Color:=clBtnText;
   FrmDicionario_pop_up.Font.Name:='Times New Roman';
   FrmDicionario_pop_up.Font.Color:=clRed;
   FrmDicionario_pop_up.Font.Style:=[fsBold,fsItalic];
   FrmDicionario_pop_up.Font.Size:=8;
   FrmDicionario_pop_up.PnlPop_up.Color:=clBtnText;
   FrmDicionario_pop_up.PnlListe.Color:=clBtnText;
   FrmDicionario_pop_up.edtbusca.Font.Size:=8;
   FrmDicionario_pop_up.LblPesquisa.Font.Size:=10;

   FrmDicionario_pop_up.edtbusca.Font.Name:='Times New Roman';
   FrmDicionario_pop_up.edtbusca.Font.Style:=[fsBold,fsItalic];
   FrmDicionario_pop_up.edtbusca.Font.Size:=10;
   FrmDicionario_pop_up.edtbusca.Font.Color:=clRed;

   Recortar.Enabled:=False;
   Copiar.Enabled:=False;
   Colar.Enabled:=False;


   FrmDicionario_pop_up.ImgFonte.Picture.LoadFromFile(caminho + 'icons\28-Font Type.ico');
   //FrmDicionario_pop_up.ImgColor.Picture.LoadFromFile(caminho + 'icons\Icon_162.ICO');
   FrmDicionario_pop_up.ImgColor.Picture.LoadFromFile(caminho + 'icons\Charts_2.ico');
   FrmDicionario_pop_up.ImgPoup.Picture.LoadFromFile(caminho + 'icons\msn logo.ICO');
   FrmDicionario_pop_up.ImgBlocoNotas.Picture.LoadFromFile(caminho + 'icons\Clipboard.ico');
   FrmDicionario_pop_up.ImgAjuda.Picture.LoadFromFile(caminho + 'icons\help.ico');
   End;

procedure TFrmDicionario_pop_up.ImgFonteClick(Sender: TObject);
   Begin
      FontDialog1.Font:=FrmDicionario_pop_up.Font;
    If FontDialog1.Execute then
      Begin
      FrmDicionario_pop_up.Font:=FontDialog1.Font;
      FrmDicionario_pop_up.edtbusca.Font:=FontDialog1.Font;
      FrmDicionario_pop_up.LblPesquisa.Font:=FontDialog1.Font;
      FrmDicionario_pop_up.LblPesquisa.Font.Size:=10;
      FrmDicionario_pop_up.LblPesquisa.Font.Name:='Times New Roman';

      FrmDicionario_pop_up.edtbusca.Font.Name:='Times New Roman';
      FrmDicionario_pop_up.edtbusca.Font.Style:=[fsBold,fsItalic];
      FrmDicionario_pop_up.edtbusca.Font.Size:=10;

      FrmDicionario_pop_up.LblHint.Font:=FontDialog1.Font;
      FrmDicionario_pop_up.LblHint.Font.Size:=10;
      FrmDicionario_pop_up.LblHint.Font.Name:='Times New Roman';
      End;
  End;


procedure TFrmDicionario_pop_up.ImgColorClick(Sender: TObject);
begin
    ColorDialog1.Color:=FrmDicionario_pop_up.Color;
      if ColorDialog1.Execute then
     FrmDicionario_pop_up.Color:=ColorDialog1.color;
     FrmDicionario_pop_up.PnlPop_up.Color:=ColorDialog1.Color;
     FrmDicionario_pop_up.PnlListe.Color:=ColorDialog1.Color;

 end;

procedure TFrmDicionario_pop_up.ImgBlocoNotasClick(Sender: TObject);
begin
     Application.CreateForm(TFrmNotas, FrmNotas);
       FrmNotas.sna:=3;
       FrmNotas.feito(nil);
       FrmNotas.show;

end;

procedure TFrmDicionario_pop_up.ImgAjudaClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho + 'Ajuda.hlp'),nil,nil,sw_Shownormal);
end;

procedure TFrmDicionario_pop_up.ImgPoupClick(Sender: TObject);
begin
 FrmPrincipal.Nate:=1;
 FrmPrincipal.activo;
 FrmDicionario_pop_up.CloseQuery;
end;

procedure TFrmDicionario_pop_up.edtbuscaChange(Sender: TObject);
Var sql, sql2:string;
Begin

sql:='select palavras from palavras where palavras like' + #39 + edtbusca.text + '%' + #39;
qrpesq.sql.Clear;
qrpesq.SQL.Add(sql);
qrpesq.Open;

qrpesq2.sql.clear;
sql2:='select significado from palavras where palavras like' + #39 + edtbusca.text + '%' + #39;
qrpesq2.sql.Add(sql2);
qrpesq2.Open;

if Nave=0 then
Begin
FrmDicionario_pop_up.Web.Destroy;
Nave:=1;
End;
End;

procedure TFrmDicionario_pop_up.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   FrmMenu.Show;
   FrmPrincipal.show;
   FrmPrincipal.Nate:=1;
   FrmPrincipal.activo;
   FrmPrincipal.edtbusca.Text:=FrmDicionario_pop_up.edtbusca.Text;
   FrmDicionario_pop_up.Hide;
end;

procedure TFrmDicionario_pop_up.activo();
Begin

if Naqe=0 then
Begin
dm.qrPalavras.Active:=true;
qrpesq.Active:=true;


Nave:= 0;
Web.Navigate(ExtractFilePath(Application.ExeName) + 'Páginas\Dic_Tec_Pop.html');
End else

if Naqe=1 then
Begin
dm.qrPalavras.Active:=true;
qrpesq.Active:=true;
End;
End;

procedure TFrmDicionario_pop_up.DBGrid1DblClick(Sender: TObject);
var sql2:string;
begin
qrpesq2.sql.clear;
sql2:='select significado from palavras where palavras =' + #39 + qrpesq['palavras'] + #39;
qrpesq2.sql.Add(sql2);
qrpesq2.Open;

if Nave = 0 then
Begin
FrmDicionario_pop_up.Web.Destroy;
Nave:=1;
End;
End;

procedure TFrmDicionario_pop_up.Abrir1Click(Sender: TObject);
 Begin
      if OpenDialog1.Execute then
    Begin
   FrmPrincipal.BlocodeNotas1Click(nil);
   FrmNotas.MemBloc_Notas.Lines.LoadFromFile(OpenDialog1.FileName);
    End;
 End;

procedure TFrmDicionario_pop_up.Salvar1Click(Sender: TObject);
     Begin
    if SaveDialog1.Execute then
    Begin
   BDMemSign.Lines.SaveToFile(SaveDialog1.FileName);
   End;
     End;
procedure TFrmDicionario_pop_up.Imprimir1Click(Sender: TObject);
begin
    PrintDialog1.Execute;

end;

procedure TFrmDicionario_pop_up.Fonte1Click(Sender: TObject);
begin
FrmDicionario_pop_up.ImgFonteClick(nil);
end;

procedure TFrmDicionario_pop_up.Cor1Click(Sender: TObject);
begin
FrmDicionario_pop_up.ImgColorClick(nil);
end;

procedure TFrmDicionario_pop_up.BDMemSignChange(Sender: TObject);
begin
 Recortar.Enabled:=True;
 Copiar.Enabled:=True;
 Colar.Enabled:=True;

end;

procedure TFrmDicionario_pop_up.BlocodeNotas1Click(Sender: TObject);
begin
FrmDicionario_pop_up.ImgBlocoNotasClick(nil);
end;

procedure TFrmDicionario_pop_up.Indice1Click(Sender: TObject);
begin
WinHelp(FrmDicionario_pop_up.Handle,'Ajuda.hlp',HELP_CONTENTS,0);
end;

procedure TFrmDicionario_pop_up.Sobre1Click(Sender: TObject);
begin
FrmPrincipal.Sobre1Click(nil);
end;

procedure TFrmDicionario_pop_up.Calculadora1Click(Sender: TObject);
begin
FrmPrincipal.ImgCalcClick(nil);
end;

procedure TFrmDicionario_pop_up.RecortarClick(Sender: TObject);
begin
      BDMemSign.CutToClipboard;
end;

procedure TFrmDicionario_pop_up.ColarClick(Sender: TObject);
begin
      BDMemSign.PasteFromClipboard;
end;

procedure TFrmDicionario_pop_up.CopiarClick(Sender: TObject);
begin
BDMemSign.CopyToClipboard;
end;

procedure TFrmDicionario_pop_up.SairClick(Sender: TObject);
begin
    FrmDicionario_pop_up.CloseQuery;
end;
procedure TFrmDicionario_pop_up.ImgFonteMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Muda o Tipo de Fonte do Dicionário';

end;

procedure TFrmDicionario_pop_up.ImgColorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Muda a Cor do Dicionário';

end;

procedure TFrmDicionario_pop_up.ImgBlocoNotasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Abre um Bloco de Notas para Anotações';

end;

procedure TFrmDicionario_pop_up.ImgPoupMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Volta a Forma do Dicionário';

end;

procedure TFrmDicionario_pop_up.ImgAjudaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= 'Esta Opção Abre a Ajuda do Dicionário';

end;

procedure TFrmDicionario_pop_up.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHint.Caption:= '';

end;

end.
