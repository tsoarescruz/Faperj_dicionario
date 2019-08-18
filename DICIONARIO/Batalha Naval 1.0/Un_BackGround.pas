unit Un_BackGround;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFm_BackGround = class(TForm)
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_BackGround: TFm_BackGround;

implementation

uses Un_BatalhaNavalDisplay;

{$R *.dfm}

procedure TFm_BackGround.FormActivate(Sender: TObject);
begin
  with TFm_BatalhaNavalDisplay.Create(Application) do
  begin
    ShowModal;
    Free;
  end;
  Close;
end;

end.
