
//----------------------------------------
// 代码由GenlibLcl工具自动生成。
// Copyright © ying32. All Rights Reserved.
//
//----------------------------------------

function OpenPictureDialog_Create(AOwner: TComponent): TOpenPictureDialog; extdecl;
begin
  Result :=  TOpenPictureDialog.Create(AOwner);
end;

procedure OpenPictureDialog_Free(AObj: TOpenPictureDialog); extdecl;
begin
  AObj.Free;
end;

function OpenPictureDialog_Execute(AObj: TOpenPictureDialog): LongBool; extdecl;
begin
  Result :=  AObj.Execute;
end;

function OpenPictureDialog_FindComponent(AObj: TOpenPictureDialog; AName: PChar): TComponent; extdecl;
begin
  Result :=  AObj.FindComponent(AName);
end;

function OpenPictureDialog_GetNamePath(AObj: TOpenPictureDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.GetNamePath);
end;

function OpenPictureDialog_HasParent(AObj: TOpenPictureDialog): LongBool; extdecl;
begin
  Result :=  AObj.HasParent;
end;

procedure OpenPictureDialog_Assign(AObj: TOpenPictureDialog; Source: TPersistent); extdecl;
begin
  AObj.Assign(Source);
end;

function OpenPictureDialog_ClassName(AObj: TOpenPictureDialog): PChar; extdecl;
begin
  Result :=  ToPChar(AObj.ClassName);
end;

function OpenPictureDialog_Equals(AObj: TOpenPictureDialog; Obj: TObject): LongBool; extdecl;
begin
  Result :=  AObj.Equals(Obj);
end;

function OpenPictureDialog_GetHashCode(AObj: TOpenPictureDialog): Integer; extdecl;
begin
  Result :=  AObj.GetHashCode;
end;

function OpenPictureDialog_ToString(AObj: TOpenPictureDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.ToString);
end;

function OpenPictureDialog_GetFilter(AObj: TOpenPictureDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.Filter);
end;

procedure OpenPictureDialog_SetFilter(AObj: TOpenPictureDialog; AValue: PChar); extdecl;
begin
  AObj.Filter := AValue;
end;

function OpenPictureDialog_GetFiles(AObj: TOpenPictureDialog): TStrings; extdecl;
begin
  Result :=  AObj.Files;
end;

function OpenPictureDialog_GetDefaultExt(AObj: TOpenPictureDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.DefaultExt);
end;

procedure OpenPictureDialog_SetDefaultExt(AObj: TOpenPictureDialog; AValue: PChar); extdecl;
begin
  AObj.DefaultExt := AValue;
end;

function OpenPictureDialog_GetFileName(AObj: TOpenPictureDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.FileName);
end;

procedure OpenPictureDialog_SetFileName(AObj: TOpenPictureDialog; AValue: PChar); extdecl;
begin
  AObj.FileName := AValue;
end;

function OpenPictureDialog_GetFilterIndex(AObj: TOpenPictureDialog): Integer; extdecl;
begin
  Result :=  AObj.FilterIndex;
end;

procedure OpenPictureDialog_SetFilterIndex(AObj: TOpenPictureDialog; AValue: Integer); extdecl;
begin
  AObj.FilterIndex := AValue;
end;

function OpenPictureDialog_GetInitialDir(AObj: TOpenPictureDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.InitialDir);
end;

procedure OpenPictureDialog_SetInitialDir(AObj: TOpenPictureDialog; AValue: PChar); extdecl;
begin
  AObj.InitialDir := AValue;
end;

function OpenPictureDialog_GetOptions(AObj: TOpenPictureDialog): TOpenOptions; extdecl;
begin
  Result :=  AObj.Options;
end;

procedure OpenPictureDialog_SetOptions(AObj: TOpenPictureDialog; AValue: TOpenOptions); extdecl;
begin
  AObj.Options := AValue;
end;

function OpenPictureDialog_GetTitle(AObj: TOpenPictureDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.Title);
end;

procedure OpenPictureDialog_SetTitle(AObj: TOpenPictureDialog; AValue: PChar); extdecl;
begin
  AObj.Title := AValue;
end;

function OpenPictureDialog_GetHandle(AObj: TOpenPictureDialog): HWND; extdecl;
begin
  Result :=  AObj.Handle;
end;

procedure OpenPictureDialog_SetOnClose(AObj: TOpenPictureDialog; AEventId: NativeUInt); extdecl;
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

procedure OpenPictureDialog_SetOnShow(AObj: TOpenPictureDialog; AEventId: NativeUInt); extdecl;
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

function OpenPictureDialog_GetComponentCount(AObj: TOpenPictureDialog): Integer; extdecl;
begin
  Result :=  AObj.ComponentCount;
end;

function OpenPictureDialog_GetComponentIndex(AObj: TOpenPictureDialog): Integer; extdecl;
begin
  Result :=  AObj.ComponentIndex;
end;

procedure OpenPictureDialog_SetComponentIndex(AObj: TOpenPictureDialog; AValue: Integer); extdecl;
begin
  AObj.ComponentIndex := AValue;
end;

function OpenPictureDialog_GetOwner(AObj: TOpenPictureDialog): TComponent; extdecl;
begin
  Result :=  AObj.Owner;
end;

function OpenPictureDialog_GetName(AObj: TOpenPictureDialog): PChar; extdecl;
begin
  Result :=  PChar(AObj.Name);
end;

procedure OpenPictureDialog_SetName(AObj: TOpenPictureDialog; AValue: PChar); extdecl;
begin
  AObj.Name := AValue;
end;

function OpenPictureDialog_GetTag(AObj: TOpenPictureDialog): NativeInt; extdecl;
begin
  Result :=  AObj.Tag;
end;

procedure OpenPictureDialog_SetTag(AObj: TOpenPictureDialog; AValue: NativeInt); extdecl;
begin
  AObj.Tag := AValue;
end;

function OpenPictureDialog_GetComponents(AObj: TOpenPictureDialog; AIndex: Integer): TComponent; extdecl;
begin
  Result :=  AObj.Components[AIndex];
end;


exports
  OpenPictureDialog_Create,
  OpenPictureDialog_Free,
  OpenPictureDialog_Execute,
  OpenPictureDialog_FindComponent,
  OpenPictureDialog_GetNamePath,
  OpenPictureDialog_HasParent,
  OpenPictureDialog_Assign,
  OpenPictureDialog_ClassName,
  OpenPictureDialog_Equals,
  OpenPictureDialog_GetHashCode,
  OpenPictureDialog_ToString,
  OpenPictureDialog_GetFilter,
  OpenPictureDialog_SetFilter,
  OpenPictureDialog_GetFiles,
  OpenPictureDialog_GetDefaultExt,
  OpenPictureDialog_SetDefaultExt,
  OpenPictureDialog_GetFileName,
  OpenPictureDialog_SetFileName,
  OpenPictureDialog_GetFilterIndex,
  OpenPictureDialog_SetFilterIndex,
  OpenPictureDialog_GetInitialDir,
  OpenPictureDialog_SetInitialDir,
  OpenPictureDialog_GetOptions,
  OpenPictureDialog_SetOptions,
  OpenPictureDialog_GetTitle,
  OpenPictureDialog_SetTitle,
  OpenPictureDialog_GetHandle,
  OpenPictureDialog_SetOnClose,
  OpenPictureDialog_SetOnShow,
  OpenPictureDialog_GetComponentCount,
  OpenPictureDialog_GetComponentIndex,
  OpenPictureDialog_SetComponentIndex,
  OpenPictureDialog_GetOwner,
  OpenPictureDialog_GetName,
  OpenPictureDialog_SetName,
  OpenPictureDialog_GetTag,
  OpenPictureDialog_SetTag,
  OpenPictureDialog_GetComponents;

