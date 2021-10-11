object Form1: TForm1
  Left = 223
  Top = 135
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'OpenDialog style'
  ClientHeight = 204
  ClientWidth = 209
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
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 193
    Height = 25
    Caption = 'ICONS'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Tag = 1
    Left = 8
    Top = 48
    Width = 193
    Height = 25
    Caption = 'LIST'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button3: TButton
    Tag = 2
    Left = 8
    Top = 88
    Width = 193
    Height = 25
    Caption = 'DETAIL'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button4: TButton
    Tag = 3
    Left = 8
    Top = 128
    Width = 193
    Height = 25
    Caption = 'THUMBS'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button5: TButton
    Tag = 4
    Left = 8
    Top = 168
    Width = 193
    Height = 25
    Caption = 'TILES'
    TabOrder = 4
    OnClick = Button1Click
  end
  object OpenDialog1: TOpenDialog
    OnShow = OpenDialog1Show
    Left = 80
    Top = 40
  end
end
