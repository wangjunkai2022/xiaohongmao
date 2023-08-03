.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c$a;
.super Lkotlin/jvm/internal/Lambda;
.source "AdminListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c;->a(Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "confirm",
        "",
        "a",
        "(Z)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

.field final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c$a;->b:Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->O(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->S()Lcom/qennnsad/aknkaksd/data/websocket/j;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c$a;->b:Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c$a;->b:Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Manage"

    const-string v4, "removeAdminer"

    .line 5
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/qennnsad/aknkaksd/data/websocket/j;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->H(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c$a;->a(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
