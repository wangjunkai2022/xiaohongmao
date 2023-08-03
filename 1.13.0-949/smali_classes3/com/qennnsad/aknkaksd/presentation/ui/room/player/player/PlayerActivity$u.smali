.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$u;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->N6(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "s",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

.field final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$u;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$u;->b:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$u;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$u;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$u;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->u0()Lcom/qennnsad/aknkaksd/data/websocket/j;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$u;->b:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$u;->b:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Manage"

    .line 5
    invoke-virtual {v1, v4, v2, v3, p1}, Lcom/qennnsad/aknkaksd/data/websocket/j;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->H(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;)V

    return-void
.end method
