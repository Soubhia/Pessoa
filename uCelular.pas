unit uCelular;

interface

uses uEletronico, classes;

type
  TCelular = class(TEletronico)
  private
    FInternet : integer;
    function GetInternet: integer;
    procedure SetInternet(const value:integer);
  protected
    procedure Ligar; override;
  public
    procedure Usar; override;
  published
    property internet : integer read GetInternet write SetInternet;
  end;
procedure Register;

implementation

{ TCelular }

uses dialogs;

procedure Register;
begin
  RegisterComponents('Componinhos', [TCelular]);
end;

function TCelular.GetInternet: integer;
begin
  result := FInternet;
end;

procedure TCelular.Ligar();
begin
  inherited;
  ShowMessage('Ligando o '+descricao);
end;

procedure TCelular.SetInternet(const value: integer);
begin
   if Value < 0 then
   FInternet := 0
 else
   FInternet := Value;
end;

procedure TCelular.Usar();
begin
  inherited;
  ShowMessage(Descricao + ' está sendo usado');
end;

end.
