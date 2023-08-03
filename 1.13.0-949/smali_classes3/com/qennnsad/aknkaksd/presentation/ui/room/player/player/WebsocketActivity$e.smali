.class Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;
.super Ljava/lang/Object;
.source "WebsocketActivity.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/websocket/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->R1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qennnsad/aknkaksd/data/websocket/i<",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroidx/appcompat/app/AlertDialog;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->d(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic d(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Z)Z

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->a:Landroidx/appcompat/app/AlertDialog;

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->J1()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->c(Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;)V

    return-void
.end method

.method public c(Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error.kicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getRoom_id()Ljava/lang/String;

    move-result-object v0

    const-string v3, "---mRoomid:"

    const-string v4, "websocket---roomid:"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getRoom_id()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->O1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getRoom_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->O1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getRoom_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->O1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->a:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_8

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    .line 7
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    const v3, 0x7f13037a

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getContent()Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    const v4, 0x7f130379

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    iget-object v3, v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 12
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    const v1, 0x7f130384

    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/m3;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/m3;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->a:Landroidx/appcompat/app/AlertDialog;

    .line 17
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 18
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_3

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "error.token"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/toast/a;->k(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Landroid/app/Activity;

    move-result-object p1

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/LogoutCaller;->SocketAuth:Lcom/qennnsad/aknkaksd/presentation/ui/main/LogoutCaller;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/l;->M(Landroid/app/Activity;Lcom/qennnsad/aknkaksd/presentation/ui/main/LogoutCaller;)V

    goto/16 :goto_3

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "error"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4f60\u5df2\u7ecf\u6389\u7ebf\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->F1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->N()V

    goto :goto_3

    .line 27
    :cond_4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u63d2\u5ea7:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    const v1, 0x7f1302bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getContent()Ljava/lang/String;

    move-result-object p1

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->r(Ljava/lang/String;)V

    goto :goto_3

    .line 29
    :cond_6
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 30
    :cond_7
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_2
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/toast/a;->k(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Unsupported error type:%s"

    invoke-static {v0, p1, v2}, Lcom/qennnsad/aknkaksd/util/o0;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method
