object Form_principale2: TForm_principale2
  Left = 275
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form_principale2'
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
    Left = 72
    Top = 56
    Width = 230
    Height = 313
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sWebLabel1: TsWebLabel
      Left = 45
      Top = 267
      Width = 146
      Height = 19
      Caption = 'Ajouter des utilisateurs'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Serif'
      Font.Style = []
      HoverFont.Charset = DEFAULT_CHARSET
      HoverFont.Color = clWindowText
      HoverFont.Height = -11
      HoverFont.Name = 'MS Sans Serif'
      HoverFont.Style = []
    end
  end
  object sPanel2: TsPanel
    Left = 336
    Top = 55
    Width = 230
    Height = 313
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object sWebLabel2: TsWebLabel
      Left = 80
      Top = 266
      Width = 69
      Height = 19
      Caption = 'Discussion'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Serif'
      Font.Style = []
      HoverFont.Charset = DEFAULT_CHARSET
      HoverFont.Color = clWindowText
      HoverFont.Height = -11
      HoverFont.Name = 'MS Sans Serif'
      HoverFont.Style = []
    end
    object Button1: TButton
      Left = 72
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object sPanel3: TsPanel
    Left = 608
    Top = 55
    Width = 230
    Height = 313
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object sWebLabel3: TsWebLabel
      Left = 64
      Top = 264
      Width = 110
      Height = 19
      Caption = 'Base de donn'#233'es'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Serif'
      Font.Style = []
      HoverFont.Charset = DEFAULT_CHARSET
      HoverFont.Color = clWindowText
      HoverFont.Height = -11
      HoverFont.Name = 'MS Sans Serif'
      HoverFont.Style = []
    end
  end
  object sToolBar1: TsToolBar
    Left = 0
    Top = 0
    Width = 912
    Height = 26
    ButtonHeight = 19
    Caption = 'sToolBar1'
    TabOrder = 3
    SkinData.SkinSection = 'TOOLBAR'
  end
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 422
    Width = 912
    Height = 19
    Panels = <>
    SkinData.SkinSection = 'STATUSBAR'
  end
end
