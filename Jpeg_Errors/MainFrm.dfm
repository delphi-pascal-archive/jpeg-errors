object Form1: TForm1
  Left = 257
  Top = 127
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Jpeg Error Number to Message'
  ClientHeight = 89
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 67
    Width = 32
    Height = 16
    Caption = 'Error:'
  end
  object Label2: TLabel
    Left = 8
    Top = 16
    Width = 117
    Height = 16
    Caption = 'Jpeg Error Number:'
  end
  object Button1: TButton
    Left = 216
    Top = 8
    Width = 297
    Height = 25
    Caption = 'Find it out'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 136
    Top = 8
    Width = 73
    Height = 24
    TabOrder = 1
    OnChange = Edit1Change
  end
  object TrackBar1: TTrackBar
    Left = 8
    Top = 40
    Width = 505
    Height = 17
    LineSize = 10
    Max = 119
    TabOrder = 2
    ThumbLength = 12
    OnChange = TrackBar1Change
  end
end
