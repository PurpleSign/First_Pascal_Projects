program Ball_mit_Maus_durch_den_Raum_bewegen;

uses
  Forms,
  Ablauf in 'Ablauf.pas' {Hintergrund};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(THintergrund, Hintergrund);
  Application.Run;
end.
