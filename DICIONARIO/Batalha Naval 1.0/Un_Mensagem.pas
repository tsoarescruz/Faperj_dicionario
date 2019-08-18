unit Un_Mensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TFm_Mensagem = class(TForm)
    Pnl_Mensagem: TPanel;
    Pnl_MensagemInterno: TPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Pnl_MensagemInternoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_Mensagem: TFm_Mensagem;

implementation

{$R *.dfm}

procedure TFm_Mensagem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_ESCAPE) or (key = VK_RETURN) then Close;
end;

procedure TFm_Mensagem.Pnl_MensagemInternoClick(Sender: TObject);
begin
  Close
end;

end.
