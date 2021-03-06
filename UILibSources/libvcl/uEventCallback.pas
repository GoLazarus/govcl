unit uEventCallback;

interface

uses
  Vcl.Controls,
  Vcl.Forms,
  Vcl.ComCtrls,
  Vcl.Menus,
  Vcl.ExtCtrls,
  Vcl.Graphics,
  System.Classes,
  System.SysUtils,
  System.Types,
  System.Generics.Collections;

var
  GCallbackPtr: function(f: NativeUInt; args: Pointer; argcout: NativeInt): Pointer; stdcall;

type
  TGoParam = record
    &Type: Byte;
    Value: Pointer;
  end;
  PGoParam = ^TGoParam;

  TGoEvent = (geClick, geClose, geFormClose, geFormCloseQuery, geChange,
              geUpDownClick, geTreeViewChange, geListViewChange, geDblClick, gePaint,
              geResize, geShow, geMenuChange, geEnter, geExit, gePopup, geBalloonClick,
              geLinkClick, geExecute, geUpdate, geException, geTimer, geMinimize,
              geRestore, geHide, geKeyDown, geKeyPress, geKeyUp, geMouseDown,
              geMouseEnter, geMouseLeave, geMouseMove, geMouseUp, geMouseWheel,
              geListBoxDrawItem, geMenuItemDrawItem, geListViewColumnClick,
              geListViewColumnRightClick, geListViewGetImageIndex, geListViewSelectItem,
              geListViewItemChecked, geTreeViewGetSelectedIndex, geTreeViewGetImageIndex,
              gePageControlGetImageIndex, geListViewCompare, geTreeViewCompare,
              geListViewAdvancedCustomDraw, geListViewAdvancedCustomDrawItem,
              geListViewAdvancedCustomDrawSubItem,
              geTreeViewAdvancedCustomDraw, geTreeViewAdvancedCustomDrawItem,
              geToolBarAdvancedCustomDraw, geToolBarAdvancedCustomDrawButton,
              geHint, geClickCheck, geDropFiles, geDestroy, geFind, geReplace,
              geConstrainedResize, geDeactivate, geActivate);

  TEventKey = packed record
    Sender: TObject;
    Event: TGoEvent;
  public
    constructor Create(ASender: TObject; AEvent: TGoEvent);
  end;

  TEventList = TDictionary<TEventKey, NativeUInt>;

  TEventClass = class
  private class var
    FEvents: TEventList;
    class constructor Create;
    class destructor Destroy;

    class procedure SendEvent(Sender: TObject; AEvent: TGoEvent; AArgs: array of const);
  public
    class procedure OnClick(Sender: TObject);

    class procedure FormOnClose(Sender: TObject; var Action: TCloseAction);
    class procedure FormOnCloseQuery(Sender: TObject; var CanClose: Boolean);
    class procedure FormOnDropFiles(Sender: TObject; const AFileNames: array of string);

    class procedure OnClose(Sender: TObject);

    class procedure OnChange(Sender: TObject);

    class procedure UpDownOnClick(Sender: TObject; Button: TUDBtnType);

    class procedure TreeViewOnChange(Sender: TObject; ANode: TTreeNode);
    class procedure TreeViewOnGetImageIndex(Sender: TObject; Node: TTreeNode);
    class procedure TreeViewOnGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    class procedure TreeViewOnCompare(Sender: TObject; Node1, Node2: TTreeNode; Data: Integer; var Compare: Integer);
    class procedure TreeViewOnAdvancedCustomDraw(Sender: TCustomTreeView;
      const ARect: TRect; Stage: TCustomDrawStage; var DefaultDraw: Boolean);
    class procedure TreeViewOnAdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: Boolean);


    class procedure ListViewOnChange(Sender: TObject; AItem: TListItem; Change: TItemChange);
    class procedure ListViewOnColumnClick(Sender: TObject; Column: TListColumn);
    class procedure ListViewOnColumnRightClick(Sender: TObject; Column: TListColumn; Point: TPoint);
    class procedure ListViewOnGetImageIndex(Sender: TObject; Item: TListItem);
    class procedure ListViewOnSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    class procedure ListViewOnItemChecked(Sender: TObject; Item: TListItem);
    class procedure ListViewOnCompare(Sender: TObject; Item1, Item2: TListItem; Data: Integer; var Compare: Integer);
    class procedure ListViewOnAdvancedCustomDraw(Sender: TCustomListView;
       const ARect: TRect; Stage: TCustomDrawStage; var DefaultDraw: Boolean);
    class procedure ListViewOnAdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    class procedure ListViewOnAdvancedCustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      Stage: TCustomDrawStage; var DefaultDraw: Boolean);

    class procedure PageControlOnGetImageIndex(Sender: TObject; TabIndex: Integer; var ImageIndex: Integer);


    class procedure ToolBarOnAdvancedCustomDraw(Sender: TToolBar;
       const ARect: TRect; Stage: TCustomDrawStage; var DefaultDraw: Boolean);
    class procedure ToolBarOnAdvancedCustomDrawButton(Sender: TToolBar;
      Button: TToolButton; State: TCustomDrawState; Stage: TCustomDrawStage;
      var Flags: TTBCustomDrawFlags; var DefaultDraw: Boolean);


    class procedure OnDblClick(Sender: TObject);

    class procedure OnPaint(Sender: TObject);
    class procedure OnResize(Sender: TObject);
    class procedure OnShow(Sender: TObject);
    class procedure OnEnter(Sender: TObject);
    class procedure OnExit(Sender: TObject);
    class procedure OnPopup(Sender: TObject);
    class procedure OnHint(Sender: TObject);
    class procedure OnClickCheck(Sender: TObject);

    class procedure OnExecute(Sender: TObject);
    class procedure OnUpdate(Sender: TObject);

    class procedure OnBalloonClick(Sender: TObject);

    class procedure OnException(Sender: TObject; E: Exception);
    class procedure OnTimer(Sender: TObject);

    class procedure OnMinimize(Sender: TObject);
    class procedure OnRestore(Sender: TObject);
    class procedure OnHide(Sender: TObject);

    class procedure OnDestroy(Sender: TObject);
    class procedure OnReplace(Sender: TObject);
    class procedure OnFind(Sender: TObject);

    class procedure OnActivate(Sender: TObject);
    class procedure OnDeactivate(Sender: TObject);
    class procedure OnConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);


    class procedure OnKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    class procedure OnKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    class procedure OnKeyPress(Sender: TObject; var Key: Char);

    class procedure OnMouseDown(Sender: TObject; Button: TMouseButton;
           Shift: TShiftState; X, Y: Integer);
    class procedure OnMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    class procedure OnMouseUp(Sender: TObject; Button: TMouseButton;
          Shift: TShiftState; X, Y: Integer);
    class procedure OnMouseWheel(Sender: TObject; Shift: TShiftState;
          WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);

    class procedure OnMouseEnter(Sender: TObject);
    class procedure OnMouseLeave(Sender: TObject);


    class procedure ListBoxOnDrawItem(Control: TWinControl; Index: Integer;
          ARect: TRect; State: TOwnerDrawState);
    class procedure MenuItemOnDrawItem(Sender: TObject; ACanvas: TCanvas;
          ARect: TRect; Selected: Boolean);


    class procedure OnLinkClick(Sender: TObject; const Link: string; LinkType: TSysLinkType);

    class procedure MenuOnChange(Sender: TObject; Source: TMenuItem; Rebuild: Boolean);
    class procedure Add(AObj: TObject; AEvent: TGoEvent; AId: NativeUInt);
    class procedure AddClick(Sender: TObject; AId: NativeUInt);
    class procedure Remove(AObj: TObject; AEvent: TGoEvent);
  end;

implementation

{ TEventClass }

class procedure TEventClass.Add(AObj: TObject; AEvent: TGoEvent; AId: NativeUInt);
begin
  FEvents.AddOrSetValue(TEventKey.Create(AObj, AEvent), AId);
end;

class procedure TEventClass.AddClick(Sender: TObject; AId: NativeUInt);
begin
  Add(Sender, geClick, AId);
end;

class constructor TEventClass.Create;
begin
  FEvents := TEventList.Create;
end;

class destructor TEventClass.Destroy;
begin
  FreeAndNil(FEvents);
end;

class procedure TEventClass.OnBalloonClick(Sender: TObject);
begin
  SendEvent(Sender, geBalloonClick, [Sender]);
end;

class procedure TEventClass.OnChange(Sender: TObject);
begin
  SendEvent(Sender, geChange, [Sender]);
end;

class procedure TEventClass.OnClick(Sender: TObject);
begin
  SendEvent(Sender, geClick, [Sender]);
end;

class procedure TEventClass.OnClickCheck(Sender: TObject);
begin
  SendEvent(Sender, geClickCheck, [Sender]);
end;

class procedure TEventClass.FormOnClose(Sender: TObject; var Action: TCloseAction);
begin
  SendEvent(Sender, geFormClose, [Sender, @Action]);
end;

//----------------------- TListView

class procedure TEventClass.ListViewOnChange(Sender: TObject; AItem: TListItem; Change: TItemChange);
begin
  SendEvent(Sender, geListViewChange, [Sender, AItem, Ord(Change)]);
end;

class procedure TEventClass.ListViewOnColumnClick(Sender: TObject; Column: TListColumn);
begin
  SendEvent(Sender, geListViewColumnClick, [Sender, Column]);
end;

class procedure TEventClass.ListViewOnColumnRightClick(Sender: TObject; Column: TListColumn; Point: TPoint);
begin
  SendEvent(Sender, geListViewColumnRightClick, [Sender, Column, Point.X, Point.Y]);
end;

class procedure TEventClass.ListViewOnGetImageIndex(Sender: TObject; Item: TListItem);
begin
  SendEvent(Sender, geListViewGetImageIndex, [Sender, Item]);
end;

class procedure TEventClass.ListViewOnSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  SendEvent(Sender, geListViewSelectItem, [Sender, Item, Selected]);
end;

class procedure TEventClass.ListViewOnItemChecked(Sender: TObject; Item: TListItem);
begin
  SendEvent(Sender, geListViewItemChecked, [Sender, Item]);
end;

class procedure TEventClass.ListViewOnCompare(Sender: TObject; Item1, Item2: TListItem; Data: Integer; var Compare: Integer);
begin
  SendEvent(Sender, geListViewCompare, [Sender, Item1, Item2, Data, @Compare]);
end;

class procedure TEventClass.ListViewOnAdvancedCustomDraw(Sender: TCustomListView;
  const ARect: TRect; Stage: TCustomDrawStage; var DefaultDraw: Boolean);
begin
  SendEvent(Sender, geListViewAdvancedCustomDraw, [
    Sender, @ARect, Ord(Stage), @DefaultDraw
  ]);
end;

class procedure TEventClass.ListViewOnAdvancedCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  Stage: TCustomDrawStage; var DefaultDraw: Boolean);
begin
  SendEvent(Sender, geListViewAdvancedCustomDrawItem, [
    Sender, Item, PWord(@State)^, Ord(Stage), @DefaultDraw
  ]);
end;

class procedure TEventClass.ListViewOnAdvancedCustomDrawSubItem(
  Sender: TCustomListView; Item: TListItem; SubItem: Integer;
  State: TCustomDrawState; Stage: TCustomDrawStage; var DefaultDraw: Boolean);
begin
  SendEvent(Sender, geListViewAdvancedCustomDrawSubItem, [
    Sender, Item, SubItem, PWord(@State)^, Ord(Stage), @DefaultDraw
  ]);
end;

//----------------------------------------- TPageControl

class procedure TEventClass.PageControlOnGetImageIndex(Sender: TObject; TabIndex: Integer; var ImageIndex: Integer);
begin
  SendEvent(Sender, gePageControlGetImageIndex, [Sender, TabIndex, @ImageIndex]);
end;

class procedure TEventClass.MenuOnChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  SendEvent(Sender, geMenuChange, [Sender, Source, Rebuild]);
end;

class procedure TEventClass.OnClose(Sender: TObject);
begin
  SendEvent(Sender, geClose, [Sender]);
end;

class procedure TEventClass.FormOnCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  SendEvent(Sender, geFormCloseQuery, [Sender, @CanClose]);
end;

class procedure TEventClass.FormOnDropFiles(Sender: TObject;
  const AFileNames: array of string);
begin
  SendEvent(Sender, geDropFiles, [Sender, @AFileNames[0], Length(AFileNames)]);
end;

class procedure TEventClass.OnDblClick(Sender: TObject);
begin
  SendEvent(Sender, geDblClick, [Sender]);
end;

class procedure TEventClass.OnDestroy(Sender: TObject);
begin
  SendEvent(Sender, geDestroy, [Sender]);
end;

class procedure TEventClass.OnEnter(Sender: TObject);
begin
  SendEvent(Sender, geEnter, [Sender]);
end;

class procedure TEventClass.OnException(Sender: TObject; E: Exception);
begin
  SendEvent(Sender, geException, [Sender, E]);
end;

class procedure TEventClass.OnExecute(Sender: TObject);
begin
  SendEvent(Sender, geExecute, [Sender]);
end;

class procedure TEventClass.OnExit(Sender: TObject);
begin
  SendEvent(Sender, geExit, [Sender]);
end;

class procedure TEventClass.OnFind(Sender: TObject);
begin
  SendEvent(Sender, geFind, [Sender]);
end;


class procedure TEventClass.OnActivate(Sender: TObject);
begin
  SendEvent(Sender, geActivate, [Sender]);
end;

class procedure TEventClass.OnDeactivate(Sender: TObject);
begin
  SendEvent(Sender, geDeactivate, [Sender]);
end;

class procedure TEventClass.OnConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
  SendEvent(Sender, geConstrainedResize, [Sender, @MinWidth, @MinHeight, @MaxWidth, @MaxHeight]);
end;


class procedure TEventClass.OnHide(Sender: TObject);
begin
  SendEvent(Sender, geHide, [Sender]);
end;

class procedure TEventClass.OnHint(Sender: TObject);
begin
   SendEvent(Sender, geHint, [Sender]);
end;

class procedure TEventClass.OnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  SendEvent(Sender, geKeyDown, [Sender, @Key, PWord(@Shift)^]);
end;

class procedure TEventClass.OnKeyPress(Sender: TObject; var Key: Char);
begin
  SendEvent(Sender, geKeyPress, [Sender, @Key]);
end;

class procedure TEventClass.OnKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  SendEvent(Sender, geKeyUp, [Sender, @Key, PWord(@Shift)^]);
end;

class procedure TEventClass.OnMinimize(Sender: TObject);
begin
  SendEvent(Sender, geMinimize, [Sender]);
end;

class procedure TEventClass.OnMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SendEvent(Sender, geMouseDown, [Sender, Ord(Button), PWord(@Shift)^, X, Y]);
end;

class procedure TEventClass.OnMouseEnter(Sender: TObject);
begin
  SendEvent(Sender, geMouseEnter, [Sender]);
end;

class procedure TEventClass.OnMouseLeave(Sender: TObject);
begin
  SendEvent(Sender, geMouseLeave, [Sender]);
end;

class procedure TEventClass.OnMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  SendEvent(Sender, geMouseMove, [Sender, PWord(@Shift)^, X, Y]);
end;

class procedure TEventClass.OnMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SendEvent(Sender, geMouseUp, [Sender, Ord(Button), PWord(@Shift)^, X, Y]);
end;

class procedure TEventClass.OnMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  SendEvent(Sender, geMouseWheel, [Sender, PWord(@Shift)^, WheelDelta, MousePos.X, MousePos.Y, @Handled]);
end;

class procedure TEventClass.OnLinkClick(Sender: TObject; const Link: string;
  LinkType: TSysLinkType);
begin
  SendEvent(Sender, geLinkClick, [Sender, Link, Ord(LinkType)]);
end;

class procedure TEventClass.OnPaint(Sender: TObject);
begin
  SendEvent(Sender, gePaint, [Sender]);
end;

class procedure TEventClass.OnPopup(Sender: TObject);
begin
  SendEvent(Sender, gePopup, [Sender]);
end;

class procedure TEventClass.OnReplace(Sender: TObject);
begin
  SendEvent(Sender, geReplace, [Sender]);
end;

class procedure TEventClass.OnResize(Sender: TObject);
begin
  SendEvent(Sender, geResize, [Sender]);
end;

class procedure TEventClass.OnRestore(Sender: TObject);
begin
  SendEvent(Sender, geRestore, [Sender]);
end;

class procedure TEventClass.OnShow(Sender: TObject);
begin
  SendEvent(Sender, geShow, [Sender]);
end;

class procedure TEventClass.OnTimer(Sender: TObject);
begin
  SendEvent(Sender, geTimer, [Sender]);
end;

class procedure TEventClass.OnUpdate(Sender: TObject);
begin
  SendEvent(Sender, geUpdate, [Sender]);
end;

class procedure TEventClass.Remove(AObj: TObject; AEvent: TGoEvent);
begin
  FEvents.Remove(TEventKey.Create(AObj, AEvent));
end;

class procedure TEventClass.ListBoxOnDrawItem(Control: TWinControl; Index: Integer;
   ARect: TRect; State: TOwnerDrawState);
begin
  SendEvent(Control, geListBoxDrawItem, [Control, Index, @ARect, PWord(@State)^]);
end;

class procedure TEventClass.MenuItemOnDrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; Selected: Boolean);
begin
  SendEvent(Sender, geListBoxDrawItem, [Sender, ACanvas, @ARect, Selected]);
end;


class procedure TEventClass.SendEvent(Sender: TObject; AEvent: TGoEvent; AArgs: array of const);


  procedure SendEventSrc(EventId: NativeUInt; AArgs: array of const);
  var
    LParams: array[0..29] of TGoParam;
    LArgLen: Integer;
    LV: TVarRec;
    I: Integer;
  begin
    if Assigned(GCallbackPtr) and (EventId > 0) then
    begin
      LArgLen := Length(AArgs);
      if LArgLen <= Length(LParams) then
      begin
        for I := 0 to LArgLen - 1 do
        begin
          LV := AArgs[I];
          LParams[I].&Type := LV.VType;
          case LV.VType of
            vtInteger       : LParams[I].Value := Pointer(LV.VInteger);
            vtBoolean       : LParams[I].Value := Pointer(Byte(LV.VBoolean));
  //          vtChar          = 2;
            vtExtended      : LParams[I].Value := LV.VExtended;

            vtString        : LParams[I].Value := {$IFDEF MSWINDOWS}LV.VString{$ELSE}LV.VAnsiString{$ENDIF};

            vtPointer       : LParams[I].Value := LV.VPointer;
            vtPChar         : LParams[I].Value := LV.VPChar;
            vtObject        : LParams[I].Value := LV.VObject;
            vtClass         : LParams[I].Value := LV.VClass;
            vtWideChar      : LParams[I].Value := Pointer(Ord(LV.VWideChar));
            vtPWideChar     : LParams[I].Value := LV.VPWideChar;
            vtAnsiString    : LParams[I].Value := LV.VAnsiString;
  //          vtCurrency      = 12;
  //          vtVariant       = 13;
            vtInterface     : LParams[I].Value := LV.VInterface;
            vtWideString    : LParams[I].Value := LV.VWideString;
            vtInt64         : LParams[I].Value := LV.VInt64;
            vtUnicodeString : LParams[I].Value := LV.VUnicodeString;
          end;
        end;
        GCallbackPtr(EventId, @LParams[0], LArgLen);
      end;
    end;
  end;

var
  LEventId: NativeUInt;
begin
  if FEvents <> nil then
    if FEvents.TryGetValue(TEventKey.Create(Sender, AEvent), LEventId) then
      SendEventSrc(LEventId, AArgs);
end;


// ---------------------- TTreeView

class procedure TEventClass.TreeViewOnAdvancedCustomDraw(
  Sender: TCustomTreeView; const ARect: TRect; Stage: TCustomDrawStage;
  var DefaultDraw: Boolean);
begin
  SendEvent(Sender, geTreeViewAdvancedCustomDraw,
    [Sender, @ARect, Ord(Stage), DefaultDraw]);
end;

class procedure TEventClass.TreeViewOnAdvancedCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  Stage: TCustomDrawStage; var PaintImages, DefaultDraw: Boolean);
begin
  SendEvent(Sender, geTreeViewAdvancedCustomDrawItem,
    [Sender, Node, PWord(@State)^, Ord(Stage), @PaintImages, DefaultDraw]);
end;

class procedure TEventClass.TreeViewOnChange(Sender: TObject; ANode: TTreeNode);
begin
  SendEvent(Sender, geTreeViewChange, [Sender, ANode]);
end;

class procedure TEventClass.TreeViewOnGetImageIndex(Sender: TObject; Node: TTreeNode);
begin
  SendEvent(Sender, geTreeViewGetImageIndex, [Sender, Node]);
end;

class procedure TEventClass.TreeViewOnGetSelectedIndex(Sender: TObject; Node: TTreeNode);
begin
  SendEvent(Sender, geTreeViewGetSelectedIndex, [Sender, Node]);
end;

class procedure TEventClass.TreeViewOnCompare(Sender: TObject; Node1, Node2: TTreeNode; Data: Integer; var Compare: Integer);
begin
  SendEvent(Sender, geTreeViewCompare, [Sender, Node1, Node2, Data, @Compare]);
end;


//----------- TToolBar
class procedure TEventClass.ToolBarOnAdvancedCustomDraw(Sender: TToolBar;
  const ARect: TRect; Stage: TCustomDrawStage; var DefaultDraw: Boolean);
begin
  SendEvent(Sender, geToolBarAdvancedCustomDraw,
    [Sender, @ARect, Ord(Stage), @DefaultDraw]);
end;

class procedure TEventClass.ToolBarOnAdvancedCustomDrawButton(Sender: TToolBar;
  Button: TToolButton; State: TCustomDrawState; Stage: TCustomDrawStage;
  var Flags: TTBCustomDrawFlags; var DefaultDraw: Boolean);
begin
  SendEvent(Sender, geToolBarAdvancedCustomDrawButton,
    [Sender, Button, PWord(@State)^, Ord(Stage), PWord(@Flags), @DefaultDraw]);
end;

class procedure TEventClass.UpDownOnClick(Sender: TObject; Button: TUDBtnType);
begin
  SendEvent(Sender, geUpDownClick, [Sender, Ord(Button)]);
end;

{ TEventKey }

constructor TEventKey.Create(ASender: TObject; AEvent: TGoEvent);
begin
  Sender := ASender;
  Event := AEvent;
end;


end.
