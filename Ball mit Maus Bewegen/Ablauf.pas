unit Ablauf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Menus;

type
  THintergrund = class(TForm)
    Menu: TMainMenu;
    Beenden1: TMenuItem;
    OBall: TShape;
    procedure Beenden1Click(Sender: TObject);
    procedure OBallMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Hintergrund: THintergrund;
  RandW: Boolean;
  RandS: Boolean;

implementation

{$R *.DFM}

procedure THintergrund.Beenden1Click(Sender: TObject);
begin
 Close;
end;

procedure THintergrund.OBallMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 If (OBall.Left < 33)  or
    (OBall.Left > 680)
  Then RandW := True
  Else RandW := False;
 If (OBall.Top < 33)  or
    (OBall.Top > 655)
  Then RandS := True
  Else RandS := False;

 If RandW = False
  Then OBall.Left := OBall.Left+((OBall.Width div 2)-X)
  Else If OBall.Left < 33
        Then OBall.Left := 34
        Else OBall.Left := 679;

 If RandS = False
  Then OBall.Top := OBall.Top+((OBall.Height div 2)-Y)
  Else If OBall.Top < 33
        Then OBall.Top := 34
        Else OBall.Top := 654;
end;

end.
