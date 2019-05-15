unit uAviao;

interface

uses
  // coloque essa unit p/ acessar a classe TMeioTransporte
  uMeioTransporte, Classes;

type
 // observe que TCarro agora herda de TMeioTransporte
  TAviao = class(TMeioTransporte)
  // observe que retiramos os campos Capacidade e Descricao daqui
  private
    FHorasVoo : integer;
    function getHorasVoo: integer;
    procedure SetHorasVoo(const Value: integer);
  protected
    procedure Ligar; override;
  public
    procedure Mover; override;
  published
     property HorasVoo: integer
       read GetHorasVoo write SetHorasVoo;
  end;
  procedure Register;

implementation

uses Dialogs;
{ TAviao }

procedure Register;
begin
  RegisterComponents('ClubeDelphi', [TAviao])
end;

function TAviao.GetHorasVoo(): integer;
begin
   result := FHorasVoo;
end;

procedure TAviao.Ligar();
begin
  // repare que não vai inherited aqui
  // pois não existe nada na classe base
  ShowMessage('Ligando o '+Descricao);
end;

procedure TAviao.Mover();
begin
  inherited;
  ShowMessage(Descricao + ' Está Voando.');
end;

procedure TAviao.SetHorasVoo(const Value: integer);
begin
   if Value < 0 then
   FHorasVoo := 0
 else
   FHorasVoo := Value;
end;

end.
