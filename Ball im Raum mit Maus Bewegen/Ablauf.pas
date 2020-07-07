unit Ablauf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Menus;

type
  THintergrund = class(TForm)
    Menu: TMainMenu;
    Beenden1: TMenuItem;
    Pause1: TMenuItem;
    An1: TMenuItem;
    Aus1: TMenuItem;
    OBall: TShape;
    Takkter: TTimer;
    BewegungsrateWaagerecht1: TMenuItem;
    BewegungsrateSenkrecht1: TMenuItem;
    Gro1: TMenuItem;
    Normal1: TMenuItem;
    Klein1: TMenuItem;
    Zufall1: TMenuItem;
    N1: TMenuItem;
    N01: TMenuItem;
    Gro2: TMenuItem;
    Normal2: TMenuItem;
    Klien1: TMenuItem;
    Zufall2: TMenuItem;
    N2: TMenuItem;
    N02: TMenuItem;
    procedure Beenden1Click(Sender: TObject);
    procedure TakkterTimer(Sender: TObject);
    procedure An1Click(Sender: TObject);
    procedure Aus1Click(Sender: TObject);
    procedure Gro1Click(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure Klein1Click(Sender: TObject);
    procedure Zufall1Click(Sender: TObject);
    procedure N01Click(Sender: TObject);
    procedure Gro2Click(Sender: TObject);
    procedure Normal2Click(Sender: TObject);
    procedure Klien1Click(Sender: TObject);
    procedure Zufall2Click(Sender: TObject);
    procedure N02Click(Sender: TObject);
    procedure OBallMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Hintergrund: THintergrund;
  Pause: Boolean;
  RandW: Boolean;
  RandS: Boolean;
  Links: Boolean;
  Oben: Boolean;
  BrW: Integer;
  BrS: Integer;

implementation

{$R *.DFM}

procedure THintergrund.Beenden1Click(Sender: TObject);
begin
 Close;
end;
                            //Ball Bewegung
////////////////////////////////////////////////////////////////////////////////
procedure THintergrund.TakkterTimer(Sender: TObject);
begin
 If (OBall.Left < 0) or (OBall.Left > 700)
  Then RandW := True
  Else RandW := False;
 If (OBall.Top < 0) or (OBall.Top > 670)
  Then RandS := True
  Else RandS := False;

 If Pause = False
  Then If Links = False
        Then If RandW = False
              Then OBall.Left := OBall.Left + BrW
              Else Begin
                    Links := True;
                    OBall.Left := OBall.Left - BrW;
                   End
        Else If RandW = False
              Then OBall.Left := OBall.Left - BrW
              Else Begin
                    Links := False;
                    OBall.Left := OBall.Left + BrW;
                   End;
 If Pause = False
  Then If Oben = False
        Then If RandS = False
              Then OBall.Top := OBall.Top + BrS
              Else Begin
                    Oben := True;
                    OBall.Top := OBall.Top - BrS;
                   End
        Else If RandS = False
              Then OBall.Top := OBall.Top - BrS
              Else Begin
                    Oben := False;
                    OBall.Top := OBall.Top +BrS;
                   End;
end;
                            //Pause An/Aus
////////////////////////////////////////////////////////////////////////////////
procedure THintergrund.An1Click(Sender: TObject);
begin
 Pause := True;
end;

procedure THintergrund.Aus1Click(Sender: TObject);
begin
 Pause := False;
end;
                            //Bewegungsrate Waagerecht
////////////////////////////////////////////////////////////////////////////////
procedure THintergrund.Gro1Click(Sender: TObject);
begin
 BrW := 10;
end;

procedure THintergrund.Normal1Click(Sender: TObject);
begin
 BrW := 5;
end;

procedure THintergrund.Klein1Click(Sender: TObject);
begin
 BrW := 1;
end;

procedure THintergrund.Zufall1Click(Sender: TObject);
begin
 BrW := Random(10);
end;

procedure THintergrund.N01Click(Sender: TObject);
begin
 BrW := 0;
end;
                            //Bewegungsrate Senkrecht
////////////////////////////////////////////////////////////////////////////////
procedure THintergrund.Gro2Click(Sender: TObject);
begin
 BrS := 10;
end;

procedure THintergrund.Normal2Click(Sender: TObject);
begin
 BrS := 5;
end;

procedure THintergrund.Klien1Click(Sender: TObject);
begin
 BrS := 1;
end;

procedure THintergrund.Zufall2Click(Sender: TObject);
begin
 BrS := Random(10);
end;

procedure THintergrund.N02Click(Sender: TObject);
begin
 BrS := 0;
end;
                            //Bewegungsrate mit Maus
////////////////////////////////////////////////////////////////////////////////
procedure THintergrund.OBallMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 BrW := ((OBall.Width div 2) - X);
 BrS := ((OBall.Height div 2) - Y);
end;

end.
