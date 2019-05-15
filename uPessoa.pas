unit uPessoa;

interface

uses
  SysUtils, Classes, uMeioTransporte, uEletronico;

type
  TPessoa = class(TComponent)
  private
    FNome: string;
    FTransporte: TMeioTransporte;
    FEletronico: TEletronico;
    procedure SetNome(const Value: string);
    { Private declarations }
  protected
    procedure Notification(AComponent: TComponent;
  Operation: TOperation); override;
  public
    { Public declarations }
  published
    property Nome: string read FNome write SetNome;
    property Transporte : TMeioTransporte read FTransporte write FTransporte;
    property Eletronico : TEletronico read FEletronico write FEletronico;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('ClubeDelphi', [TPessoa]);
end;

{ TPessoa }

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TPessoa.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited;
  if (Operation=opRemove) and
    (AComponent=Transporte) then
    Transporte := nil;
  if (Operation=opRemove) and
    (AComponent=Transporte) then
    Transporte := nil;
end;

end.
