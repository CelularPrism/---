object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1052#1077#1090#1086#1076' '#1085#1072#1080#1084#1077#1085#1100#1096#1080#1093' '#1082#1074#1072#1076#1088#1072#1090#1086#1074
  ClientHeight = 807
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 59
    Height = 33
    Caption = 'N = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 288
    Top = 24
    Width = 62
    Height = 33
    Caption = 'M = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 121
    Top = 21
    Width = 49
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = '5'
  end
  object Edit2: TEdit
    Left = 352
    Top = 21
    Width = 49
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = '2'
  end
  object Chart1: TChart
    Left = 488
    Top = 248
    Width = 505
    Height = 345
    Title.Text.Strings = (
      #1052#1077#1090#1086#1076' '#1085#1072#1080#1084#1077#1085#1100#1096#1080#1093' '#1082#1074#1072#1076#1088#1072#1090#1086#1074)
    TabOrder = 2
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object StringGrid1: TStringGrid
    Left = 56
    Top = 80
    Width = 937
    Height = 81
    RowCount = 3
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 3
  end
  object StringGrid2: TStringGrid
    Left = 56
    Top = 248
    Width = 417
    Height = 345
    TabOrder = 4
  end
  object StringGrid3: TStringGrid
    Left = 56
    Top = 175
    Width = 937
    Height = 58
    RowCount = 2
    TabOrder = 5
  end
  object Button1: TButton
    Left = 432
    Top = 21
    Width = 273
    Height = 41
    Caption = #1057#1090#1072#1088#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 728
    Top = 21
    Width = 265
    Height = 41
    Caption = #1057#1087#1088#1072#1074#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button2Click
  end
end
