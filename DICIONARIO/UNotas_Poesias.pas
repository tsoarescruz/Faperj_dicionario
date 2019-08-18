Unit UNotas_Poesias;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Menus, StdCtrls, shellapi;

Type
  TFrmNotas_Poesias = class(TForm)
    MemBloc_Notas: TMemo;
    PrintDialog1: TPrintDialog;
    FontDialog1: TFontDialog;
    OpenDialog1: TOpenDialog;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
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
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    ColorDialog1: TColorDialog;
    SaveDialog1: TSaveDialog;
    Formatar1: TMenuItem;
    COR1: TMenuItem;
    Fonte1: TMenuItem;
    Novo1: TMenuItem;
    Abrir1: TMenuItem;
    N1: TMenuItem;
    Limpar1: TMenuItem;
    ndice1: TMenuItem;
    Procedure Imprimir1Click(Sender: TObject);
    Procedure Salvar1Click(Sender: TObject);
    Procedure Recortar1Click(Sender: TObject);
    Procedure Copiar1Click(Sender: TObject);
    Procedure Colar1Click(Sender: TObject);
    Procedure MemBloc_NotasChange(Sender: TObject);
    Procedure Sobre1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure feito(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure COR1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure ndice1Click(Sender: TObject);
  Private
    { Private declarations }
  Public
  Sna:integer;
    { Public declarations }
  End;

Var
  FrmNotas_Poesias: TFrmNotas_Poesias;

Implementation

uses UAbout, UPrincipal, UTipos_Poemas, UPoe_Cruz_Souza,
  UMachado_Assis_Romances, UPoe_Castro_Alves, UDados, UBroq_Cruz_Sousa,
  UCruz_Souza, UMilton_Nascimento, UGoncalves_Dias, UCastro_Alves,
  UNovas_Poesias, UNovas_Poesias_02, UGilberto_Gil, ULuiz_Gama, Uloggo,
  UMachado_Assis, UMapa;

{$R *.dfm}

Procedure TFrmNotas_Poesias.Imprimir1Click(Sender: TObject);
  Begin
    PrintDialog1.Execute;
   End;

Procedure TFrmNotas_Poesias.Salvar1Click(Sender: TObject);
      Begin
    if SaveDialog1.Execute then
    Begin
   MemBloc_Notas.Lines.SaveToFile(SaveDialog1.FileName);
     End;
    End;

Procedure TFrmNotas_Poesias.Recortar1Click(Sender: TObject);
   Begin
    MemBloc_Notas.CutToClipboard;
     End;

Procedure TFrmNotas_Poesias.Copiar1Click(Sender: TObject);
    Begin
    MemBloc_Notas.CopyToClipboard;
     End;

Procedure TFrmNotas_Poesias.Colar1Click(Sender: TObject);
  Begin
    MemBloc_Notas.PasteFromClipboard;
   End;

Procedure TFrmNotas_Poesias.MemBloc_NotasChange(Sender: TObject);
   Begin
     Recortar1.Enabled:=True;
      Copiar1.Enabled:=True;
   End;

Procedure TFrmNotas_Poesias.Sobre1Click(Sender: TObject);
   Begin
    Application.CreateForm(TAboutBox, AboutBox);
    AboutBox.showmodal;
    End;

procedure TFrmNotas_Poesias.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if Sna=1 then
   Begin
    FrmTipos_Poemas.Show;
    FrmNotas_Poesias.Hide;
    End Else
    if Sna=2 then
    Begin
    FrmCruz_Sousa.Show;
    FrmCruz_Souza_Poema.show;
    FrmNotas_Poesias.Hide;
    End Else
    if Sna=3 then
    Begin
    FrmMilton_Nascimento.show;
    FrmCruz_Souza_Poema.show;
    FrmNotas_Poesias.Hide;
    End Else
    if Sna=16 then
    Begin
    FrmGoncalves_Dias.show;
    FrmCruz_Souza_Poema.show;
    FrmNotas_Poesias.Hide;
    End Else
    if Sna=4 then
    Begin
    FrmNovas_Poesias.show;
    FrmNotas_Poesias.Hide;
    End Else
    {if Sna=98 then
    Begin
    FrmBroq_Cruz_Sousa.show;
    FrmNotas_Poesias.Hide;
    End Else}
    if Sna=99 then
    Begin
    FrmMachado_Assis_Romance.show;
    FrmNotas_Poesias.Hide;
    End Else
    if Sna=5 then
    Begin
    FrmCastro_Alves.show;
    FrmCruz_Souza_Poema.show;
    FrmNotas_Poesias.Hide;
    End else
     if Sna=6 then
    Begin
    FrmCastro_Alves.show;
    FrmNovas_Poesias.show;
    FrmNotas_Poesias.Hide;
    End else
     if Sna=7 then
    begin
    FrmCruz_Sousa.show;
    FrmNovas_Poesias.show;
    FrmNotas_Poesias.Hide;
    end else
     if Sna=8 then
    begin
    FrmCruz_Sousa.show;
    FrmNovas_Poesias_02.show;
    FrmNotas_Poesias.Hide;
    end else
     if Sna=9 then
    begin
    FrmCruz_Sousa.show;
    FrmNovas_Poesias_03.show;
    FrmNotas_Poesias.Hide;
    end  else
     if Sna=10 then
    begin
    FrmCastro_Alves.show;
    FrmNovas_Poesias_02.show;
    FrmNotas_Poesias.Hide;
    end  else
     if Sna=11 then
    begin
    FrmCastro_Alves.show;
    FrmNovas_Poesias_03.show;
    FrmNotas_Poesias.Hide;
    end  else
    if Sna=12 then
    begin
    FrmGilberto_Gil.show;
    FrmDados_esta_Tabel.show;
    FrmNotas_Poesias.Hide;
    end else
    if sna=13 then
    begin
    FrmOrixas.show;
    FrmNovas_Poesias_03.show;
    FrmNotas_Poesias.Hide;
     end else
    if sna=14 then
    begin
    FrmNovas_Poesias_02.show;
    FrmNotas_Poesias.Hide;
    end;
    end;

    Procedure TFrmNotas_Poesias.feito(Sender: TObject);
Begin
     FrmNotas_Poesias.Limpar1Click(nil);

End;

procedure TFrmNotas_Poesias.FormActivate(Sender: TObject);
begin
     MemBloc_Notas.Clear;
     Recortar1.Enabled:=False;
     Copiar1.Enabled:=False;

end;

procedure TFrmNotas_Poesias.COR1Click(Sender: TObject);
begin
    ColorDialog1.Color:=MemBloc_Notas.Color;
     if ColorDialog1.Execute then
    MemBloc_Notas.Color:=ColorDialog1.Color

end;

procedure TFrmNotas_Poesias.Fonte1Click(Sender: TObject);
begin
      FontDialog1.Font:=MemBloc_Notas.Font;
       if FontDialog1.Execute then
     MemBloc_Notas.Font:=FontDialog1.Font;

end;

procedure TFrmNotas_Poesias.Abrir1Click(Sender: TObject);
 Begin
   if OpenDialog1.Execute then
    Begin
    MemBloc_Notas.Lines.LoadFromFile(Opendialog1.FileName);
    End;
 End;
procedure TFrmNotas_Poesias.Novo1Click(Sender: TObject);
 Begin
   if Messagedlg('Deseja Salvar?',mtConfirmation,[mbyes,mbno],0)=mryes then
    salvar1click(nil);
    MemBloc_Notas.Clear;
     MemBloc_Notas.Color:=ClWhite;
      MemBloc_Notas.Font.Name:='Times New Roman';
       MemBloc_Notas.Font.Style:=[];
        MemBloc_Notas.Font.Color:=ClBlack;
       MemBloc_Notas.Font.Size:=8;
      Recortar1.Enabled:=False;
     Limpar1.Enabled:=False;
    Copiar1.Enabled:=False;
 End;
procedure TFrmNotas_Poesias.Limpar1Click(Sender: TObject);
Begin
     MemBloc_Notas.Clear;
      MemBloc_Notas.Color:=clBtnText;
       MemBloc_Notas.Font.Name:='Times New Roman';
        MemBloc_Notas.Font.Style:=[];
       MemBloc_Notas.Font.Color:=ClWhite;
     MemBloc_Notas.Font.Size:=10;
End;
procedure TFrmNotas_Poesias.Sair1Click(Sender: TObject);
begin
FrmNotas_Poesias.Close;

end;

procedure TFrmNotas_Poesias.ndice1Click(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho + 'Ajuda.hlp'),nil,nil,sw_Shownormal);
end;

End.
