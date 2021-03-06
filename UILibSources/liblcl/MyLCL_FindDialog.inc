
//----------------------------------------
// 代码由GenlibVcl工具自动生成。
// Copyright ? ying32. All Rights Reserved.
//
//----------------------------------------

function FindDialog_Create(AOwner: TComponent): TFindDialog; extdecl;
begin
  Result :=  TFindDialog.Create(AOwner);
end;

procedure FindDialog_Free(AObj: TFindDialog); extdecl;
begin
  AObj.Free;
end;

procedure FindDialog_CloseDialog(AObj: TFindDialog); extdecl;
begin
  AObj.CloseDialog;
end;

function FindDialog_Execute(AObj: TFindDialog): LongBool; extdecl;
begin
  Result :=  AObj.Execute;
end;

function FindDialog_FindComponent(AObj: TFindDialog; AName: PChar): TComponent; extdecl;
begin
  Result :=  AObj.FindComponent(AName);
end;

function FindDialog_GetNamePath(AObj: TFindDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.GetNamePath);
end;

function FindDialog_HasParent(AObj: TFindDialog): LongBool; extdecl;
begin
  Result :=  AObj.HasParent;
end;

procedure FindDialog_Assign(AObj: TFindDialog; Source: TPersistent); extdecl;
begin
  AObj.Assign(Source);
end;

function FindDialog_ClassName(AObj: TFindDialog): PChar; extdecl;
begin
  Result :=  ToPChar(AObj.ClassName);
end;

function FindDialog_Equals(AObj: TFindDialog; Obj: TObject): LongBool; extdecl;
begin
  Result :=  AObj.Equals(Obj);
end;

function FindDialog_GetHashCode(AObj: TFindDialog): Integer; extdecl;
begin
  Result :=  AObj.GetHashCode;
end;

function FindDialog_ToString(AObj: TFindDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.ToString);
end;

function FindDialog_GetLeft(AObj: TFindDialog): Integer; extdecl;
begin
  Result :=  AObj.Left;
end;

procedure FindDialog_SetLeft(AObj: TFindDialog; AValue: Integer); extdecl;
begin
  AObj.Left := AValue;
end;

procedure FindDialog_GetPosition(AObj: TFindDialog; var Result: TPoint); extdecl;
begin
  Result :=  AObj.Position;
end;

procedure FindDialog_SetPosition(AObj: TFindDialog; var AValue: TPoint); extdecl;
begin
  AObj.Position := AValue;
end;

function FindDialog_GetTop(AObj: TFindDialog): Integer; extdecl;
begin
  Result :=  AObj.Top;
end;

procedure FindDialog_SetTop(AObj: TFindDialog; AValue: Integer); extdecl;
begin
  AObj.Top := AValue;
end;

function FindDialog_GetFindText(AObj: TFindDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.FindText);
end;

procedure FindDialog_SetFindText(AObj: TFindDialog; AValue: PChar); extdecl;
begin
  AObj.FindText := AValue;
end;

function FindDialog_GetOptions(AObj: TFindDialog): TFindOptions; extdecl;
begin
  Result :=  AObj.Options;
end;

procedure FindDialog_SetOptions(AObj: TFindDialog; AValue: TFindOptions); extdecl;
begin
  AObj.Options := AValue;
end;

procedure FindDialog_SetOnFind(AObj: TFindDialog; AEventId: NativeUInt); extdecl;
begin
  if AEventId = 0 then
  begin
    AObj.OnFind := nil;
    EventClass.Remove(AObj, geFind);
    Exit;
  end;
  AObj.OnFind := @EventClass.OnFind;
  EventClass.Add(AObj, geFind, AEventId);
end;

function FindDialog_GetHandle(AObj: TFindDialog): HWND; extdecl;
begin
  Result :=  AObj.Handle;
end;

procedure FindDialog_SetOnClose(AObj: TFindDialog; AEventId: NativeUInt); extdecl;
begin
  if AEventId = 0 then
  begin
    AObj.OnClose := nil;
    EventClass.Remove(AObj, geClose);
    Exit;
  end;
  AObj.OnClose := @EventClass.OnClose;
  EventClass.Add(AObj, geClose, AEventId);
end;

procedure FindDialog_SetOnShow(AObj: TFindDialog; AEventId: NativeUInt); extdecl;
begin
  if AEventId = 0 then
  begin
    AObj.OnShow := nil;
    EventClass.Remove(AObj, geShow);
    Exit;
  end;
  AObj.OnShow := @EventClass.OnShow;
  EventClass.Add(AObj, geShow, AEventId);
end;

function FindDialog_GetComponentCount(AObj: TFindDialog): Integer; extdecl;
begin
  Result :=  AObj.ComponentCount;
end;

function FindDialog_GetComponentIndex(AObj: TFindDialog): Integer; extdecl;
begin
  Result :=  AObj.ComponentIndex;
end;

procedure FindDialog_SetComponentIndex(AObj: TFindDialog; AValue: Integer); extdecl;
begin
  AObj.ComponentIndex := AValue;
end;

function FindDialog_GetOwner(AObj: TFindDialog): TComponent; extdecl;
begin
  Result :=  AObj.Owner;
end;

function FindDialog_GetName(AObj: TFindDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.Name);
end;

procedure FindDialog_SetName(AObj: TFindDialog; AValue: PChar); extdecl;
begin
  AObj.Name := AValue;
end;

function FindDialog_GetTag(AObj: TFindDialog): NativeInt; extdecl;
begin
  Result :=  AObj.Tag;
end;

procedure FindDialog_SetTag(AObj: TFindDialog; AValue: NativeInt); extdecl;
begin
  AObj.Tag := AValue;
end;

function FindDialog_GetComponents(AObj: TFindDialog; AIndex: Integer): TComponent; extdecl;
begin
  Result :=  AObj.Components[AIndex];
end;


exports
  FindDialog_Create,
  FindDialog_Free,
  FindDialog_CloseDialog,
  FindDialog_Execute,
  FindDialog_FindComponent,
  FindDialog_GetNamePath,
  FindDialog_HasParent,
  FindDialog_Assign,
  FindDialog_ClassName,
  FindDialog_Equals,
  FindDialog_GetHashCode,
  FindDialog_ToString,
  FindDialog_GetLeft,
  FindDialog_SetLeft,
  FindDialog_GetPosition,
  FindDialog_SetPosition,
  FindDialog_GetTop,
  FindDialog_SetTop,
  FindDialog_GetFindText,
  FindDialog_SetFindText,
  FindDialog_GetOptions,
  FindDialog_SetOptions,
  FindDialog_SetOnFind,
  FindDialog_GetHandle,
  FindDialog_SetOnClose,
  FindDialog_SetOnShow,
  FindDialog_GetComponentCount,
  FindDialog_GetComponentIndex,
  FindDialog_SetComponentIndex,
  FindDialog_GetOwner,
  FindDialog_GetName,
  FindDialog_SetName,
  FindDialog_GetTag,
  FindDialog_SetTag,
  FindDialog_GetComponents;

