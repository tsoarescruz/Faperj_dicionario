unit ULivros_02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, shellapi;

type
  TFrmLivro_02 = class(TForm)
    Img01: TImage;
    SpedButonClara_Anjos: TSpeedButton;
    Img02: TImage;
    SpedButonPlolicarpo: TSpeedButton;
    procedure SpedButonClara_AnjosClick(Sender: TObject);
    procedure SpedButonPlolicarpoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure feito(Sender: TObject);
    procedure Img01Click(Sender: TObject);
    procedure Img02Click(Sender: TObject);
  private
    { Private declarations }
  public
  
    { Public declarations }
  end;

var
  FrmLivro_02: TFrmLivro_02;

implementation

uses UManuel_Inacio, ULoggo;

{$R *.dfm}

procedure TFrmLivro_02.SpedButonClara_AnjosClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\Clara_Anjos - Lima Barreto.html'),
nil,nil,sw_Shownormal);

end;

procedure TFrmLivro_02.SpedButonPlolicarpoClick(Sender: TObject);
begin
ShellExecute(Handle,nil,PChar(caminho +'Páginas\Policarpo Quaresma - Lima Barreto.html'),
nil,nil,sw_Shownormal);

end;

procedure TFrmLivro_02.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
FrmManuel_Inacio.show;
FrmLivro_02.hide;
end;

procedure TFrmLivro_02.Feito(Sender: TObject);
Begin
 FrmLivro_02.Img01.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
 FrmLivro_02.Img02.Picture.LoadFromFile(caminho +'icons\Clipboard.ico');
End;
procedure TFrmLivro_02.Img01Click(Sender: TObject);
begin
frmlivro_02.SpedButonClara_AnjosClick(nil);
end;

procedure TFrmLivro_02.Img02Click(Sender: TObject);
begin
FrmLivro_02.SpedButonPlolicarpoClick(nil);
end;

end.
