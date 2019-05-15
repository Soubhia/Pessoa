unit uMeioTransporte;
  
interface
  
uses Classes;
  
type
  TMeioTransporte = class(TComponent)
  private
    FCapacidade : integer;
    FDescricao : string;
    FBeforeLigar: TNotifyEvent;
    procedure SetBeforeLigar(const Value: TNotifyEvent);
  protected
    procedure Ligar(); virtual; abstract;
  public
    procedure Mover(); virtual;
  published
    property Capacidade: integer read FCapacidade write FCapacidade;
    property Descricao: string read FDescricao write FDescricao;
    property BeforeLigar : TNotifyEvent read FBeforeLigar write SetBeforeLigar;
  end;
  
implementation
  
{ TMeioTransporte }
uses
  Dialogs;
  
procedure TMeioTransporte.Mover();
begin
  if Assigned(FBeforeLigar) then
     BeforeLigar(self);
  Ligar();
end;
  
procedure TMeioTransporte.SetBeforeLigar(const Value: TNotifyEvent);
begin
  FBeforeLigar := Value;
end;

end.
