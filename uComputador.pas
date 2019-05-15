unit uComputador;

interface

uses uEletronico, Classes;

type
  TComputador = class(TEletronico)
    private
      FProcessamento : integer;
      function GetProcessamento : integer;
      procedure SetProcessamento(const value: Integer);
    protected
      procedure Ligar; override;
    public
      procedure Usar; override;
    published
      property processamento : integer read GetProcessamento write SetProcessamento;
  end;
procedure Register;

implementation

uses Dialogs;

{ TComputador }

function TComputador.GetProcessamento(): integer;
begin
  result := FProcessamento;
end;

procedure Register;
begin
  RegisterComponents('Componinhos',[TComputador]);
end;

procedure TComputador.ligar();
begin
  inherited;
  ShowMessage('Ligando o '+Descricao);
end;

procedure TComputador.Usar();
begin
  inherited;
  ShowMessage(Descricao+ ' está sendo usado');
end;

procedure TComputador.SetProcessamento(const value: Integer);
begin
   if Value < 0 then
   FProcessamento := 0
 else
   FProcessamento := Value;
end;

end.
