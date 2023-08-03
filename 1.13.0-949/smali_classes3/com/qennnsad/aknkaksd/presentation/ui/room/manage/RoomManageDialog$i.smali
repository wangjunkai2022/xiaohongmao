.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$i;
.super Lkotlin/jvm/internal/Lambda;
.source "RoomManageDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;-><init>(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;",
        "a",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$i;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$i;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->h0()Lg5/a;

    move-result-object v0

    invoke-virtual {v0}, Lg5/a;->q()Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRoomId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$i;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->c0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRole()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    move-result-object v0

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$i$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 4
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;->NONE:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;->SUPER_ADMIN:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;

    goto :goto_1

    .line 6
    :cond_2
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;->ROOM_ADMIN:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;

    goto :goto_1

    .line 7
    :cond_3
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;->NONE:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;

    :goto_1
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$i;->a()Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;

    move-result-object v0

    return-object v0
.end method
