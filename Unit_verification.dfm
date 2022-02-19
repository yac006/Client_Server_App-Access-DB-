object Form_Verification: TForm_Verification
  Left = 455
  Top = 241
  BorderStyle = bsSingle
  Caption = 'Verification'
  ClientHeight = 176
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 19
    Top = 14
    Width = 455
    Height = 142
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sRadioGroup1: TsRadioGroup
      Left = 17
      Top = 7
      Width = 415
      Height = 86
      ParentBackground = False
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
    end
    object sRadioButton1: TsRadioButton
      Left = 48
      Top = 36
      Width = 98
      Height = 19
      Caption = 'Interface Client'
      TabOrder = 1
      SkinData.SkinSection = 'CHECKBOX'
    end
    object sRadioButton2: TsRadioButton
      Left = 162
      Top = 36
      Width = 103
      Height = 19
      Caption = 'Interface Server'
      TabOrder = 2
      SkinData.SkinSection = 'CHECKBOX'
    end
    object sRadioButton3: TsRadioButton
      Left = 287
      Top = 36
      Width = 119
      Height = 19
      Caption = 'Client/Server (Test)'
      TabOrder = 3
      SkinData.SkinSection = 'CHECKBOX'
    end
    object sButton1: TsButton
      Left = 355
      Top = 106
      Width = 75
      Height = 22
      Caption = 'Confirmer'
      TabOrder = 4
      OnClick = sButton1Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
end
