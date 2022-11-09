object Form4: TForm4
  Left = 0
  Top = 0
  Align = alBottom
  Caption = 'Video'
  ClientHeight = 669
  ClientWidth = 1111
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1111
    Height = 669
    Align = alClient
    Stretch = True
    ExplicitLeft = -8
    ExplicitTop = -24
  end
  object Button1: TButton
    Left = 728
    Top = 604
    Width = 121
    Height = 41
    Caption = #1054#1090#1082#1088#1099#1090#1100' '
    TabOrder = 0
    OnClick = Button1Click
  end
  object MediaPlayer1: TMediaPlayer
    Left = 424
    Top = 596
    Width = 85
    Height = 65
    VisibleButtons = [btPlay, btPause, btStop]
    DoubleBuffered = True
    Display = Panel1
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 8
    Top = 605
    Width = 121
    Height = 39
    Caption = #1085#1072#1079#1072#1076
    TabOrder = 2
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 232
    Top = 184
    Width = 473
    Height = 353
    Caption = 'Panel1'
    TabOrder = 3
  end
end
