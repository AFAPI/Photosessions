unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.MPlayer, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    MediaPlayer1: TMediaPlayer;
    Button2: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm4.Button1Click(Sender: TObject);
begin
MediaPlayer1.DeviceType:= dtAutoSelect;
MediaPlayer1.FileName := ExtractFilePath(Application.ExeName) + 'Untitled.wmv';
MediaPlayer1.Open;
MediaPlayer1.Play;
//WindowState:=wsMaximized;

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
form4.Hide;
form1.Show;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'photo\backgroundvideo.jpg');
  WindowState := wsMaximized;
end;

end.
