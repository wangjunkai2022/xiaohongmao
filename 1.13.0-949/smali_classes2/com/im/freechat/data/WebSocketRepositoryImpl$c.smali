.class public final Lcom/im/freechat/data/WebSocketRepositoryImpl$c;
.super Ljava/lang/Object;
.source "WebSocketRepositoryImpl.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/WebSocketRepositoryImpl;-><init>(Landroid/content/Context;Lcom/im/freechat/data/sources/database/MainDatabase;Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/domain/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/im/freechat/data/WebSocketRepositoryImpl$c",
        "Landroid/content/ServiceConnection;",
        "Landroid/content/ComponentName;",
        "name",
        "Landroid/os/IBinder;",
        "service",
        "",
        "onServiceConnected",
        "onServiceDisconnected",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/data/WebSocketRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/WebSocketRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl$c;->a:Lcom/im/freechat/data/WebSocketRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p2, Lcom/im/freechat/data/sources/websocket/WsBinder;

    iget-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl$c;->a:Lcom/im/freechat/data/WebSocketRepositoryImpl;

    .line 2
    invoke-static {p1, p2}, Lcom/im/freechat/data/WebSocketRepositoryImpl;->x(Lcom/im/freechat/data/WebSocketRepositoryImpl;Lcom/im/freechat/data/sources/websocket/WsBinder;)V

    .line 3
    invoke-static {p1}, Lcom/im/freechat/data/WebSocketRepositoryImpl;->q(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/im/freechat/data/WebSocketRepositoryImpl;->n(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/im/freechat/data/WebSocketRepositoryImpl;->u(Lcom/im/freechat/data/WebSocketRepositoryImpl;)Z

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lcom/im/freechat/data/sources/websocket/WsBinder;->startSocket(Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    .line 4
    invoke-interface {p2}, Lcom/im/freechat/data/sources/websocket/WsBinder;->listenConnectionState()Lkotlinx/coroutines/flow/t;

    move-result-object p2

    .line 5
    invoke-static {p1, v0, p2}, Lcom/im/freechat/data/WebSocketRepositoryImpl;->w(Lcom/im/freechat/data/WebSocketRepositoryImpl;Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/i;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/im/freechat/data/WebSocketRepositoryImpl$c;->a:Lcom/im/freechat/data/WebSocketRepositoryImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/im/freechat/data/WebSocketRepositoryImpl;->x(Lcom/im/freechat/data/WebSocketRepositoryImpl;Lcom/im/freechat/data/sources/websocket/WsBinder;)V

    return-void
.end method
