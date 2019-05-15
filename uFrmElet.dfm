object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 137
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 56
    Width = 325
    Height = 73
    TabOrder = 0
    object BtnMarcela: TButton
      Left = 25
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Marcela'
      TabOrder = 0
      OnClick = BtnMarcelaClick
    end
    object BtnIgor: TButton
      Left = 225
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Igor'
      TabOrder = 1
      OnClick = BtnIgorClick
    end
    object BtnPedro: TButton
      Left = 125
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Pedro'
      TabOrder = 2
      OnClick = BtnPedroClick
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 8
    Width = 325
    Height = 42
    Caption = 'Escolha Uma Pessoa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Porche: TCarro
    Capacidade = 2
    Descricao = 'Porche'
    Quilometragem = 1000
    Left = 301
    Top = 56
  end
  object Pedro: TPessoa
    Nome = 'Pedro'
    Transporte = Caloi
    Eletronico = Iphone
    Left = 280
    Top = 8
  end
  object Iphone: TCelular
    Capacidade = 128
    Descricao = 'Iphone'
    internet = 4
    Left = 8
    Top = 8
  end
  object Macbook: TComputador
    Capacidade = 500
    Descricao = 'Macbook'
    processamento = 5
    Left = 8
    Top = 56
  end
  object Caloi: TBike
    Capacidade = 1
    Descricao = 'Caloi'
    Suspensao = True
    Left = 72
    Top = 8
  end
  object G6: TAviao
    Capacidade = 11
    Descricao = 'G6'
    HorasVoo = 100
    Left = 251
    Top = 8
  end
  object Marcela: TPessoa
    Nome = 'Marcela'
    Transporte = Porche
    Eletronico = Iphone
    Left = 40
    Top = 8
  end
  object Igor: TPessoa
    Nome = 'Igor'
    Transporte = G6
    Eletronico = Macbook
    Left = 309
    Top = 8
  end
end
