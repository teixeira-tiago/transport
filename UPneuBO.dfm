object FPneuBO: TFPneuBO
  Left = 286
  Top = 197
  Width = 547
  Height = 471
  BorderIcons = [biSystemMenu]
  Caption = 'Controle de Pneus'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 539
    Height = 444
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Controle de Pneu'
      object Panel1: TPanel
        Left = 4
        Top = 4
        Width = 221
        Height = 190
        TabOrder = 0
        object Label1: TLabel
          Left = 33
          Top = 10
          Width = 25
          Height = 13
          Caption = 'Pneu'
        end
        object Label2: TLabel
          Left = 28
          Top = 35
          Width = 30
          Height = 13
          Caption = 'Marca'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 34
          Top = 60
          Width = 24
          Height = 13
          Caption = 'Valor'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 4
          Top = 80
          Width = 61
          Height = 13
          Caption = 'Observa'#231#227'o:'
          FocusControl = DBMemo1
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 61
          Top = 6
          Width = 154
          Height = 21
          DataField = 'CODPNEU'
          DataSource = dsPneuBO
          KeyField = 'CODPNEU'
          ListField = 'NSPNEU'
          ListSource = dsPneu
          TabOrder = 0
          OnDropDown = DBLookupComboBox1DropDown
          OnKeyPress = DBLookupComboBox1KeyPress
        end
        object DBEdit1: TDBEdit
          Left = 61
          Top = 31
          Width = 154
          Height = 21
          DataField = 'MARCAPNEU'
          DataSource = dsPneu
          TabOrder = 1
          OnKeyPress = DBLookupComboBox1KeyPress
        end
        object DBEdit2: TDBEdit
          Left = 61
          Top = 56
          Width = 154
          Height = 21
          DataField = 'VALORPNEU'
          DataSource = dsPneu
          TabOrder = 2
          OnKeyPress = DBLookupComboBox1KeyPress
        end
        object DBMemo1: TDBMemo
          Left = 5
          Top = 95
          Width = 210
          Height = 89
          DataField = 'OBSPNEU'
          DataSource = dsPneu
          ScrollBars = ssVertical
          TabOrder = 3
        end
      end
      object Panel2: TPanel
        Left = 232
        Top = 4
        Width = 293
        Height = 190
        TabOrder = 1
        object Label5: TLabel
          Left = 18
          Top = 10
          Width = 47
          Height = 13
          Caption = 'Caminh'#227'o'
        end
        object Label6: TLabel
          Left = 3
          Top = 35
          Width = 62
          Height = 13
          Caption = 'Colocado em'
          FocusControl = DBEdit3
        end
        object Label7: TLabel
          Left = 8
          Top = 60
          Width = 57
          Height = 13
          Caption = 'Retirado em'
          FocusControl = DBEdit4
        end
        object Label8: TLabel
          Left = 144
          Top = 35
          Width = 16
          Height = 13
          Caption = 'KM'
          FocusControl = DBEdit5
        end
        object Label9: TLabel
          Left = 144
          Top = 60
          Width = 16
          Height = 13
          Caption = 'KM'
          FocusControl = DBEdit6
        end
        object Label50: TLabel
          Left = 85
          Top = 85
          Width = 75
          Height = 13
          Caption = 'Total Percorrido'
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 68
          Top = 6
          Width = 145
          Height = 21
          DataField = 'CODVEIC'
          DataSource = dsPneuBO
          KeyField = 'CODVEIC'
          ListField = 'PLACA'
          ListSource = dsVeiculo
          TabOrder = 0
          OnDropDown = DBLookupComboBox2DropDown
          OnKeyPress = DBLookupComboBox1KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 68
          Top = 31
          Width = 68
          Height = 21
          DataField = 'DATACOLOCA'
          DataSource = dsPneuBO
          TabOrder = 1
          OnKeyPress = DBLookupComboBox1KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 68
          Top = 56
          Width = 68
          Height = 21
          DataField = 'DATATIRA'
          DataSource = dsPneuBO
          TabOrder = 3
          OnKeyPress = DBLookupComboBox1KeyPress
        end
        object DBEdit5: TDBEdit
          Left = 163
          Top = 31
          Width = 70
          Height = 21
          DataField = 'KMINICPNEU'
          DataSource = dsPneuBO
          TabOrder = 2
          OnKeyPress = DBLookupComboBox1KeyPress
        end
        object DBEdit6: TDBEdit
          Left = 163
          Top = 56
          Width = 70
          Height = 21
          DataField = 'KMFIMPNEU'
          DataSource = dsPneuBO
          TabOrder = 4
          OnExit = DBEdit6Exit
          OnKeyPress = DBEdit6KeyPress
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 56
          Top = 109
          Width = 185
          Height = 50
          Caption = 'Situa'#231#227'o do Pneu'
          Columns = 2
          DataField = 'RECAPEADO'
          DataSource = dsPneuBO
          Items.Strings = (
            'Novo'
            'Recapeado 1'
            'Recapeado 2'
            'Recapeado 3')
          TabOrder = 6
          Values.Strings = (
            '0'
            '1'
            '2'
            '3')
          OnClick = DBRadioGroup1Click
        end
        object DBNavigator1: TDBNavigator
          Left = 96
          Top = 161
          Width = 100
          Height = 25
          DataSource = dsPneuBO
          VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
          Hints.Strings = (
            'Primeiro Registro'
            'Registro Anterior'
            'Registro Seguinte'
            'Ultimo Registro'
            'Incluir Registro'
            'Excluir Registro'
            'Editar Registro'
            'Gravar Registro'
            'Cancelar Opera'#231#227'o'
            'Atualizar')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = DBNavigator1Click
        end
        object DBEdit39: TDBEdit
          Left = 163
          Top = 81
          Width = 71
          Height = 21
          DataField = 'PERCURSO'
          DataSource = dsPneuBO
          TabOrder = 5
          OnKeyPress = DBLookupComboBox1KeyPress
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 253
        Width = 531
        Height = 163
        Align = alBottom
        TabOrder = 5
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 529
          Height = 161
          Align = alClient
          DataSource = dsQPneuCam
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'PLACA'
              Title.Caption = 'Caminh'#227'o'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NSPNEU'
              Title.Caption = 'Pneu'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATACOLOCA'
              Title.Caption = 'Data Coloca'#231#227'o'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KMINICPNEU'
              Title.Caption = 'KM Coloca'#231#227'o'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATATIRA'
              Title.Caption = 'Data Retirada'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KMFIMPNEU'
              Title.Caption = 'KM Retirada'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECAPEADO'
              PickList.Strings = (
                'Novo'
                'Recapeado1'
                'Recapeado2'
                'Recapeado3')
              Title.Caption = 'Situa'#231#227'o'
              Visible = False
            end>
        end
      end
      object RadioGroup1: TRadioGroup
        Left = 6
        Top = 196
        Width = 146
        Height = 30
        Caption = 'Localizar:'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Pneu'
          'Caminh'#227'o')
        TabOrder = 2
        OnClick = RadioGroup1Click
      end
      object Edit1: TEdit
        Left = 6
        Top = 226
        Width = 146
        Height = 21
        TabOrder = 3
        OnChange = Edit1Change
      end
      object DBNavigator2: TDBNavigator
        Left = 156
        Top = 224
        Width = 40
        Height = 25
        DataSource = dsQPneuCam
        VisibleButtons = [nbPrior, nbNext]
        Hints.Strings = (
          'Primeiro Registro'
          'Registro Anterior'
          'Registro Seguinte'
          'Ultimo Registro'
          'Incluir Registro'
          'Excluir Registro'
          'Editar Registro'
          'Gravar Registro'
          'Cancelar Opera'#231#227'o'
          'Atualizar')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = DBNavigator2Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pneus Novos'
      ImageIndex = 1
      object Label18: TLabel
        Left = 15
        Top = 5
        Width = 70
        Height = 13
        Caption = 'Localizar Pneu'
      end
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 1
        Top = 26
        Width = 529
        Height = 390
        DataSource = dsPneuN
        PanelHeight = 78
        PanelWidth = 513
        TabOrder = 1
        RowCount = 5
        object Label10: TLabel
          Left = 12
          Top = 8
          Width = 39
          Height = 13
          Caption = 'N'#186' S'#233'rie'
          FocusControl = DBEdit7
        end
        object Label11: TLabel
          Left = 21
          Top = 32
          Width = 30
          Height = 13
          Caption = 'Marca'
          FocusControl = DBEdit8
        end
        object Label12: TLabel
          Left = 4
          Top = 56
          Width = 47
          Height = 13
          Caption = 'Caminh'#227'o'
          FocusControl = DBEdit9
        end
        object Label13: TLabel
          Left = 137
          Top = 8
          Width = 62
          Height = 13
          Caption = 'Colocado em'
          FocusControl = DBEdit10
        end
        object Label14: TLabel
          Left = 142
          Top = 32
          Width = 57
          Height = 13
          Caption = 'Retirado em'
          FocusControl = DBEdit11
        end
        object Label15: TLabel
          Left = 274
          Top = 8
          Width = 16
          Height = 13
          Caption = 'KM'
          FocusControl = DBEdit12
        end
        object Label16: TLabel
          Left = 274
          Top = 32
          Width = 16
          Height = 13
          Caption = 'KM'
          FocusControl = DBEdit13
        end
        object Label17: TLabel
          Left = 156
          Top = 56
          Width = 43
          Height = 13
          Caption = 'KM Total'
        end
        object Label19: TLabel
          Left = 306
          Top = 56
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object DBEdit7: TDBEdit
          Left = 54
          Top = 4
          Width = 80
          Height = 21
          DataField = 'NSPNEU'
          DataSource = dsPneuN
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 54
          Top = 28
          Width = 80
          Height = 21
          DataField = 'MARCAPNEU'
          DataSource = dsPneuN
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 54
          Top = 52
          Width = 80
          Height = 21
          DataField = 'PLACA'
          DataSource = dsPneuN
          TabOrder = 2
        end
        object DBEdit10: TDBEdit
          Left = 202
          Top = 4
          Width = 68
          Height = 21
          DataField = 'DATACOLOCA'
          DataSource = dsPneuN
          TabOrder = 3
        end
        object DBEdit11: TDBEdit
          Left = 202
          Top = 28
          Width = 68
          Height = 21
          DataField = 'DATATIRA'
          DataSource = dsPneuN
          TabOrder = 4
        end
        object DBEdit12: TDBEdit
          Left = 293
          Top = 4
          Width = 70
          Height = 21
          DataField = 'KMINICPNEU'
          DataSource = dsPneuN
          TabOrder = 5
        end
        object DBEdit13: TDBEdit
          Left = 293
          Top = 28
          Width = 70
          Height = 21
          DataField = 'KMFIMPNEU'
          DataSource = dsPneuN
          TabOrder = 6
        end
        object DBEdit14: TDBEdit
          Left = 202
          Top = 52
          Width = 68
          Height = 21
          DataField = 'PERCURSO'
          DataSource = dsPneuN
          TabOrder = 7
        end
        object DBMemo2: TDBMemo
          Left = 367
          Top = 4
          Width = 143
          Height = 69
          DataField = 'OBSPNEU'
          DataSource = dsPneuN
          TabOrder = 8
        end
      end
      object Edit2: TEdit
        Left = 88
        Top = 1
        Width = 121
        Height = 21
        TabOrder = 0
        OnChange = Edit2Change
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Pneus Recapados 1'
      ImageIndex = 2
      object Label29: TLabel
        Left = 15
        Top = 5
        Width = 70
        Height = 13
        Caption = 'Localizar Pneu'
      end
      object DBCtrlGrid2: TDBCtrlGrid
        Left = 1
        Top = 26
        Width = 529
        Height = 390
        DataSource = dsPneu1
        PanelHeight = 78
        PanelWidth = 513
        TabOrder = 0
        RowCount = 5
        object Label20: TLabel
          Left = 12
          Top = 8
          Width = 39
          Height = 13
          Caption = 'N'#186' S'#233'rie'
          FocusControl = DBEdit15
        end
        object Label21: TLabel
          Left = 21
          Top = 32
          Width = 30
          Height = 13
          Caption = 'Marca'
          FocusControl = DBEdit16
        end
        object Label22: TLabel
          Left = 4
          Top = 56
          Width = 47
          Height = 13
          Caption = 'Caminh'#227'o'
          FocusControl = DBEdit17
        end
        object Label23: TLabel
          Left = 137
          Top = 8
          Width = 62
          Height = 13
          Caption = 'Colocado em'
          FocusControl = DBEdit18
        end
        object Label24: TLabel
          Left = 142
          Top = 32
          Width = 57
          Height = 13
          Caption = 'Retirado em'
          FocusControl = DBEdit19
        end
        object Label25: TLabel
          Left = 274
          Top = 8
          Width = 16
          Height = 13
          Caption = 'KM'
          FocusControl = DBEdit20
        end
        object Label26: TLabel
          Left = 274
          Top = 32
          Width = 16
          Height = 13
          Caption = 'KM'
          FocusControl = DBEdit21
        end
        object Label27: TLabel
          Left = 156
          Top = 56
          Width = 43
          Height = 13
          Caption = 'KM Total'
        end
        object Label28: TLabel
          Left = 306
          Top = 56
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object DBEdit15: TDBEdit
          Left = 54
          Top = 4
          Width = 80
          Height = 21
          DataField = 'NSPNEU'
          DataSource = dsPneu1
          TabOrder = 0
        end
        object DBEdit16: TDBEdit
          Left = 54
          Top = 28
          Width = 80
          Height = 21
          DataField = 'MARCAPNEU'
          DataSource = dsPneu1
          TabOrder = 1
        end
        object DBEdit17: TDBEdit
          Left = 54
          Top = 52
          Width = 80
          Height = 21
          DataField = 'PLACA'
          DataSource = dsPneu1
          TabOrder = 2
        end
        object DBEdit18: TDBEdit
          Left = 202
          Top = 4
          Width = 68
          Height = 21
          DataField = 'DATACOLOCA'
          DataSource = dsPneu1
          TabOrder = 3
        end
        object DBEdit19: TDBEdit
          Left = 202
          Top = 28
          Width = 68
          Height = 21
          DataField = 'DATATIRA'
          DataSource = dsPneu1
          TabOrder = 4
        end
        object DBEdit20: TDBEdit
          Left = 293
          Top = 4
          Width = 70
          Height = 21
          DataField = 'KMINICPNEU'
          DataSource = dsPneu1
          TabOrder = 5
        end
        object DBEdit21: TDBEdit
          Left = 293
          Top = 28
          Width = 70
          Height = 21
          DataField = 'KMFIMPNEU'
          DataSource = dsPneu1
          TabOrder = 6
        end
        object DBEdit22: TDBEdit
          Left = 202
          Top = 52
          Width = 68
          Height = 21
          DataField = 'PERCURSO'
          DataSource = dsPneu1
          TabOrder = 7
        end
        object DBMemo3: TDBMemo
          Left = 367
          Top = 4
          Width = 143
          Height = 69
          DataField = 'OBSPNEU'
          DataSource = dsPneu1
          TabOrder = 8
        end
      end
      object Edit3: TEdit
        Left = 88
        Top = 1
        Width = 121
        Height = 21
        TabOrder = 1
        OnChange = Edit3Change
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Pneus Recapados 2'
      ImageIndex = 3
      object Label39: TLabel
        Left = 15
        Top = 5
        Width = 70
        Height = 13
        Caption = 'Localizar Pneu'
      end
      object DBCtrlGrid3: TDBCtrlGrid
        Left = 1
        Top = 26
        Width = 529
        Height = 390
        DataSource = dsPneu2
        PanelHeight = 78
        PanelWidth = 513
        TabOrder = 0
        RowCount = 5
        object Label30: TLabel
          Left = 12
          Top = 8
          Width = 39
          Height = 13
          Caption = 'N'#186' S'#233'rie'
          FocusControl = DBEdit23
        end
        object Label31: TLabel
          Left = 21
          Top = 32
          Width = 30
          Height = 13
          Caption = 'Marca'
          FocusControl = DBEdit24
        end
        object Label32: TLabel
          Left = 4
          Top = 56
          Width = 47
          Height = 13
          Caption = 'Caminh'#227'o'
          FocusControl = DBEdit25
        end
        object Label33: TLabel
          Left = 137
          Top = 8
          Width = 62
          Height = 13
          Caption = 'Colocado em'
          FocusControl = DBEdit26
        end
        object Label34: TLabel
          Left = 142
          Top = 32
          Width = 57
          Height = 13
          Caption = 'Retirado em'
          FocusControl = DBEdit27
        end
        object Label35: TLabel
          Left = 274
          Top = 8
          Width = 16
          Height = 13
          Caption = 'KM'
          FocusControl = DBEdit28
        end
        object Label36: TLabel
          Left = 274
          Top = 32
          Width = 16
          Height = 13
          Caption = 'KM'
          FocusControl = DBEdit29
        end
        object Label37: TLabel
          Left = 156
          Top = 56
          Width = 43
          Height = 13
          Caption = 'KM Total'
        end
        object Label38: TLabel
          Left = 306
          Top = 56
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object DBEdit23: TDBEdit
          Left = 54
          Top = 4
          Width = 80
          Height = 21
          DataField = 'NSPNEU'
          DataSource = dsPneu2
          TabOrder = 0
        end
        object DBEdit24: TDBEdit
          Left = 54
          Top = 28
          Width = 80
          Height = 21
          DataField = 'MARCAPNEU'
          DataSource = dsPneu2
          TabOrder = 1
        end
        object DBEdit25: TDBEdit
          Left = 54
          Top = 52
          Width = 80
          Height = 21
          DataField = 'PLACA'
          DataSource = dsPneu2
          TabOrder = 2
        end
        object DBEdit26: TDBEdit
          Left = 202
          Top = 4
          Width = 68
          Height = 21
          DataField = 'DATACOLOCA'
          DataSource = dsPneu2
          TabOrder = 3
        end
        object DBEdit27: TDBEdit
          Left = 202
          Top = 28
          Width = 68
          Height = 21
          DataField = 'DATATIRA'
          DataSource = dsPneu2
          TabOrder = 4
        end
        object DBEdit28: TDBEdit
          Left = 293
          Top = 4
          Width = 70
          Height = 21
          DataField = 'KMINICPNEU'
          DataSource = dsPneu2
          TabOrder = 5
        end
        object DBEdit29: TDBEdit
          Left = 293
          Top = 28
          Width = 70
          Height = 21
          DataField = 'KMFIMPNEU'
          DataSource = dsPneu2
          TabOrder = 6
        end
        object DBEdit30: TDBEdit
          Left = 202
          Top = 52
          Width = 68
          Height = 21
          DataField = 'PERCURSO'
          DataSource = dsPneu2
          TabOrder = 7
        end
        object DBMemo4: TDBMemo
          Left = 367
          Top = 4
          Width = 143
          Height = 69
          DataField = 'OBSPNEU'
          DataSource = dsPneu2
          TabOrder = 8
        end
      end
      object Edit4: TEdit
        Left = 88
        Top = 1
        Width = 121
        Height = 21
        TabOrder = 1
        OnChange = Edit4Change
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Pneus Recapados 3'
      ImageIndex = 4
      object Label49: TLabel
        Left = 15
        Top = 5
        Width = 70
        Height = 13
        Caption = 'Localizar Pneu'
      end
      object DBCtrlGrid4: TDBCtrlGrid
        Left = 1
        Top = 26
        Width = 529
        Height = 390
        DataSource = dsPneu3
        PanelHeight = 78
        PanelWidth = 513
        TabOrder = 0
        RowCount = 5
        object Label40: TLabel
          Left = 12
          Top = 8
          Width = 39
          Height = 13
          Caption = 'N'#186' S'#233'rie'
          FocusControl = DBEdit31
        end
        object Label41: TLabel
          Left = 21
          Top = 32
          Width = 30
          Height = 13
          Caption = 'Marca'
          FocusControl = DBEdit32
        end
        object Label42: TLabel
          Left = 4
          Top = 56
          Width = 47
          Height = 13
          Caption = 'Caminh'#227'o'
          FocusControl = DBEdit33
        end
        object Label43: TLabel
          Left = 137
          Top = 8
          Width = 62
          Height = 13
          Caption = 'Colocado em'
          FocusControl = DBEdit34
        end
        object Label44: TLabel
          Left = 142
          Top = 32
          Width = 57
          Height = 13
          Caption = 'Retirado em'
          FocusControl = DBEdit35
        end
        object Label45: TLabel
          Left = 274
          Top = 8
          Width = 16
          Height = 13
          Caption = 'KM'
          FocusControl = DBEdit36
        end
        object Label46: TLabel
          Left = 274
          Top = 32
          Width = 16
          Height = 13
          Caption = 'KM'
          FocusControl = DBEdit37
        end
        object Label47: TLabel
          Left = 156
          Top = 56
          Width = 43
          Height = 13
          Caption = 'KM Total'
        end
        object Label48: TLabel
          Left = 306
          Top = 56
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object DBEdit31: TDBEdit
          Left = 54
          Top = 4
          Width = 80
          Height = 21
          DataField = 'NSPNEU'
          DataSource = dsPneu3
          TabOrder = 0
        end
        object DBEdit32: TDBEdit
          Left = 54
          Top = 28
          Width = 80
          Height = 21
          DataField = 'MARCAPNEU'
          DataSource = dsPneu3
          TabOrder = 1
        end
        object DBEdit33: TDBEdit
          Left = 54
          Top = 52
          Width = 80
          Height = 21
          DataField = 'PLACA'
          DataSource = dsPneu3
          TabOrder = 2
        end
        object DBEdit34: TDBEdit
          Left = 202
          Top = 4
          Width = 68
          Height = 21
          DataField = 'DATACOLOCA'
          DataSource = dsPneu3
          TabOrder = 3
        end
        object DBEdit35: TDBEdit
          Left = 202
          Top = 28
          Width = 68
          Height = 21
          DataField = 'DATATIRA'
          DataSource = dsPneu3
          TabOrder = 4
        end
        object DBEdit36: TDBEdit
          Left = 293
          Top = 4
          Width = 70
          Height = 21
          DataField = 'KMINICPNEU'
          DataSource = dsPneu3
          TabOrder = 5
        end
        object DBEdit37: TDBEdit
          Left = 293
          Top = 28
          Width = 70
          Height = 21
          DataField = 'KMFIMPNEU'
          DataSource = dsPneu3
          TabOrder = 6
        end
        object DBEdit38: TDBEdit
          Left = 202
          Top = 52
          Width = 68
          Height = 21
          DataField = 'PERCURSO'
          DataSource = dsPneu3
          TabOrder = 7
        end
        object DBMemo5: TDBMemo
          Left = 367
          Top = 4
          Width = 143
          Height = 69
          DataField = 'OBSPNEU'
          DataSource = dsPneu3
          TabOrder = 8
        end
      end
      object Edit5: TEdit
        Left = 88
        Top = 1
        Width = 121
        Height = 21
        TabOrder = 1
        OnChange = Edit5Change
      end
    end
  end
  object TPneu: TIBTable
    Database = FPrincipal.BasePrincipal
    Transaction = FPrincipal.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODPNEU'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NSPNEU'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MARCAPNEU'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'OBSPNEU'
        DataType = ftMemo
        Size = 8
      end
      item
        Name = 'VALORPNEU'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'GARANPNEU'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY44'
        Fields = 'CODPNEU'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'NSPNEU'
        Fields = 'NSPNEU'
      end>
    IndexName = 'NSPNEU'
    StoreDefs = True
    TableName = 'PNEU'
    Left = 336
    Top = 345
    object TPneuCODPNEU: TIntegerField
      FieldName = 'CODPNEU'
    end
    object TPneuNSPNEU: TIBStringField
      FieldName = 'NSPNEU'
    end
    object TPneuMARCAPNEU: TIBStringField
      FieldName = 'MARCAPNEU'
      Size = 50
    end
    object TPneuOBSPNEU: TMemoField
      FieldName = 'OBSPNEU'
      BlobType = ftMemo
      Size = 8
    end
    object TPneuVALORPNEU: TIBBCDField
      FieldName = 'VALORPNEU'
      Precision = 18
      Size = 2
    end
    object TPneuGARANPNEU: TIBStringField
      FieldName = 'GARANPNEU'
      Size = 30
    end
  end
  object TPneuBO: TIBTable
    Database = FPrincipal.BasePrincipal
    Transaction = FPrincipal.IBTransaction1
    AfterDelete = TPneuBOAfterPost
    AfterEdit = TPneuBOAfterEdit
    AfterInsert = TPneuBOAfterInsert
    AfterPost = TPneuBOAfterPost
    BeforeEdit = TPneuBOBeforeEdit
    BeforePost = TPneuBOBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODPNBO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODPNEU'
        DataType = ftInteger
      end
      item
        Name = 'CODVEIC'
        DataType = ftInteger
      end
      item
        Name = 'DATACOLOCA'
        DataType = ftDate
      end
      item
        Name = 'DATATIRA'
        DataType = ftDate
      end
      item
        Name = 'KMINICPNEU'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'KMFIMPNEU'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'RECAPEADO'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY45'
        Fields = 'CODPNBO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PNEU_BO'
    Left = 386
    Top = 346
    object TPneuBOCODPNBO: TIntegerField
      FieldName = 'CODPNBO'
    end
    object TPneuBOCODPNEU: TIntegerField
      FieldName = 'CODPNEU'
    end
    object TPneuBOCODVEIC: TIntegerField
      FieldName = 'CODVEIC'
    end
    object TPneuBODATACOLOCA: TDateField
      FieldName = 'DATACOLOCA'
      EditMask = '!99/99/0000;1;_'
    end
    object TPneuBODATATIRA: TDateField
      FieldName = 'DATATIRA'
      EditMask = '!99/99/0000;1;_'
    end
    object TPneuBOKMINICPNEU: TIBBCDField
      FieldName = 'KMINICPNEU'
      Precision = 18
      Size = 2
    end
    object TPneuBOKMFIMPNEU: TIBBCDField
      FieldName = 'KMFIMPNEU'
      Precision = 18
      Size = 2
    end
    object TPneuBORECAPEADO: TIntegerField
      FieldName = 'RECAPEADO'
    end
    object TPneuBOPERCURSO: TIBBCDField
      FieldName = 'PERCURSO'
      Precision = 18
      Size = 2
    end
  end
  object dsPneu: TDataSource
    DataSet = TPneu
    Left = 337
    Top = 391
  end
  object dsPneuBO: TDataSource
    DataSet = TPneuBO
    Left = 386
    Top = 392
  end
  object TVeiculo: TIBTable
    Database = FPrincipal.BasePrincipal
    Transaction = FPrincipal.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODVEIC'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CHASSI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PLACA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MARCAVEIC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MODELOVEIC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOMEVEIC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ANOVEIC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PROCEDVEIC'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'TERCEIRIZADO'
        DataType = ftSmallint
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY2'
        Fields = 'CODVEIC'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'PLACA'
        Fields = 'PLACA'
      end>
    IndexName = 'PLACA'
    StoreDefs = True
    TableName = 'VEICULOS'
    Left = 437
    Top = 348
    object TVeiculoCODVEIC: TIntegerField
      FieldName = 'CODVEIC'
    end
    object TVeiculoCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Size = 30
    end
    object TVeiculoPLACA: TIBStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object TVeiculoMARCAVEIC: TIBStringField
      FieldName = 'MARCAVEIC'
    end
    object TVeiculoMODELOVEIC: TIBStringField
      FieldName = 'MODELOVEIC'
    end
    object TVeiculoNOMEVEIC: TIBStringField
      FieldName = 'NOMEVEIC'
    end
    object TVeiculoANOVEIC: TIBStringField
      FieldName = 'ANOVEIC'
      Size = 10
    end
    object TVeiculoPROCEDVEIC: TIBStringField
      FieldName = 'PROCEDVEIC'
      Size = 80
    end
    object TVeiculoTERCEIRIZADO: TSmallintField
      FieldName = 'TERCEIRIZADO'
    end
  end
  object dsVeiculo: TDataSource
    DataSet = TVeiculo
    Left = 439
    Top = 392
  end
  object QPneuCam: TIBQuery
    Database = FPrincipal.BasePrincipal
    Transaction = FPrincipal.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select Veiculos.PLACA, Veiculos.CODVEIC, Pneu.CODPNEU, Pneu.NSPN' +
        'EU, Pneu_BO.RECAPEADO, Pneu_BO.CODPNBO, Pneu_Bo.DATACOLOCA, Pneu' +
        '_Bo.KMINICPNEU, Pneu_Bo.DATATIRA, Pneu_Bo.KMFIMPNEU From Pneu_Bo' +
        ', Pneu, Veiculos Where (Pneu_Bo.CODPNEU=Pneu.CODPNEU) and (Pneu_' +
        'Bo.CODVEIC=Veiculos.CODVEIC);')
    Left = 224
    Top = 347
    object QPneuCamPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'VEICULOS.PLACA'
      Size = 10
    end
    object QPneuCamDATACOLOCA: TDateField
      FieldName = 'DATACOLOCA'
      Origin = 'PNEU_BO.DATACOLOCA'
    end
    object QPneuCamKMINICPNEU: TIBBCDField
      FieldName = 'KMINICPNEU'
      Origin = 'PNEU_BO.KMINICPNEU'
      Precision = 18
      Size = 2
    end
    object QPneuCamDATATIRA: TDateField
      FieldName = 'DATATIRA'
      Origin = 'PNEU_BO.DATATIRA'
    end
    object QPneuCamKMFIMPNEU: TIBBCDField
      FieldName = 'KMFIMPNEU'
      Origin = 'PNEU_BO.KMFIMPNEU'
      Precision = 18
      Size = 2
    end
    object QPneuCamNSPNEU: TIBStringField
      FieldName = 'NSPNEU'
      Origin = 'PNEU.NSPNEU'
    end
    object QPneuCamCODVEIC: TIntegerField
      FieldName = 'CODVEIC'
      Origin = 'VEICULOS.CODVEIC'
      Required = True
    end
    object QPneuCamCODPNEU: TIntegerField
      FieldName = 'CODPNEU'
      Origin = 'PNEU.CODPNEU'
      Required = True
    end
    object QPneuCamCODPNBO: TIntegerField
      FieldName = 'CODPNBO'
      Origin = 'PNEU_BO.CODPNBO'
      Required = True
    end
    object QPneuCamRECAPEADO: TIntegerField
      FieldName = 'RECAPEADO'
      Origin = 'PNEU_BO.RECAPEADO'
    end
  end
  object dsQPneuCam: TDataSource
    DataSet = QPneuCam
    Left = 224
    Top = 391
  end
  object QPneuN: TIBQuery
    Database = FPrincipal.BasePrincipal
    Transaction = FPrincipal.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * From Pneu, Pneu_BO, Veiculos Where (Pneu.CODPNEU=Pneu_B' +
        'O.CODPNEU) and (Pneu_BO.CODVEIC=Veiculos.CODVEIC) and (Pneu_BO.R' +
        'ECAPEADO=0);')
    Left = 20
    Top = 348
    object QPneuNCODPNEU: TIntegerField
      FieldName = 'CODPNEU'
      Origin = 'PNEU.CODPNEU'
      Required = True
    end
    object QPneuNNSPNEU: TIBStringField
      FieldName = 'NSPNEU'
      Origin = 'PNEU.NSPNEU'
    end
    object QPneuNMARCAPNEU: TIBStringField
      FieldName = 'MARCAPNEU'
      Origin = 'PNEU.MARCAPNEU'
      Size = 50
    end
    object QPneuNOBSPNEU: TMemoField
      FieldName = 'OBSPNEU'
      Origin = 'PNEU.OBSPNEU'
      BlobType = ftMemo
      Size = 8
    end
    object QPneuNVALORPNEU: TIBBCDField
      FieldName = 'VALORPNEU'
      Origin = 'PNEU.VALORPNEU'
      Precision = 18
      Size = 2
    end
    object QPneuNCODPNBO: TIntegerField
      FieldName = 'CODPNBO'
      Origin = 'PNEU_BO.CODPNBO'
      Required = True
    end
    object QPneuNCODVEIC: TIntegerField
      FieldName = 'CODVEIC'
      Origin = 'PNEU_BO.CODVEIC'
    end
    object QPneuNDATACOLOCA: TDateField
      FieldName = 'DATACOLOCA'
      Origin = 'PNEU_BO.DATACOLOCA'
    end
    object QPneuNDATATIRA: TDateField
      FieldName = 'DATATIRA'
      Origin = 'PNEU_BO.DATATIRA'
    end
    object QPneuNKMINICPNEU: TIBBCDField
      FieldName = 'KMINICPNEU'
      Origin = 'PNEU_BO.KMINICPNEU'
      Precision = 18
      Size = 2
    end
    object QPneuNKMFIMPNEU: TIBBCDField
      FieldName = 'KMFIMPNEU'
      Origin = 'PNEU_BO.KMFIMPNEU'
      Precision = 18
      Size = 2
    end
    object QPneuNRECAPEADO: TIntegerField
      FieldName = 'RECAPEADO'
      Origin = 'PNEU_BO.RECAPEADO'
    end
    object QPneuNCODPNEU1: TIntegerField
      FieldName = 'CODPNEU1'
      Origin = 'PNEU_BO.CODPNEU'
    end
    object QPneuNCODVEIC1: TIntegerField
      FieldName = 'CODVEIC1'
      Origin = 'VEICULOS.CODVEIC'
      Required = True
    end
    object QPneuNCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = 'VEICULOS.CHASSI'
      Size = 30
    end
    object QPneuNPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = 'VEICULOS.PLACA'
      Size = 10
    end
    object QPneuNMARCAVEIC: TIBStringField
      FieldName = 'MARCAVEIC'
      Origin = 'VEICULOS.MARCAVEIC'
    end
    object QPneuNMODELOVEIC: TIBStringField
      FieldName = 'MODELOVEIC'
      Origin = 'VEICULOS.MODELOVEIC'
    end
    object QPneuNNOMEVEIC: TIBStringField
      FieldName = 'NOMEVEIC'
      Origin = 'VEICULOS.NOMEVEIC'
    end
    object QPneuNANOVEIC: TIBStringField
      FieldName = 'ANOVEIC'
      Origin = 'VEICULOS.ANOVEIC'
      Size = 10
    end
    object QPneuNPROCEDVEIC: TIBStringField
      FieldName = 'PROCEDVEIC'
      Origin = 'VEICULOS.PROCEDVEIC'
      Size = 80
    end
    object QPneuNTERCEIRIZADO: TSmallintField
      FieldName = 'TERCEIRIZADO'
      Origin = 'VEICULOS.TERCEIRIZADO'
    end
    object QPneuNGARANPNEU: TIBStringField
      FieldName = 'GARANPNEU'
      Origin = 'PNEU.GARANPNEU'
      Size = 30
    end
    object QPneuNPERCURSO: TIBBCDField
      FieldName = 'PERCURSO'
      Origin = 'PNEU_BO.PERCURSO'
      Precision = 18
      Size = 2
    end
  end
  object dsPneuN: TDataSource
    DataSet = QPneuN
    Left = 20
    Top = 394
  end
  object QPneu1: TIBQuery
    Database = FPrincipal.BasePrincipal
    Transaction = FPrincipal.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * From Pneu, Pneu_BO, Veiculos Where (Pneu.CODPNEU=Pneu_B' +
        'O.CODPNEU) and (Pneu_BO.CODVEIC=Veiculos.CODVEIC) and (Pneu_BO.R' +
        'ECAPEADO=1);')
    Left = 68
    Top = 348
    object IntegerField1: TIntegerField
      FieldName = 'CODPNEU'
      Origin = 'PNEU.CODPNEU'
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'NSPNEU'
      Origin = 'PNEU.NSPNEU'
    end
    object IBStringField2: TIBStringField
      FieldName = 'MARCAPNEU'
      Origin = 'PNEU.MARCAPNEU'
      Size = 50
    end
    object MemoField1: TMemoField
      FieldName = 'OBSPNEU'
      Origin = 'PNEU.OBSPNEU'
      BlobType = ftMemo
      Size = 8
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'VALORPNEU'
      Origin = 'PNEU.VALORPNEU'
      Precision = 18
      Size = 2
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODPNBO'
      Origin = 'PNEU_BO.CODPNBO'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODVEIC'
      Origin = 'PNEU_BO.CODVEIC'
    end
    object DateField1: TDateField
      FieldName = 'DATACOLOCA'
      Origin = 'PNEU_BO.DATACOLOCA'
    end
    object DateField2: TDateField
      FieldName = 'DATATIRA'
      Origin = 'PNEU_BO.DATATIRA'
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'KMINICPNEU'
      Origin = 'PNEU_BO.KMINICPNEU'
      Precision = 18
      Size = 2
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'KMFIMPNEU'
      Origin = 'PNEU_BO.KMFIMPNEU'
      Precision = 18
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'RECAPEADO'
      Origin = 'PNEU_BO.RECAPEADO'
    end
    object IntegerField5: TIntegerField
      FieldName = 'CODPNEU1'
      Origin = 'PNEU_BO.CODPNEU'
    end
    object IntegerField6: TIntegerField
      FieldName = 'CODVEIC1'
      Origin = 'VEICULOS.CODVEIC'
      Required = True
    end
    object IBStringField3: TIBStringField
      FieldName = 'CHASSI'
      Origin = 'VEICULOS.CHASSI'
      Size = 30
    end
    object IBStringField4: TIBStringField
      FieldName = 'PLACA'
      Origin = 'VEICULOS.PLACA'
      Size = 10
    end
    object IBStringField5: TIBStringField
      FieldName = 'MARCAVEIC'
      Origin = 'VEICULOS.MARCAVEIC'
    end
    object IBStringField6: TIBStringField
      FieldName = 'MODELOVEIC'
      Origin = 'VEICULOS.MODELOVEIC'
    end
    object IBStringField7: TIBStringField
      FieldName = 'NOMEVEIC'
      Origin = 'VEICULOS.NOMEVEIC'
    end
    object IBStringField8: TIBStringField
      FieldName = 'ANOVEIC'
      Origin = 'VEICULOS.ANOVEIC'
      Size = 10
    end
    object IBStringField9: TIBStringField
      FieldName = 'PROCEDVEIC'
      Origin = 'VEICULOS.PROCEDVEIC'
      Size = 80
    end
    object SmallintField1: TSmallintField
      FieldName = 'TERCEIRIZADO'
      Origin = 'VEICULOS.TERCEIRIZADO'
    end
    object QPneu1GARANPNEU: TIBStringField
      FieldName = 'GARANPNEU'
      Origin = 'PNEU.GARANPNEU'
      Size = 30
    end
    object QPneu1PERCURSO: TIBBCDField
      FieldName = 'PERCURSO'
      Origin = 'PNEU_BO.PERCURSO'
      Precision = 18
      Size = 2
    end
  end
  object dsPneu1: TDataSource
    DataSet = QPneu1
    Left = 68
    Top = 394
  end
  object QPneu2: TIBQuery
    Database = FPrincipal.BasePrincipal
    Transaction = FPrincipal.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * From Pneu, Pneu_BO, Veiculos Where (Pneu.CODPNEU=Pneu_B' +
        'O.CODPNEU) and (Pneu_BO.CODVEIC=Veiculos.CODVEIC) and (Pneu_BO.R' +
        'ECAPEADO=2);')
    Left = 115
    Top = 345
    object IntegerField7: TIntegerField
      FieldName = 'CODPNEU'
      Origin = 'PNEU.CODPNEU'
      Required = True
    end
    object IBStringField10: TIBStringField
      FieldName = 'NSPNEU'
      Origin = 'PNEU.NSPNEU'
    end
    object IBStringField11: TIBStringField
      FieldName = 'MARCAPNEU'
      Origin = 'PNEU.MARCAPNEU'
      Size = 50
    end
    object MemoField2: TMemoField
      FieldName = 'OBSPNEU'
      Origin = 'PNEU.OBSPNEU'
      BlobType = ftMemo
      Size = 8
    end
    object IBBCDField6: TIBBCDField
      FieldName = 'VALORPNEU'
      Origin = 'PNEU.VALORPNEU'
      Precision = 18
      Size = 2
    end
    object IntegerField8: TIntegerField
      FieldName = 'CODPNBO'
      Origin = 'PNEU_BO.CODPNBO'
      Required = True
    end
    object IntegerField9: TIntegerField
      FieldName = 'CODVEIC'
      Origin = 'PNEU_BO.CODVEIC'
    end
    object DateField3: TDateField
      FieldName = 'DATACOLOCA'
      Origin = 'PNEU_BO.DATACOLOCA'
    end
    object DateField4: TDateField
      FieldName = 'DATATIRA'
      Origin = 'PNEU_BO.DATATIRA'
    end
    object IBBCDField7: TIBBCDField
      FieldName = 'KMINICPNEU'
      Origin = 'PNEU_BO.KMINICPNEU'
      Precision = 18
      Size = 2
    end
    object IBBCDField8: TIBBCDField
      FieldName = 'KMFIMPNEU'
      Origin = 'PNEU_BO.KMFIMPNEU'
      Precision = 18
      Size = 2
    end
    object IntegerField10: TIntegerField
      FieldName = 'RECAPEADO'
      Origin = 'PNEU_BO.RECAPEADO'
    end
    object IntegerField11: TIntegerField
      FieldName = 'CODPNEU1'
      Origin = 'PNEU_BO.CODPNEU'
    end
    object IntegerField12: TIntegerField
      FieldName = 'CODVEIC1'
      Origin = 'VEICULOS.CODVEIC'
      Required = True
    end
    object IBStringField12: TIBStringField
      FieldName = 'CHASSI'
      Origin = 'VEICULOS.CHASSI'
      Size = 30
    end
    object IBStringField13: TIBStringField
      FieldName = 'PLACA'
      Origin = 'VEICULOS.PLACA'
      Size = 10
    end
    object IBStringField14: TIBStringField
      FieldName = 'MARCAVEIC'
      Origin = 'VEICULOS.MARCAVEIC'
    end
    object IBStringField15: TIBStringField
      FieldName = 'MODELOVEIC'
      Origin = 'VEICULOS.MODELOVEIC'
    end
    object IBStringField16: TIBStringField
      FieldName = 'NOMEVEIC'
      Origin = 'VEICULOS.NOMEVEIC'
    end
    object IBStringField17: TIBStringField
      FieldName = 'ANOVEIC'
      Origin = 'VEICULOS.ANOVEIC'
      Size = 10
    end
    object IBStringField18: TIBStringField
      FieldName = 'PROCEDVEIC'
      Origin = 'VEICULOS.PROCEDVEIC'
      Size = 80
    end
    object SmallintField2: TSmallintField
      FieldName = 'TERCEIRIZADO'
      Origin = 'VEICULOS.TERCEIRIZADO'
    end
    object QPneu2GARANPNEU: TIBStringField
      FieldName = 'GARANPNEU'
      Origin = 'PNEU.GARANPNEU'
      Size = 30
    end
    object QPneu2PERCURSO: TIBBCDField
      FieldName = 'PERCURSO'
      Origin = 'PNEU_BO.PERCURSO'
      Precision = 18
      Size = 2
    end
  end
  object dsPneu2: TDataSource
    DataSet = QPneu2
    Left = 115
    Top = 393
  end
  object QPneu3: TIBQuery
    Database = FPrincipal.BasePrincipal
    Transaction = FPrincipal.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select * From Pneu, Pneu_BO, Veiculos Where (Pneu.CODPNEU=Pneu_B' +
        'O.CODPNEU) and (Pneu_BO.CODVEIC=Veiculos.CODVEIC) and (Pneu_BO.R' +
        'ECAPEADO=3);')
    Left = 162
    Top = 345
    object IntegerField13: TIntegerField
      FieldName = 'CODPNEU'
      Origin = 'PNEU.CODPNEU'
      Required = True
    end
    object IBStringField19: TIBStringField
      FieldName = 'NSPNEU'
      Origin = 'PNEU.NSPNEU'
    end
    object IBStringField20: TIBStringField
      FieldName = 'MARCAPNEU'
      Origin = 'PNEU.MARCAPNEU'
      Size = 50
    end
    object MemoField3: TMemoField
      FieldName = 'OBSPNEU'
      Origin = 'PNEU.OBSPNEU'
      BlobType = ftMemo
      Size = 8
    end
    object IBBCDField10: TIBBCDField
      FieldName = 'VALORPNEU'
      Origin = 'PNEU.VALORPNEU'
      Precision = 18
      Size = 2
    end
    object IntegerField14: TIntegerField
      FieldName = 'CODPNBO'
      Origin = 'PNEU_BO.CODPNBO'
      Required = True
    end
    object IntegerField15: TIntegerField
      FieldName = 'CODVEIC'
      Origin = 'PNEU_BO.CODVEIC'
    end
    object DateField5: TDateField
      FieldName = 'DATACOLOCA'
      Origin = 'PNEU_BO.DATACOLOCA'
    end
    object DateField6: TDateField
      FieldName = 'DATATIRA'
      Origin = 'PNEU_BO.DATATIRA'
    end
    object IBBCDField11: TIBBCDField
      FieldName = 'KMINICPNEU'
      Origin = 'PNEU_BO.KMINICPNEU'
      Precision = 18
      Size = 2
    end
    object IBBCDField12: TIBBCDField
      FieldName = 'KMFIMPNEU'
      Origin = 'PNEU_BO.KMFIMPNEU'
      Precision = 18
      Size = 2
    end
    object IntegerField16: TIntegerField
      FieldName = 'RECAPEADO'
      Origin = 'PNEU_BO.RECAPEADO'
    end
    object IntegerField17: TIntegerField
      FieldName = 'CODPNEU1'
      Origin = 'PNEU_BO.CODPNEU'
    end
    object IntegerField18: TIntegerField
      FieldName = 'CODVEIC1'
      Origin = 'VEICULOS.CODVEIC'
      Required = True
    end
    object IBStringField21: TIBStringField
      FieldName = 'CHASSI'
      Origin = 'VEICULOS.CHASSI'
      Size = 30
    end
    object IBStringField22: TIBStringField
      FieldName = 'PLACA'
      Origin = 'VEICULOS.PLACA'
      Size = 10
    end
    object IBStringField23: TIBStringField
      FieldName = 'MARCAVEIC'
      Origin = 'VEICULOS.MARCAVEIC'
    end
    object IBStringField24: TIBStringField
      FieldName = 'MODELOVEIC'
      Origin = 'VEICULOS.MODELOVEIC'
    end
    object IBStringField25: TIBStringField
      FieldName = 'NOMEVEIC'
      Origin = 'VEICULOS.NOMEVEIC'
    end
    object IBStringField26: TIBStringField
      FieldName = 'ANOVEIC'
      Origin = 'VEICULOS.ANOVEIC'
      Size = 10
    end
    object IBStringField27: TIBStringField
      FieldName = 'PROCEDVEIC'
      Origin = 'VEICULOS.PROCEDVEIC'
      Size = 80
    end
    object SmallintField3: TSmallintField
      FieldName = 'TERCEIRIZADO'
      Origin = 'VEICULOS.TERCEIRIZADO'
    end
    object QPneu3GARANPNEU: TIBStringField
      FieldName = 'GARANPNEU'
      Origin = 'PNEU.GARANPNEU'
      Size = 30
    end
    object QPneu3PERCURSO: TIBBCDField
      FieldName = 'PERCURSO'
      Origin = 'PNEU_BO.PERCURSO'
      Precision = 18
      Size = 2
    end
  end
  object dsPneu3: TDataSource
    DataSet = QPneu3
    Left = 162
    Top = 392
  end
  object QControle: TIBQuery
    Database = FPrincipal.BasePrincipal
    Transaction = FPrincipal.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select Pneu_BO.CODPNBO as COD From Pneu, Pneu_BO, Veiculos Where' +
        ' (Pneu_BO.CODPNEU=Pneu.CODPNEU) and (Pneu_BO.CODVEIC=Veiculos.CO' +
        'DVEIC);')
    Left = 287
    Top = 345
    object QControleCOD: TIntegerField
      FieldName = 'COD'
      Origin = 'PNEU_BO.CODPNBO'
      Required = True
    end
  end
  object Sit: TIBQuery
    Database = FPrincipal.BasePrincipal
    Transaction = FPrincipal.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 288
    Top = 393
  end
end
