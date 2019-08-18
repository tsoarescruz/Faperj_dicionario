unit UCaca_Palavras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, ShockwaveFlashObjects_TLB, ExtCtrls, StdCtrls, Buttons;

type
  TFrmCaca_Palavras = class(TForm)
    EdtMona_1_Mucamba_1: TEdit;
    EdtMona_2: TEdit;
    EdtMona_3: TEdit;
    EdtMona_4_Muxila_6: TEdit;
    Bevel1: TBevel;
    LblMona: TLabel;
    LblCompa: TLabel;
    EdtMucamba_2: TEdit;
    EdtMucamba_3: TEdit;
    EdtMucamba_4: TEdit;
    EdtMucamba_7: TEdit;
    EdtMucamba_6: TEdit;
    EdtMucamba_5: TEdit;
    LblSaco: TLabel;
    EdtMuxila_1: TEdit;
    EdtMuxila_2: TEdit;
    EdtMuxila_3: TEdit;
    EdtMuxila_4: TEdit;
    EdtMuxila_5: TEdit;
    LblTot_A_1: TLabel;
    LblTot_E_1: TLabel;
    LblTot_A: TLabel;
    LblTot_E: TLabel;
    LblHelp: TLabel;
    Bevel2: TBevel;
    SpedButonLimpar: TSpeedButton;
    SpedButonCorri: TSpeedButton;
    EdtNada: TEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EdtMona_1_Mucamba_1Change(Sender: TObject);
    procedure LblCompaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LblMonaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LblSacoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EdtMona_2Change(Sender: TObject);
    procedure EdtMona_3Change(Sender: TObject);
    procedure EdtMona_4_Muxila_6Change(Sender: TObject);
    procedure LblSacoClick(Sender: TObject);
    procedure LblMonaClick(Sender: TObject);
    procedure LblCompaClick(Sender: TObject);
    procedure Calcular;
    procedure Limpar;
    procedure EdtMona_1_Mucamba_1Exit(Sender: TObject);
    procedure EdtMona_2Exit(Sender: TObject);
    procedure EdtMona_3Exit(Sender: TObject);
    procedure EdtMona_4_Muxila_6Exit(Sender: TObject);
    procedure SpedButonLimparClick(Sender: TObject);
    procedure LblMonaMouseLeave(Sender: TObject);
    procedure LblCompaMouseLeave(Sender: TObject);
    procedure LblSacoMouseLeave(Sender: TObject);
    procedure Limpe;
    procedure FormShow(Sender: TObject);
    procedure EdtMuxila_1Change(Sender: TObject);
    procedure EdtMuxila_2Change(Sender: TObject);
    procedure EdtMuxila_3Change(Sender: TObject);
    procedure EdtMuxila_4Change(Sender: TObject);
    procedure EdtMuxila_5Change(Sender: TObject);
    procedure EdtMucamba_2Change(Sender: TObject);
    procedure EdtMucamba_3Change(Sender: TObject);
    procedure EdtMucamba_4Change(Sender: TObject);
    procedure EdtMucamba_5Change(Sender: TObject);
    procedure EdtMucamba_6Change(Sender: TObject);
    procedure EdtMucamba_7Change(Sender: TObject);
    procedure SpedButonCorriClick(Sender: TObject);
  private
    { Private declarations }
  public

     CC,CE: integer;
    { Public declarations }
  end;

var
  FrmCaca_Palavras: TFrmCaca_Palavras;

  implementation

uses UJogos, UPrincipal, UMenu;

{$R *.dfm}

procedure TFrmCaca_Palavras.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FrmJogo.show;
Limpe;
FrmCaca_Palavras.Hide;
end;

procedure TFrmCaca_Palavras.EdtMona_1_Mucamba_1Change(Sender: TObject);
begin
 if  (EdtMona_1_Mucamba_1.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMona_1_Mucamba_1.Text='M') then
  Begin
    CC:=CC+1;
    EdtMona_1_Mucamba_1.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMona_1_Mucamba_1.Text<>'M') then
  Begin
    EdtMona_1_Mucamba_1.Font.Color:=clRed;
    CE:=CE+1;
    Calcular;
   End;
 End;
procedure TFrmCaca_Palavras.LblCompaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 Lblhelp.caption:='Antigo Chamamento para Escravas? Clique para consultar a Grafia';
end;

procedure TFrmCaca_Palavras.LblMonaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 Lblhelp.caption:='Pejorativo Para Homosexual? Clique para Consultar a Grafia. ';
end;

procedure TFrmCaca_Palavras.LblSacoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 Lblhelp.caption:='O que o Estudante Usa nas Costas? Clique para Consultar a Grafia.';
end;

procedure TFrmCaca_Palavras.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
LblHelp.Caption:='';
end;

procedure TFrmCaca_Palavras.EdtMona_2Change(Sender: TObject);
begin
  if  (EdtMona_2.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
   else
 if (EdtMona_2.Text='O') then
  Begin
    CC:=CC+1;
    EdtMona_2.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMona_2.Text<>'O') then
  Begin
    EdtMona_2.Font.Color:=clRed;
    CE:=CE+1;
    Calcular;
    End;
 end;

procedure TFrmCaca_Palavras.EdtMona_3Change(Sender: TObject);
begin
 if  (EdtMona_3.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
  if (EdtMona_3.Text='N') then
  Begin
    CC:=CC+1;
    EdtMona_3.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMona_3.Text<>'N') then
  Begin
    EdtMona_3.Font.Color:=clRed;
    CE:=CE+1;
    Calcular;
   End;
 end;

procedure TFrmCaca_Palavras.EdtMona_4_Muxila_6Change(Sender: TObject);
begin
  if  (EdtMona_4_Muxila_6.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMona_4_Muxila_6.Text='A') then
  Begin
    CC:=CC+1;
    EdtMona_4_Muxila_6.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMona_4_Muxila_6.Text<>'A') then
  Begin
    EdtMona_4_Muxila_6.Font.Color:=clRed;
    Ce:=CE+1;
    Calcular;
    End;
 End;

procedure TFrmCaca_Palavras.LblSacoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  FrmPrincipal.feito;
  FrmPrincipal.Nate:=0;
  FrmPrincipal.activo;
  FrmPrincipal.edtbusca.Text:='Muxila';
  FrmPrincipal.fec:=1;
  FrmPrincipal.ShowModal;

  end;

procedure TFrmCaca_Palavras.LblMonaClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  FrmPrincipal.feito;
  FrmPrincipal.Nate:=0;
  FrmPrincipal.activo;
  FrmPrincipal.edtbusca.Text:='Mona';
  FrmPrincipal.fec:=1;
  FrmPrincipal.ShowModal;
end;

procedure TFrmCaca_Palavras.LblCompaClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  FrmPrincipal.feito;
  FrmPrincipal.Nate:=0;
  FrmPrincipal.activo;
  FrmPrincipal.edtbusca.Text:='Mucamba';
  FrmPrincipal.fec:=1;
  FrmPrincipal.ShowModal;

  end;

Procedure TFrmCaca_Palavras.Calcular;
begin

 FrmCaca_Palavras.LblTot_A.Caption:=IntToStr(FrmCaca_Palavras.CC) ;
 FrmCaca_Palavras.LblTot_E.Caption:=IntToStr(FrmCaca_Palavras.CE) ;

end;

procedure TFrmCaca_Palavras.Limpar;
Begin

 EdtNada.SetFocus;
 CE:=0;
 CC:=0;

  EdtMona_1_Mucamba_1.ReadOnly:=FALSE;
  EdtMona_2.ReadOnly:=FALSE;
  EdtMona_3.ReadOnly:=FALSE;
  EdtMona_4_Muxila_6.ReadOnly:=FALSE;

  EdtMona_1_Mucamba_1.Clear;
  EdtMona_2.Clear;
  EdtMona_3.Clear;
  EdtMona_4_Muxila_6.Clear;
  EdtMona_1_Mucamba_1.Clear;
  EdtMona_2 .Clear;
  EdtMona_3 .Clear;

  LblTot_A.Caption:='';
  LblTot_E.Caption:='';


  End;
procedure TFrmCaca_Palavras.EdtMona_1_Mucamba_1Exit(Sender: TObject);
begin
EdtMona_1_Mucamba_1.ReadOnly:=TRUE;
end;

procedure TFrmCaca_Palavras.EdtMona_2Exit(Sender: TObject);
begin
    EdtMona_2.ReadOnly:=TRUE;

end;

procedure TFrmCaca_Palavras.EdtMona_3Exit(Sender: TObject);
begin
    EdtMona_3.ReadOnly:=TRUE;

end;

procedure TFrmCaca_Palavras.EdtMona_4_Muxila_6Exit(Sender: TObject);
begin
    EdtMona_4_Muxila_6.ReadOnly:=TRUE;

end;

procedure TFrmCaca_Palavras.SpedButonLimparClick(Sender: TObject);
begin
Limpar
end;

procedure TFrmCaca_Palavras.LblMonaMouseLeave(Sender: TObject);
begin
LblHelp.Caption:='';
end;

procedure TFrmCaca_Palavras.LblCompaMouseLeave(Sender: TObject);
begin
LblHelp.Caption:='';
end;

procedure TFrmCaca_Palavras.LblSacoMouseLeave(Sender: TObject);
begin
 LblHelp.Caption:='';
end;

procedure TFrmCaca_Palavras.Limpe;
Begin

 CE:=0;
 CC:=0;

  EdtMona_1_Mucamba_1.ReadOnly:=FALSE;
  EdtMona_2.ReadOnly:=FALSE;
  EdtMona_3.ReadOnly:=FALSE;
  EdtMona_4_Muxila_6.ReadOnly:=FALSE;

  EdtMona_1_Mucamba_1.Clear;
  EdtMona_2.Clear;
  EdtMona_3.Clear;
  EdtMona_4_Muxila_6 .Clear;
  EdtMona_1_Mucamba_1 .Clear;
  EdtMona_2 .Clear;
  EdtMona_3 .Clear;

  LblTot_A.Caption:='';
  LblTot_E.Caption:='';

  End;
procedure TFrmCaca_Palavras.FormShow(Sender: TObject);
begin
Limpar;

end;

procedure TFrmCaca_Palavras.EdtMuxila_1Change(Sender: TObject);
begin
if  (EdtMuxila_1.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMuxila_1.Text='M') then
  Begin
    CC:=CC+1;
    EdtMuxila_1.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMuxila_1.Text<>'M') then
  Begin
    CE:=CE+1;
    EdtMuxila_1.Font.Color:=clRed;
    Calcular;
   End;
end;

procedure TFrmCaca_Palavras.EdtMuxila_2Change(Sender: TObject);
begin
   if  (EdtMuxila_2.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMuxila_2.Text='U') then
  Begin
    CC:=CC+1;
    EdtMuxila_2.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMuxila_2.Text<>'U') then
  Begin
    CE:=CE+1;
    EdtMuxila_2.Font.Color:=clRed;
    Calcular;
   End;
End;

procedure TFrmCaca_Palavras.EdtMuxila_3Change(Sender: TObject);
begin
if  (EdtMuxila_3.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMuxila_3.Text='X') then
  Begin
    CC:=CC+1;
    EdtMuxila_3.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMona_3.Text<>'X') then
  Begin
    CE:=CE+1;
    EdtMuxila_3.Font.Color:=clRed;
    Calcular;
   End;
end;

procedure TFrmCaca_Palavras.EdtMuxila_4Change(Sender: TObject);
begin
if  (EdtMuxila_4.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMuxila_4.Text='I') then
  Begin
    CC:=CC+1;
    EdtMuxila_4.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMuxila_4.Text<>'I') then
  Begin
    CE:=CE+1;
    EdtMuxila_4.Font.Color:=clRed;
    Calcular;
   End;
end;

procedure TFrmCaca_Palavras.EdtMuxila_5Change(Sender: TObject);
begin
if  (EdtMuxila_5.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMuxila_5.Text='L') then
  Begin
    CC:=CC+1;
    EdtMuxila_5.Font.Color:=clGreen;
    Calcular;
  End
 else
  if (EdtMuxila_5.Text<>'L') then
  Begin
    CE:=CE+1;
    EdtMuxila_5.Font.Color:=clRed;
    Calcular;
   End;
end;
procedure TFrmCaca_Palavras.EdtMucamba_2Change(Sender: TObject);
begin
   if  (EdtMucamba_2.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMucamba_2.Text='U') then
  Begin
    CC:=CC+1;
    EdtMucamba_2.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMucamba_2.Text<>'U') then
  Begin
    CE:=CE+1;
    EdtMucamba_2.Font.Color:=clRed;
    Calcular;
   End;

end;

procedure TFrmCaca_Palavras.EdtMucamba_3Change(Sender: TObject);
begin
    if  (EdtMucamba_3.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMucamba_3.Text='C') then
  Begin
    CC:=CC+1;
    EdtMucamba_3.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMucamba_3.Text<>'C') then
  Begin
    CE:=CE+1;
    EdtMucamba_3.Font.Color:=clRed;
    Calcular;
   End;
end;

procedure TFrmCaca_Palavras.EdtMucamba_4Change(Sender: TObject);
begin
  if  (EdtMucamba_4.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMucamba_4.Text='A') then
  Begin
    CC:=CC+1;
    EdtMucamba_4.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMucamba_4.Text<>'A') then
  Begin
    EdtMucamba_4.Font.Color:=clRed;
    Ce:=CE+1;
    Calcular;
    End;

end;

procedure TFrmCaca_Palavras.EdtMucamba_5Change(Sender: TObject);
begin
  if  (EdtMucamba_5.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMucamba_5.Text='M') then
  Begin
    CC:=CC+1;
    EdtMucamba_5.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMucamba_5.Text<>'M') then
  Begin
    EdtMucamba_5.Font.Color:=clRed;
    Ce:=CE+1;
    Calcular;
    End;

end;

procedure TFrmCaca_Palavras.EdtMucamba_6Change(Sender: TObject);
begin
  if  (EdtMucamba_6.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMucamba_6.Text='B') then
  Begin
    CC:=CC+1;
    EdtMucamba_6.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMucamba_6.Text<>'B') then
  Begin
    EdtMucamba_6.Font.Color:=clRed;
    Ce:=CE+1;
    Calcular;
    End;

end;

procedure TFrmCaca_Palavras.EdtMucamba_7Change(Sender: TObject);
begin
  if  (EdtMucamba_7.Text='') then
  Begin
    CE:=0;
    CC:=0
   End
 else
 if (EdtMucamba_7.Text='A') then
  Begin
    CC:=CC+1;
    EdtMucamba_7.Font.Color:=clGreen;
    Calcular;
  End
 else
  if  (EdtMucamba_7.Text<>'A') then
  Begin
    EdtMucamba_7.Font.Color:=clRed;
    Ce:=CE+1;
    Calcular;
    End;

end;

procedure TFrmCaca_Palavras.SpedButonCorriClick(Sender: TObject);
begin
EdtMona_1_Mucamba_1.Text:='M';
EdtMona_2.Text:='O';
EdtMona_3.Text:='N';
EdtMona_4_Muxila_6.Text:='A';
EdtMucamba_2.Text:='U';
EdtMucamba_3.Text:='C';
EdtMucamba_4.Text:='A';
EdtMucamba_5.Text:='M';
EdtMucamba_6.Text:='B';
EdtMucamba_7.Text:='A';
EdtMuxila_1.Text:='M';
EdtMuxila_2.Text:='U';
EdtMuxila_3.Text:='X';
EdtMuxila_4.Text:='I';
EdtMuxila_5.Text:='L';
end;
end.
