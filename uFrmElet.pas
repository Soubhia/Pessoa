unit uFrmElet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uPessoa, uMeioTransporte, uCarro, uBike, uAviao, ExtCtrls,
  uEletronico, uCelular, uComputador;

type
  TForm1 = class(TForm)
    Porche: TCarro;
    Pedro: TPessoa;
    Iphone: TCelular;
    Panel1: TPanel;
    Panel3: TPanel;
    Macbook: TComputador;
    Caloi: TBike;
    G6: TAviao;
    Marcela: TPessoa;
    Igor: TPessoa;
    BtnMarcela: TButton;
    BtnIgor: TButton;
    BtnPedro: TButton;
    procedure BtnPedroClick(Sender: TObject);
    procedure BtnIgorClick(Sender: TObject);
    procedure BtnMarcelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnIgorClick(Sender: TObject);
begin
  Igor.Transporte.Mover();
  Igor.Eletronico.Usar();
end;

procedure TForm1.BtnMarcelaClick(Sender: TObject);
begin
  Marcela.Transporte.Mover();
  Marcela.Eletronico.Usar();
end;

procedure TForm1.BtnPedroClick(Sender: TObject);
begin
  Pedro.Transporte.Mover();
  Pedro.Eletronico.Usar();
end;

end.
