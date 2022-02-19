object Form_bdd: TForm_bdd
  Left = 202
  Top = 123
  Width = 1116
  Height = 590
  Caption = 'Form_bdd'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sGroupBox1: TsGroupBox
    Left = 16
    Top = 53
    Width = 201
    Height = 209
    TabOrder = 0
    SkinData.SkinSection = 'GROUPBOX'
    object DBImage1: TDBImage
      Left = 15
      Top = 19
      Width = 169
      Height = 175
      DataField = 'IMAGE'
      DataSource = DataSource1
      Stretch = True
      TabOrder = 0
    end
  end
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 531
    Width = 1100
    Height = 20
    Panels = <>
    SkinData.SkinSection = 'STATUSBAR'
    object SpeedButton1: TSpeedButton
      Left = 5
      Top = 3
      Width = 11
      Height = 16
      Caption = '< '
      Flat = True
      OnClick = SpeedButton1Click
    end
  end
  object sGroupBox2: TsGroupBox
    Left = 16
    Top = 269
    Width = 1073
    Height = 241
    TabOrder = 2
    SkinData.SkinSection = 'GROUPBOX'
    object DBGrid1: TDBGrid
      Left = 12
      Top = 18
      Width = 1050
      Height = 210
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOM'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRENOM'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_NAIS'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADDRESS'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSEUDO'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOT_PASS'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMAGE'
          Width = 112
          Visible = True
        end>
    end
  end
  object sGroupBox3: TsGroupBox
    Left = 232
    Top = 54
    Width = 857
    Height = 207
    TabOrder = 3
    SkinData.SkinSection = 'GROUPBOX'
    object sPanel2: TsPanel
      Left = 8
      Top = 14
      Width = 839
      Height = 181
      Color = 15461355
      TabOrder = 0
      SkinData.CustomColor = True
      SkinData.CustomFont = True
      SkinData.SkinSection = 'PANEL'
      object DBText1: TDBText
        Left = 88
        Top = 43
        Width = 31
        Height = 16
        DataField = 'ID'
        DataSource = DataSource1
      end
      object DBText2: TDBText
        Left = 182
        Top = 43
        Width = 65
        Height = 17
        DataField = 'NOM'
        DataSource = DataSource1
      end
      object DBText3: TDBText
        Left = 316
        Top = 44
        Width = 65
        Height = 17
        DataField = 'PRENOM'
        DataSource = DataSource1
      end
      object DBText4: TDBText
        Left = 525
        Top = 44
        Width = 65
        Height = 17
        DataField = 'DATE_NAIS'
        DataSource = DataSource1
        DragCursor = crHandPoint
      end
      object DBText5: TDBText
        Left = 678
        Top = 45
        Width = 65
        Height = 17
        DataField = 'ADDRESS'
        DataSource = DataSource1
      end
      object DBText6: TDBText
        Left = 112
        Top = 104
        Width = 129
        Height = 17
        DataField = 'EMAIL'
        DataSource = DataSource1
      end
      object DBText7: TDBText
        Left = 320
        Top = 103
        Width = 65
        Height = 17
        DataField = 'PSEUDO'
        DataSource = DataSource1
      end
      object Label1: TLabel
        Left = 56
        Top = 41
        Width = 26
        Height = 16
        Caption = 'Id : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 135
        Top = 41
        Width = 40
        Height = 16
        Caption = 'Nom : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 247
        Top = 42
        Width = 62
        Height = 16
        Caption = 'Pr'#233'nom : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 380
        Top = 42
        Width = 132
        Height = 16
        Caption = 'Date de naissance : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 607
        Top = 43
        Width = 67
        Height = 16
        Caption = 'Address : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 56
        Top = 103
        Width = 45
        Height = 16
        Caption = 'Email : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 256
        Top = 102
        Width = 60
        Height = 16
        Caption = 'Pseudo : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 1100
    Height = 42
    Align = alTop
    Caption = 'Niklas suler'
    Color = 15461355
    TabOrder = 4
    SkinData.CustomColor = True
    SkinData.CustomFont = True
    SkinData.SkinSection = 'PANEL'
    object DBText8: TDBText
      Left = 508
      Top = 14
      Width = 59
      Height = 17
      DataField = 'NOM'
      DataSource = DataSource1
    end
    object DBText9: TDBText
      Left = 545
      Top = 14
      Width = 61
      Height = 17
      DataField = 'PRENOM'
      DataSource = DataSource1
    end
    object sEdit1: TsEdit
      Left = 27
      Top = 9
      Width = 177
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Recherche'
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object BitBtn1: TBitBtn
      Left = 1056
      Top = 8
      Width = 33
      Height = 25
      Caption = '&'
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkRetry
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 384
    Top = 8
  end
  object ADOTable1: TADOTable
    Connection = Loading_form.ADOConnection1
    Left = 328
    Top = 8
  end
end
