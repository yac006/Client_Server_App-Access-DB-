object Form_Client: TForm_Client
  Left = 423
  Top = 133
  Width = 592
  Height = 524
  Caption = 'Client'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 248
    Top = 9
    Width = 312
    Height = 456
    TabOrder = 0
    object Button2: TButton
      Left = 217
      Top = 415
      Width = 75
      Height = 21
      Caption = 'Envoyer'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 15
      Top = 415
      Width = 195
      Height = 21
      TabOrder = 1
    end
    object Memo1: TMemo
      Left = 13
      Top = 19
      Width = 284
      Height = 388
      Lines.Strings = (
        ' ')
      TabOrder = 2
    end
  end
  object GroupBox4: TGroupBox
    Left = 16
    Top = 119
    Width = 220
    Height = 346
    TabOrder = 1
    object Label1: TLabel
      Left = 19
      Top = 14
      Width = 16
      Height = 13
      Caption = 'IP :'
    end
    object Label2: TLabel
      Left = 19
      Top = 63
      Width = 36
      Height = 13
      Caption = 'PORT :'
    end
    object Shape1: TShape
      Left = 93
      Top = 121
      Width = 9
      Height = 9
      Brush.Color = 14803425
      Shape = stCircle
    end
    object Label3: TLabel
      Left = 17
      Top = 180
      Width = 44
      Height = 13
      Caption = 'Address :'
    end
    object Label4: TLabel
      Left = 17
      Top = 226
      Width = 28
      Height = 13
      Caption = 'Host :'
    end
    object sGauge1: TsGauge
      Left = 50
      Top = 293
      Width = 102
      Height = 19
      Visible = False
      SkinData.SkinSection = 'GAUGE'
      ForeColor = clBlack
      Progress = 0
      Suffix = '%'
    end
    object Edit1: TEdit
      Left = 18
      Top = 31
      Width = 181
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 18
      Top = 79
      Width = 181
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 119
      Top = 112
      Width = 75
      Height = 21
      Caption = 'Connecter'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 17
      Top = 117
      Width = 70
      Height = 17
      Caption = 'Connect'#233
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 16
      Top = 196
      Width = 169
      Height = 21
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 16
      Top = 243
      Width = 169
      Height = 21
      TabOrder = 5
    end
  end
  object sPanel1: TsPanel
    Left = 17
    Top = 14
    Width = 217
    Height = 93
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object Label5: TLabel
      Left = 64
      Top = 31
      Width = 72
      Height = 29
      Caption = '??????'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape2: TShape
      Left = 159
      Top = 62
      Width = 14
      Height = 12
      Brush.Color = 14803425
      Shape = stCircle
    end
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = ClientSocket1Connect
    OnDisconnect = ClientSocket1Disconnect
    OnRead = ClientSocket1Read
    Left = 160
    Top = 264
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 20
    OnTimer = Timer1Timer
    Left = 160
    Top = 431
  end
end
