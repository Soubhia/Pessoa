unit uBike;
  
interface
  
uses
  // coloque essa unit p/ acessar a classe TMeioTransporte
  uMeioTransporte, Classes;

type
 // observe que TBike herda de TMeioTransporte
  TBike = class(TMeioTransporte)
  private
    FSuspensao : boolean;
    function GetSuspensao: boolean;
    procedure SetSuspensao(const Value: boolean);
  protected
    procedure Ligar(); override;
  public
    procedure Mover(); override;
  published
     property Suspensao: boolean
       read GetSuspensao write SetSuspensao;
  end;
  
  procedure Register;
  
implementation
  
uses Dialogs;
{ TCarro }
  
procedure Register;
begin
  RegisterComponents('ClubeDelphi',[TBike]);
end;
  
  
function TBike.GetSuspensao: boolean;
begin
   result := FSuspensao;
end;
  
procedure TBike.Ligar();
begin
  // repare que n�o vai inherited aqui
  // pois n�o existe nada na classe base
  ShowMessage('Colocando o p� no pedal...');
end;
  
procedure TBike.Mover();
begin
  inherited;
  ShowMessage(Descricao + ' entrou em movimento.');
end;
  
procedure TBike.SetSuspensao(const Value: boolean);
begin
   FSuspensao := Value;
end;
  
end.
