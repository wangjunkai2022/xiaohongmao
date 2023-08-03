.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$l;
.super Lcom/qennnsad/aknkaksd/util/j1$c;
.source "PublicChatHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->A(Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$l",
        "Lcom/qennnsad/aknkaksd/util/j1$c;",
        "Landroid/view/View;",
        "p0",
        "",
        "onClick",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

.field final synthetic d:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;)V
    .locals 1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$l;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$l;->d:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    const/4 p1, 0x0

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, p2, v0}, Lcom/qennnsad/aknkaksd/util/j1$c;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$l;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->v()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$l;->d:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getJump()Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$l;->d:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getJumpId()Ljava/lang/Integer;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$l;->d:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getJumpUserIsMystery()Ljava/lang/Boolean;

    move-result-object v2

    .line 5
    invoke-interface {p1, v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;->a(Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
