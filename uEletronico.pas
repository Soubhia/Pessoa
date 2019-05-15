unit uEletronico;

interface

uses classes;

type
  TEletronico = class(TComponent)
  private
    FCapacidade : integer;
    FDescricao : string;
    FBeforeLigar: TNotifyEvent;
    procedure SetBeforeLigar(const Value: TNotifyEvent);
  protected
    procedure Ligar(); virtual; abstract;
  public
    procedure Usar(); virtual;
  published
    property Capacidade : integer read FCapacidade write FCapacidade;
    property Descricao : string read FDescricao write FDescricao;
    property BeforeLigar : TNotifyEvent read FBeforeLigar write SetBeforeLigar;
  end;

implementation

uses Dialogs;

procedure teletronico.usar();
begin
  if Assigned(FBeforeLigar) then
     BeforeLigar(self);
  ligar();
end;

procedure TEletronico.SetBeforeLigar(const Value: TNotifyEvent);
begin
  FBeforeLigar := Value;
end;

end.
