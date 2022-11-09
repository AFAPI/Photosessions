unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm7 = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
   f:text;
   s:string;
   ball:integer;
   Nvern:integer;
implementation

{$R *.dfm}

uses Unit1;

procedure TForm7.Button1Click(Sender: TObject);
begin
if (RadioGroup1.ItemIndex>-1) and (not Eof(f)) then
  begin
    if RadioGroup1.ItemIndex = Nvern-1 then
      begin
      Label1.Caption := '+1 ����!';
      ball:=ball+1; //���� ��������� ������� ������������� ������ ������� ������, �� ���� ������������ � ��������� ���� ��� ���������� �������
      end
    else
       Label1.Caption := '���� �� ���������!';
  RadioGroup1.Items.Clear;
  Repeat
    if (s[1]='-') then
    begin
      delete(s,1,1);
      RadioGroup1.Caption:=s;
    end
    else
    if s[1]='*' then
    begin
      delete(s,1,1);
      Nvern:=StrToInt(s);
    end
    else
    RadioGroup1.Items.Add(s);
    readln(f,s);
  until (s[1]='-') or (Eof(f));
  end
//���� ����� ����� ���������, ������ ������� �����������
  Else if Eof(f) then
  begin
    delete(s,1,1);
    Nvern:=StrToInt(s);
    if RadioGroup1.ItemIndex = Nvern-1 then
      ball:=ball+1;
    CloseFile(f);
    Button1.Enabled := False;
    Application.Title := '���������';
    if MessageDlg('���� ���������� ������: ' + IntToStr(ball), mtCustom, [mbOK], 0) = mrOK then
    Form1.Show;
    Form7.Hide;
end;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
form7.Hide;
form1.Show;
end;

end.

