.class Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$a;
.super Landroid/os/Handler;
.source "WebsocketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->J1()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->B1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$a;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x4d

    if-ne p1, v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$a;->a()V

    :cond_1
    :goto_0
    return-void
.end method
