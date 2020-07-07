program BallBewegungMitBall;

uses
  Forms,
  Ablauf in 'Ablauf.pas' {Hintergrund};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(THintergrund, Hintergrund);
  Application.Run;
end.
