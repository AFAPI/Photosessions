unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm3.Button1Click(Sender: TObject);
begin
form3.Hide;
form1.Show
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
WindowState := wsMaximized;
WebBrowser1.Navigate(ExtractFilePath(Application.ExeName)+'���� ����������1.html');
end;

end.
