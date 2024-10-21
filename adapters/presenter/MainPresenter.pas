unit MainPresenter;

interface

type
  IMainPresenter = interface
    ['{43F72B09-3ACA-4FF7-B63D-740AE7152D12}']
  end;

type
  TMainPresenter = class(TInterfacedObject, IMainPresenter)
    class function New: IMainPresenter;
  end;

implementation

{ TMainPresenter }

class function TMainPresenter.New: IMainPresenter;
begin
  Result := Self.Create;
end;

end.

