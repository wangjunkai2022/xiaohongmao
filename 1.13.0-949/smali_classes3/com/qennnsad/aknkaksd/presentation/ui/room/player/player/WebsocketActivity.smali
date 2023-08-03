.class public abstract Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;
.super Lcom/qennnsad/aknkaksd/presentation/ui/room/BaseRoomActivity;
.source "WebsocketActivity.java"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/BaseRoomActivity<",
        "TVB;>;",
        "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$b;"
    }
.end annotation


# instance fields
.field private A:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

.field private B:Z

.field C:Landroid/os/Handler;

.field private final D:Landroid/content/ServiceConnection;

.field protected y:Z

.field private z:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/BaseRoomActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->B:Z

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$a;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C:Landroid/os/Handler;

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$b;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->D:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic A1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->z:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic B1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->B:Z

    return p0
.end method

.method static synthetic C1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->B:Z

    return p1
.end method

.method static synthetic D1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;)Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    return-object p1
.end method

.method static synthetic E1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    return-object p0
.end method

.method static synthetic F1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    return-object p0
.end method

.method private H1(Ljava/lang/String;Z)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->O1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    const-string v1, "notnow-roomid"

    invoke-static {p2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->n:Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->N1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->M1()J

    move-result-wide v3

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/data/websocket/j;->g(Ljava/lang/String;Ljava/lang/String;J)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->H(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;)V

    :cond_0
    return v0
.end method

.method private Q1()V
    .locals 3

    .line 1
    iput-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->z:Landroid/app/Activity;

    .line 2
    invoke-static {p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->q(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->D:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static synthetic R0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/DeleteTimeRoomMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->d2(Lcom/qennnsad/aknkaksd/data/bean/websocket/DeleteTimeRoomMsg;)V

    return-void
.end method

.method public static synthetic S0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->V1(Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;)V

    return-void
.end method

.method private synthetic S1(Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;->getRoom_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->H1(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->F2(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V

    :cond_0
    return-void
.end method

.method public static synthetic T0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->j2(Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;)V

    return-void
.end method

.method private synthetic T1(Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCard;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCard;->getRoom_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->H1(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCard;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b;->f0(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic U0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/DeleteTimeRoomMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->c2(Lcom/qennnsad/aknkaksd/data/bean/websocket/DeleteTimeRoomMsg;)V

    return-void
.end method

.method private synthetic U1(Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rollmsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->w1(Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;)V

    return-void
.end method

.method public static synthetic V0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->Y1(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;)V

    return-void
.end method

.method private synthetic V1(Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;->getRoom_id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->H1(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->F2(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V

    :cond_0
    return-void
.end method

.method public static synthetic W0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/WsExitMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->h2(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsExitMsg;)V

    return-void
.end method

.method private static synthetic W1(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTimeMsg;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTimeMsg;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/util/toast/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic X0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->e2(Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;)V

    return-void
.end method

.method private static synthetic X1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_0

    return p0

    :cond_0
    const/16 p2, 0x54

    if-ne p1, p2, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic Y0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginOutMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->g2(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginOutMsg;)V

    return-void
.end method

.method private synthetic Y1(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/toast/a;->k(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "websocket---privateTimeMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getMoney()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getInstance()Lcom/qennnsad/aknkaksd/BaseBeautyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->setMoney(I)V

    .line 5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getPtid()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672c\u623f\u95f4\u5c06\u572835\u79d2\u540e\u5207\u6362\u4e3a\u95e8\u7968\u623f\n\u95e8\u7968\u4ef7\u683c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getMoney()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u91d1\u5e01"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672c\u623f\u95f4\u5c06\u572835\u79d2\u540e\u5207\u6362\u4e3a\u8ba1\u65f6\u623f\n\u8ba1\u8d39\u4ef7\u683c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getMoney()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const p1, 0x7f13019f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->z:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    .line 9
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->i(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    const-string v0, "\u7ee7\u7eed\u89c2\u770b"

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->g(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    const-string v0, "\u7acb\u5373\u9000\u51fa"

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->e(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 13
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 14
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$d;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;->j(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;)V

    .line 15
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/w1;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/w1;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 16
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 17
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C:Landroid/os/Handler;

    const/16 v0, 0x4d

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static synthetic Z0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->X1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic Z1(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "chargeRoomOK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getPrerequisite()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->I1()I

    move-result v4

    .line 4
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Charge room price: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current user balance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v4, v0, :cond_0

    const p1, 0x7f1302b5

    .line 6
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/toast/a;->h(I)V

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C:Landroid/os/Handler;

    const/16 v0, 0x4d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C2()V

    .line 9
    invoke-static {p0, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->s0(Landroid/content/Context;Z)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getPtid()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5df2\u82b1\u8d39"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u91d1\u5e01"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->v1(ZLjava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getPlid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getPlid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "4"

    invoke-virtual {p0, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->p1(Ljava/lang/String;I)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getPtid()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getPlid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getPlid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "2"

    invoke-virtual {p0, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->p1(Ljava/lang/String;I)V

    .line 17
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "freeRoomOK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getPtid()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 19
    invoke-virtual {p0, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->s1(Z)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getPtid()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 21
    invoke-virtual {p0, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->s1(Z)V

    .line 22
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/toast/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->a2(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg;)V

    return-void
.end method

.method private synthetic a2(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg;->getData()Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg$DataBean;->getMoney()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8fd9\u91cc\u6709\u597d\u591a\u94b1"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg;->getData()Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg$DataBean;->getMoney()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u82b1\u8d39"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1301c1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->v1(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/AnchorCoinBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->k2(Lcom/qennnsad/aknkaksd/data/bean/websocket/AnchorCoinBean;)V

    return-void
.end method

.method private synthetic b2(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg;->getData()Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg$DataBean;->getMoney()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8fd9\u91cc\u6709\u597d\u591a\u65f6\u95f4"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg;->getData()Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg$DataBean;->getPoint()I

    move-result p1

    const/16 v0, 0x3c

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 3
    div-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u82b1\u8d39"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u5206\u949f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->v1(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic c1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->S1(Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCardNews;)V

    return-void
.end method

.method private synthetic c2(Lcom/qennnsad/aknkaksd/data/bean/websocket/DeleteTimeRoomMsg;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Money deduct: "

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/DeleteTimeRoomMsg;->getContent()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->y1(I)V

    return-void
.end method

.method public static synthetic d1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->f2(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;)V

    return-void
.end method

.method private synthetic d2(Lcom/qennnsad/aknkaksd/data/bean/websocket/DeleteTimeRoomMsg;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8fd9\u91cc\u662f\u65f6\u95f4\u66f4\u65b0\u7684\u6570\u636e"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/DeleteTimeRoomMsg;->getContent()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->z1(I)V

    return-void
.end method

.method public static synthetic e1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBalanceEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->n2(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBalanceEvent;)V

    return-void
.end method

.method private synthetic e2(Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;->getRoom_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->H1(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->G1(Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;)V

    :cond_0
    return-void
.end method

.method public static synthetic f1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->m2(Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V

    return-void
.end method

.method private synthetic f2(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth data accepted here"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->r1(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;)V

    return-void
.end method

.method public static synthetic g1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/pk/PkEmptyMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->o2(Lcom/qennnsad/aknkaksd/data/bean/pk/PkEmptyMsg;)V

    return-void
.end method

.method private synthetic g2(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginOutMsg;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wsLoginOutMsg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mrl"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginOutMsg;->getUser_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->K1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginOutMsg;->getUser_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->K1()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->E2()V

    :cond_0
    return-void
.end method

.method public static synthetic h1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCard;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->T1(Lcom/qennnsad/aknkaksd/data/bean/websocket/NameCard;)V

    return-void
.end method

.method private synthetic h2(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsExitMsg;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->p:Z

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsExitMsg;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/toast/a;->k(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity;->k0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic i1(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTimeMsg;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->W1(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTimeMsg;)V

    return-void
.end method

.method private synthetic i2(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getRoomId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->H1(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->F2(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V

    :cond_0
    return-void
.end method

.method public static synthetic j1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/pk/PkEmptyMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->p2(Lcom/qennnsad/aknkaksd/data/bean/pk/PkEmptyMsg;)V

    return-void
.end method

.method private synthetic j2(Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LiveAudienceListMsg-roomid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;->getRoom_id()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "---mRoomid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->O1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;->getRoom_id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->H1(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->t1(Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;)V

    :cond_0
    return-void
.end method

.method public static synthetic k1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->b2(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateRoomMsg;)V

    return-void
.end method

.method private synthetic k2(Lcom/qennnsad/aknkaksd/data/bean/websocket/AnchorCoinBean;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/AnchorCoinBean;->getRoom_id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->H1(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/AnchorCoinBean;->getAmount()I

    move-result p1

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;->setBeanorignal(D)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->x1(Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;)V

    :cond_0
    return-void
.end method

.method public static synthetic l1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->i2(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)V

    return-void
.end method

.method private synthetic l2(Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;->getRoom_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->H1(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->q()Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;->getRole()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->setRole(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->x2(Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->F2(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V

    :cond_0
    return-void
.end method

.method public static synthetic m1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->Z1(Lcom/qennnsad/aknkaksd/data/bean/websocket/PrivateTiMsg;)V

    return-void
.end method

.method private synthetic m2(Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->H1(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalRoomMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->q()Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalRoomMsg-setlcoal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalRoomMsg-lcoal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRoomAd()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->setRoomAd(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V

    .line 7
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRole()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->setRole(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;)V

    .line 8
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->setRoomId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getPromptTime()I

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getPromptTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->setPromptTime(I)V

    .line 11
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getPromptContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->setPromptContent(Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRollmsgTime()I

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRollmsgTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->setRollmsgTime(I)V

    .line 14
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRollmsgContent()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->setRollmsgContent(Ljava/util/List;)V

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getHasNamecard()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->setHasNamecard(I)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->x2(Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V

    .line 17
    new-instance p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;

    invoke-direct {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;-><init>()V

    .line 18
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRoomAd()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;->setRoom_ad(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V

    .line 19
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRollmsgContent()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;->setRollmsg_content(Ljava/util/List;)V

    .line 20
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;->setRoom_id(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->w1(Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;)V

    .line 22
    new-instance p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;

    invoke-direct {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;-><init>()V

    .line 23
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getPromptContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;->setContent(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;->getRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;->setRoom_id(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->F2(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V

    :cond_3
    return-void
.end method

.method public static synthetic n1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->l2(Lcom/qennnsad/aknkaksd/data/bean/websocket/UpdateRoleBean;)V

    return-void
.end method

.method private synthetic n2(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBalanceEvent;)V
    .locals 0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBalanceEvent;->getAnchorBalance()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->s2(I)V

    return-void
.end method

.method public static synthetic o1(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->U1(Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;)V

    return-void
.end method

.method private synthetic o2(Lcom/qennnsad/aknkaksd/data/bean/pk/PkEmptyMsg;)V
    .locals 0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkEmptyMsg;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->v2(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic p2(Lcom/qennnsad/aknkaksd/data/bean/pk/PkEmptyMsg;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkEmptyMsg;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->u2(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkEmptyMsg;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkEmptyMsg;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/toast/a;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected A2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/d3;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/d3;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "interaction.win"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "interaction.lose"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "interaction.draw"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 6
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f3;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f3;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 7
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "interaction.close"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 8
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "interaction.cancel"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "interaction.deny"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 10
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "interactionDisconnect"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 11
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/s2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/s2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 12
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "interaction.broadcast"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 13
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 14
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "interaction.success"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 15
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    const-string v1, "PK listeners registered!"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected B2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xxx Sending login Request. isKicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSocketAlive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->O1()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->n:Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-virtual {v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/j;->e(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->H(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;)V

    .line 5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->k:Lx4/a;

    sget-object v2, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_ENTER_ROOM:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->K1()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->P1()I

    move-result v3

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventKt;->roomTypeToName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-virtual {v1, v2, v5}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    iput-boolean v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->p:Z

    const-string v0, "\u4f60\u5df2\u7ecf\u6389\u7ebf\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 7
    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/toast/a;->k(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/LogoutCaller;->SocketOffline:Lcom/qennnsad/aknkaksd/presentation/ui/main/LogoutCaller;

    invoke-static {p0, v0}, Lcom/qennnsad/aknkaksd/util/l;->M(Landroid/app/Activity;Lcom/qennnsad/aknkaksd/presentation/ui/main/LogoutCaller;)V

    :goto_1
    return-void
.end method

.method protected C0(Landroid/content/Intent;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->C0(Landroid/content/Intent;ZLandroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->L(Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService$b;)V

    :cond_0
    return-void
.end method

.method protected C2()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xxx Sending logout Request. isKicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSocketAlive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->p:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->O1()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->M1()J

    move-result-wide v1

    .line 6
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->n:Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->O1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->N1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1, v2}, Lcom/qennnsad/aknkaksd/data/websocket/j;->g(Ljava/lang/String;Ljava/lang/String;J)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->H(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;)V

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_2

    .line 7
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->k:Lx4/a;

    sget-object v6, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_LEAVE_ROOM:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->K1()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->P1()I

    move-result v1

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/analytics/data/events/EventKt;->roomTypeToName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-virtual {v5, v6, v7}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected D2(Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xxx Sending reduce free preview. isKicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isSocketAlive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->n:Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/data/websocket/j;->l(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsReduceFreePreviewRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->H(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;)V

    goto :goto_1

    .line 4
    :cond_1
    iput-boolean v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->p:Z

    const-string p1, "\u4f60\u5df2\u7ecf\u6389\u7ebf\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 5
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/toast/a;->k(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/LogoutCaller;->SocketOffline:Lcom/qennnsad/aknkaksd/presentation/ui/main/LogoutCaller;

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/l;->M(Landroid/app/Activity;Lcom/qennnsad/aknkaksd/presentation/ui/main/LogoutCaller;)V

    :goto_1
    return-void
.end method

.method abstract E2()V
.end method

.method protected abstract F2(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V
.end method

.method protected abstract G1(Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;)V
.end method

.method protected abstract G2(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;)V
.end method

.method protected abstract I1()I
.end method

.method protected abstract J1()V
.end method

.method protected abstract K1()Ljava/lang/String;
.end method

.method protected abstract L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;
.end method

.method protected abstract M1()J
.end method

.method protected abstract N1()Ljava/lang/String;
.end method

.method protected abstract O1()Ljava/lang/String;
.end method

.method abstract P1()I
.end method

.method protected R1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    const-string v1, "Init websocket listeners..."

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/j2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/j2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "nameCardNews"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/i2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/i2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "nameCard"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 6
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/j3;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/j3;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 7
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "block_stream"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 8
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c3;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c3;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "logout"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 10
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 11
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "error.noPoint"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 12
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b3;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b3;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 13
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "exit"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 14
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/a2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/a2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 15
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "error.content"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 16
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/z2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/z2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 17
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "SendPubMsg"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 18
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 19
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "onLineClient"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 20
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 21
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "sysmsg"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 22
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/l2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/l2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 23
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "peerage_join"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 24
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/n2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/n2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 25
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "earn_profit"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 26
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/i3;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/i3;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 27
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "update_bean"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 28
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/m2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/m2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 29
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "peerage_login"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 30
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 31
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "socket_off"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 32
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/y2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/y2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 33
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "update_role"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 34
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 35
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "login_ok"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 36
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/w2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/w2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 37
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "rollmsg"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 38
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/x2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/x2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 39
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "login"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 40
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e3;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e3;

    .line 41
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "balanceHint"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 42
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/q2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/q2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 43
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "changeRoomNotice"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 44
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/r2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/r2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 45
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "sysmsg.alert"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 46
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 47
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 48
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/o2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/o2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 49
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "chargeRoomMoney"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 50
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 51
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "chargeRoomPoint"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 52
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 53
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "sendGift"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 54
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/u2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/u2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 55
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "sendGiftNews"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 56
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 57
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "legend_win"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 58
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 59
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "legend_hall_win"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 60
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/d2;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/d2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 61
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "legend_profit"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 62
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k3;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k3;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 63
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "chargeTimeRoom"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 64
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/z1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/z1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 65
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "moneyDeduct"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 66
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/y1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/y1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 67
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "pointDeduct"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 68
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/x1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/x1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 69
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "ChatNotification"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 70
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/a3;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/a3;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 71
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "toy"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 72
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->E0()V

    .line 73
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A2()V

    .line 74
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->z2()V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->y2()V

    .line 77
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    const-string v1, "xxx All Sockets registered!"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- onActivityResult --- requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->Q1()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->y:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    const-string v1, "Socket Listeners Preserved!"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->G()V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->D:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->A:Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C:Landroid/os/Handler;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->z:Landroid/app/Activity;

    .line 13
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "IntentX"

    const-string v1, "New intent"

    .line 1
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 3
    instance-of v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C0(Landroid/content/Intent;ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->B0(Landroid/content/Intent;Z)V

    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    const-string v1, "----- onRestoreInstanceState -----"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    const-string v1, "----- onSaveInstanceState -----"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract p1(Ljava/lang/String;I)V
.end method

.method protected abstract q1(Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;)V
.end method

.method protected abstract q2(Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;)V
.end method

.method protected abstract r1(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;)V
.end method

.method protected abstract r2(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;)V
.end method

.method protected abstract s1(Z)V
.end method

.method protected abstract s2(I)V
.end method

.method protected abstract t1(Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;)V
.end method

.method protected abstract t2(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageListEvent;)V
.end method

.method protected abstract u1(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;)V
.end method

.method protected abstract u2(Ljava/lang/String;)V
.end method

.method protected abstract v1(ZLjava/lang/String;)V
.end method

.method protected abstract v2(Ljava/lang/String;)V
.end method

.method protected abstract w1(Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;)V
.end method

.method protected abstract w2(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;)V
.end method

.method protected abstract x1(Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;)V
.end method

.method protected x2(Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v0, p1}, Lg5/a;->i0(Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V

    return-void
.end method

.method protected abstract y1(I)V
.end method

.method protected y2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k2;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    const-string v2, "newFan"

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b2;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b2;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    const-string v2, "updateFanInfo"

    invoke-virtual {v0, v2, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    return-void
.end method

.method protected abstract z1(I)V
.end method

.method protected z2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h3;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h3;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "pinmessage_list"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g3;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g3;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;)V

    .line 5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v2, "pinmessage"

    invoke-virtual {v1, v2, v0}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->F(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/websocket/i;)V

    :cond_0
    return-void
.end method
