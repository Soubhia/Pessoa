unit uCarro;
  
interface
  
uses
  // coloque essa unit p/ acessar a classe TMeioTransporte
  uMeioTransporte, Classes;
  
type
 // observe que TCarro agora herda de TMeioTransporte
  TCarro = class(TMeioTransporte)
  // observe que retiramos os campos Capacidade e Descricao daqui
  private
    FQuilometragem : integer;
    function GetQuilometragem: integer;
    procedure SetQuilometragem(const Value: integer);
  protected
    procedure Ligar; override;
  public
    procedure Mover; override;
  published
     property Quilometragem: integer
       read GetQuilometragem write SetQuilometragem;
  end;
procedure Register;

implementation
  
uses Dialogs;
{ TCarro }

Function TCarro.GetQuilometragem(): integer;
begin
   result := FQuilometragem;
end;

procedure Register;
  begin
    RegisterComponents('ClubeDelphi', [TCarro]);
  end;
  
procedure TCarro.Ligar();
begin
  inherited;
  // repare que não vai inherited aqui
  // pois não existe nada na classe base
  ShowMessage('Ligando o '+Descricao);
end;
  
procedure TCarro.Mover();
begin
  inherited;
  ShowMessage(Descricao + ' entrou em movimento.');
end;
  
procedure TCarro.SetQuilometragem(const Value: integer);
begin
   if Value < 0 then
   FQuilometragem := 0
 else
   FQuilometragem := Value;
end;
  
end.
