.class Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$d;
.super Ljava/lang/Object;
.source "WebsocketActivity.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->Y1(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C:Landroid/os/Handler;

    const/16 v0, 0x4d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C2()V

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->s0(Landroid/content/Context;Z)V

    return-void
.end method

.method public b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C:Landroid/os/Handler;

    const/16 v0, 0x4d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
