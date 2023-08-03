.class Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;
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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->d(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic d(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->a:Landroidx/appcompat/app/AlertDialog;

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->s0(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->c(Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;)V

    return-void
.end method

.method public c(Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/toast/a;->k(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->a:Landroidx/appcompat/app/AlertDialog;

    const-string v1, "alertDialog"

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->a:Landroidx/appcompat/app/AlertDialog;

    const-string v0, "alertDialog!=null--1"

    .line 7
    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->a:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    const-string v0, "alertDialog=null;"

    .line 9
    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getContent()Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u4e94\u79d2\u540e\u81ea\u52a8\u9000\u51fa"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 13
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    const v1, 0x7f130384

    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/l3;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/l3;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->a:Landroidx/appcompat/app/AlertDialog;

    .line 18
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;->a:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method
