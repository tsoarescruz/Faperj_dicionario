Unit UNotas;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Menus, StdCtrls;

Type
  TFrmNotas = class(TForm)
    MemBloc_Notas: TMemo;
    PrintDialog1: TPrintDialog;
    FontDialog1: TFontDialog;
    OpenDialog1: TOpenDialog;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Novo1: TMenuItem;
    N1: TMenuItem;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    N2: TMenuItem;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    Sair1: TMenuItem;
    EDitar1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N4: TMenuItem;
    Limpar1: TMenuItem;
    Formatar1: TMenuItem;
    Fonte1: TMenuItem;
    cor1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    ColorDialog1: TColorDialog;
    SaveDialog1: TSaveDialog;
    Indice1: TMenuItem;
    Procedure Imprimir1Click(Sender: TObject);
    Procedure Abrir1Click(Sender: TObject);
    Procedure Salvar1Click(Sender: TObject);
    Procedure Recortar1Click(Sender: TObject);
    Procedure Copiar1Click(Sender: TObject);
    Procedure Novo1Click(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure Colar1Click(Sender: TObject);
    Procedure Limpar1Click(Sender: TObject);
    Procedure MemBloc_NotasChange(Sender: TObject);
    Procedure Fonte1Click(Sender: TObject);
    Procedure cor1Click(Sender: TObject);
    Procedure Sobre1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Sair1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure feito(sender:Tobject);
    procedure Indice1Click(Sender: TObject);
  Private
    { Private declarations }
  Public
    Sna,toda:integer;
    { Public declarations }
  End;

Var
  FrmNotas: TFrmNotas;

Implementation

uses UAbout, UPrincipal, UNotas_Poesias, UBroq_Cruz_Sousa, UDados, USlide,
  UPaises, UPricipal_Religiao, ULoggo;

{$R *.dfm}

Procedure TFrmNotas.Imprimir1Click(Sender: TObject);
  Begin
    PrintDialog1.Execute;
   End;

Procedure TFrmNotas.Abrir1Click(Sender: TObject);
    Begin
      if OpenDialog1.Execute then
    Begin
    MemBloc_Notas.Lines.LoadFromFile(Opendialog1.FileName);
      End;
       End;

Procedure TFrmNotas.Salvar1Click(Sender: TObject);
      Begin
    if SaveDialog1.Execute then
    Begin
   MemBloc_Notas.Lines.SaveToFile(SaveDialog1.FileName);
   End;
    End;

Procedure TFrmNotas.Recortar1Click(Sender: TObject);
   Begin
    MemBloc_Notas.CutToClipboard;
     End;

Procedure TFrmNotas.Copiar1Click(Sender: TObject);
    Begin
    MemBloc_Notas.CopyToClipboard;
     End;

Procedure TFrmNotas.Novo1Click(Sender: TObject);
    Begin
   if Messagedlg('Deseja Salvar?',mtConfirmation,[mbyes,mbno],0)=mryes then
    salvar1click(nil);
    FrmNotas.Limpar1Click(nil);
    Recortar1.Enabled:=False;
    Limpar1.Enabled:=False;
    Copiar1.Enabled:=False;
     End;

Procedure TFrmNotas.FormCreate(Sender: TObject);
   Begin
     MemBloc_Notas.Clear;
      Recortar1.Enabled:=False;
      Copiar1.Enabled:=False;
     Limpar1.Enabled:=False;
    End;

Procedure TFrmNotas.Colar1Click(Sender: TObject);
  Begin
     MemBloc_Notas.PasteFromClipboard;
   End;

Procedure TFrmNotas.Limpar1Click(Sender: TObject);
   Begin
     MemBloc_Notas.Clear;
      MemBloc_Notas.Color:=clBtnText;
       MemBloc_Notas.Font.Name:='Times New Roman';
        MemBloc_Notas.Font.Style:=[];
       MemBloc_Notas.Font.Color:=ClWhite;
     MemBloc_Notas.Font.Size:=10;
   End;

Procedure TFrmNotas.MemBloc_NotasChange(Sender: TObject);
   Begin
     Recortar1.Enabled:=True;
     Copiar1.Enabled:=True;
     Limpar1.Enabled:=True;
   End;

Procedure TFrmNotas.Fonte1Click(Sender: TObject);
    Begin
      FontDialog1.Font:=MemBloc_Notas.Font;
       if FontDialog1.Execute then
     MemBloc_Notas.Font:=FontDialog1.Font;
     End;

Procedure TFrmNotas.cor1Click(Sender: TObject);
   Begin
    ColorDialog1.Color:=MemBloc_Notas.Color;
     if ColorDialog1.Execute then
    MemBloc_Notas.Color:=ColorDialog1.Color
    End;

Procedure TFrmNotas.Sobre1Click(Sender: TObject);
   Begin
    Application.CreateForm(TAboutBox, AboutBox);
    AboutBox.showmodal;
    End;

procedure TFrmNotas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
 Begin
  If MessageDlg('Deseja Mesmo Sair?', mtInformation, [mbyes,mbno], 0) = mryes then
Begin
    if sna=1 then
    Begin
    FrmPrincipal.Show;
    FrmNotas.Hide;
    End else
    if  sna=2 then
    Begin
    FrmPrincipal_Religiao.show;
    FrmNotas.Hide;
    End else
    if Sna=3 then
    Begin
    FrmDicionario_pop_up.show;
    FrmNotas.Hide;
    End else
    if Sna=4 then
    Begin
    FrmDicionario_Reli_Pop.show;
    FrmNotas.Hide;
    End else
    if Sna=99 then
    Begin
    FrmDados.show;
    FrmNotas.Hide;
    End;
 End else
CanClose:=False;
 End;

    {if Sna=98 then
    Begin
    FrmBroq_Cruz_Sousa.show;
    FrmNotas.Hide;
    End Else }


 procedure TFrmNotas.Sair1Click(Sender: TObject);
begin
 FrmNotas.Close;
end;
procedure TFrmNotas.FormActivate(Sender: TObject);
begin
     MemBloc_Notas.Clear;
     Recortar1.Enabled:=False;
     Copiar1.Enabled:=False;

end;

procedure TFrmNotas.feito(sender:Tobject);
begin
     FrmNotas.Limpar1Click(nil);
end;

procedure TFrmNotas.Indice1Click(Sender: TObject);
begin
WinHelp(FrmNotas.Handle,'Ajuda.hlp',HELP_CONTENTS,0);
end;

End.
