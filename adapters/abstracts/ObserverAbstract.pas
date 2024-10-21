unit ObserverAbstract;

interface

uses
  Generics.Collections;

type
  ISubject = interface;

  IObserver = interface ['{EA3BD1AB-FABF-4CD9-87B0-AD18067F3927}']
    procedure Actualize(Subject: ISubject);
  end;

  ISubject = interface ['{586D6199-152D-432E-A4DA-015429934C61}']
    procedure Attach(Observer: IObserver);
    procedure Detach(Observer: IObserver);
    procedure Notify;
  end;

  TSubject = class abstract (TInterfacedObject, ISubject)
  private
    FObservers: TList<IObserver>;
  public
    constructor Create; virtual;
    destructor Destroy; override;
    procedure Attach(Observer: IObserver); virtual;
    procedure Detach(Observer: IObserver); virtual;
    procedure Notify; virtual;
  end;

implementation

{ TSubject }

constructor TSubject.Create;
begin
  inherited Create;
  FObservers := TList<IObserver>.Create;
end;

destructor TSubject.Destroy;
begin
  FObservers.Free;
  inherited;
end;

procedure TSubject.Attach(Observer: IObserver);
begin
  if Assigned(FObservers) then
    FObservers.Add(Observer);
end;

procedure TSubject.Detach(Observer: IObserver);
begin
  if Assigned(FObservers) then
    FObservers.Remove(Observer);
end;

procedure TSubject.Notify;
var
  o: IObserver;
begin
  if Assigned(FObservers) then
    for o in FObservers do
      o.Actualize(Self);
end;

end.
