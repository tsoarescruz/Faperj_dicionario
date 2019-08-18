Unit UJogo_Velha;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, Buttons;

Type
  TFrmJogo_Velha = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Novo1: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Procedure Jogar(var botao:Tbutton);
    Procedure Testar;
    Procedure FormCreate(Sender: TObject);
    Procedure Button1Click(Sender:TObject);
    Procedure Novo1Click(Sender: TObject);
    Procedure Sair1Click(Sender: TObject);
    Procedure Button2Click(Sender: TObject);
    Procedure Button3Click(Sender: TObject);
    Procedure Button4Click(Sender: TObject);
    Procedure Button5Click(Sender: TObject);
    Procedure Button6Click(Sender: TObject);
    Procedure Button7Click(Sender: TObject);
    Procedure Button8Click(Sender: TObject);
    Procedure Button9Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);

  Private
    { Private declarations }
  Public
    { Public declarations }
  End;

Var
  FrmJogo_Velha: TFrmJogo_Velha;
  jogador,jogadas:integer;

Implementation

uses UJogos;

{$R *.dfm}

Procedure TFrmJogo_Velha.Jogar(var botao:Tbutton);
 Begin
  If (jogadas<=9) and (botao.Caption='') then
    If jogador=0 then
      Begin
        botao.caption:='0';
        jogador:=1;
        jogadas:=jogadas+1;
      End
    Else
      Begin
        botao.caption:='X';
        jogador:=0;
        jogadas:=jogadas+1;
      End
    Else
      application.MessageBox('Chegou','Atenção',13);
  End;

Procedure TFrmJogo_Velha.Testar;
Begin
  If (button1.Caption=button2.Caption)and(button2.Caption=button3.Caption)and ((button1.Caption<>'')and(button2.Caption<>'')and(button3.Caption<>''))then
    Begin
      Case application.MessageBox('Deseja Continuar?','Você Ganhou!',4) of
        6:novo1.Click;
        7:application.Terminate;
      End;
    End
  Else
    If (button4.Caption=button5.Caption)and(button5.Caption=button6.Caption)and ((button4.Caption<>'')and(button5.Caption<>'')and(button6.Caption<>''))then
      Begin
        Case application.MessageBox('Deseja Continuar?','Você Ganhou!',4) of
          6:novo1.Click;
          7:application.Terminate;
        End;
      End
    Else
      If (button7.Caption=button8.Caption)and(button8.Caption=button9.Caption)and ((button7.Caption<>'')and(button8.Caption<>'')and(button9.Caption<>''))then
        Begin
          Case application.MessageBox('Deseja Continuar?','Você Ganhou!',4) of
            6:novo1.Click;
            7:application.Terminate;
        End;
      End
    Else
      If (button1.Caption=button4.Caption)and(button4.Caption=button7.Caption)and ((button1.Caption<>'')and(button4.Caption<>'')and(button7.Caption<>''))then
        Begin
          Case application.MessageBox('Deseja Continuar?','Você Ganhou!',4) of
            6:novo1.Click;
            7:application.Terminate;
          End;
        End
      Else
        If (button2.Caption=button5.Caption)and(button5.Caption=button8.Caption)and ((button2.Caption<>'')and(button5.Caption<>'')and(button8.Caption<>''))then
          Begin
            Case application.MessageBox('Deseja Continuar?','Você Ganhou!',4) of
              6:novo1.Click;
              7:application.Terminate;
            End;
          End
        Else
          If (button3.Caption=button6.Caption)and(button6.Caption=button9.Caption)and ((button3.Caption<>'')and(button6.Caption<>'')and(button9.Caption<>''))then
            Begin
             Case application.MessageBox('Deseja Continuar?','Você Ganhou!',4) of
              6:novo1.Click;
              7:application.Terminate;
             End;
            End
          Else
            If (button1.Caption=button5.Caption)and(button5.Caption=button9.Caption)and ((button1.Caption<>'')and(button5.Caption<>'')and(button9.Caption<>''))then
              Begin
                Case application.MessageBox('Deseja Continuar?','Você Ganhou!',4) of
                  6:novo1.Click;
                  7:application.Terminate;
                End;
              End
            Else
              If (button3.Caption=button5.Caption)and(button5.Caption=button7.Caption)and ((button3.Caption<>'')and(button5.Caption<>'')and(button7.Caption<>''))then
                Begin
                 Case application.MessageBox('Deseja Continuar?','Você Ganhou!',4) of
                   6:novo1.Click;
                   7:application.Terminate;
                 End;
              End
            Else
              If jogadas=9 then
                Begin
                  Case application.MessageBox('Deseja Continuar?','Deu Velha!',4) of
                    6:novo1.Click;
                    7:application.Terminate;
                  End;
                End;
               End;

Procedure TFrmJogo_Velha.FormCreate(Sender: TObject);
 Begin
   jogador:=0;
    jogadas:=0;
  End;

Procedure TFrmJogo_Velha.Button1Click(Sender:TObject);
  Begin
   Jogar(button1);
    Testar;
  End;

Procedure TFrmJogo_Velha.Novo1Click(Sender: TObject);
  Begin
  jogador:=0;
  jogadas:=0;
  button1.Caption:='';  button2.Caption:='';  button3.Caption:='';
  button4.Caption:='';  button5.Caption:='';  button6.Caption:='';
  button7.Caption:='';  button8.Caption:='';  button9.Caption:='';
   End;

Procedure TFrmJogo_Velha.Sair1Click(Sender: TObject);
 Begin
  FrmJogo_Velha.Close;
    FrmJogo.show;
      End;

Procedure TFrmJogo_Velha.Button2Click(Sender: TObject);
 Begin
  Jogar(button2);
   Testar;
  End;

Procedure TFrmJogo_Velha.Button3Click(Sender: TObject);
 Begin
  Jogar(button3);
   Testar;
  End;

Procedure TFrmJogo_Velha.Button4Click(Sender: TObject);
 Begin
  Jogar(button4);
   Testar;
  End;

Procedure TFrmJogo_Velha.Button5Click(Sender: TObject);
 Begin
 Jogar(button5);
  Testar;
  End;

Procedure TFrmJogo_Velha.Button6Click(Sender: TObject);
 Begin
  Jogar(button6);
   Testar;
  End;

Procedure TFrmJogo_Velha.Button7Click(Sender: TObject);
 Begin
  Jogar(button7);
   Testar;
 End;

Procedure TFrmJogo_Velha.Button8Click(Sender: TObject);
 Begin
  Jogar(button8);
   Testar;
 End;

Procedure TFrmJogo_Velha.Button9Click(Sender: TObject);
 Begin
  Jogar(button9);
   Testar;
  End;

procedure TFrmJogo_Velha.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  If MessageDlg('Deseja Mesmo Sair?', mtInformation, [mbyes,mbno], 0) = mryes then
     Begin
      FrmJogo.Show;
     End
  Else
  Begin
   CanClose:=false;
    End;

end;

procedure TFrmJogo_Velha.FormActivate(Sender: TObject);
begin
FrmJogo_Velha.Color:=clBtnText;
FrmJogo_Velha.Font.Name:='Times New Roman';
FrmJogo_Velha.Font.Color:=clBtnHighlight;
FrmJogo_Velha.Font.Style:=[fsItalic, fsBold];
FrmJogo_Velha.Font.Size:=10;
end;

End.
