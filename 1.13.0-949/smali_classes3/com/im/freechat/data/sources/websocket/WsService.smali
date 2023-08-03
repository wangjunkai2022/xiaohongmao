.class public final Lcom/im/freechat/data/sources/websocket/WsService;
.super Lorg/koin/android/scope/c;
.source "WsService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/sources/websocket/WsService$Companion;,
        Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWsService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WsService.kt\ncom/im/freechat/data/sources/websocket/WsService\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,268:1\n40#2,5:269\n40#2,5:274\n40#2,5:279\n*S KotlinDebug\n*F\n+ 1 WsService.kt\ncom/im/freechat/data/sources/websocket/WsService\n*L\n33#1:269,5\n34#1:274,5\n35#1:279,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0085\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0008\u0008*\u0001A\u0018\u0000 F2\u00020\u0001:\u0002FGB\u0007\u00a2\u0006\u0004\u0008D\u0010EJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0012\u0010\n\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u0008H\u0003J\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0016\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u001f\u0010\u0018\u001a\u00020\u0002\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00152\u0006\u0010\u0017\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0016\u0010\u001d\u001a\u00060\u001cR\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016R\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010 \u001a\u0004\u0008&\u0010\'R\u001b\u0010-\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010 \u001a\u0004\u0008+\u0010,R\u001a\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00080.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u001a\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u000f018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u0010\u0011\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u00104R\u0016\u0010\u0012\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u00104R\u0016\u00105\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u00108\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0018\u0010;\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010>\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0018\u0010@\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010<R\u0014\u0010B\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010C\u00a8\u0006H"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/websocket/WsService;",
        "Lorg/koin/android/scope/c;",
        "",
        "onSocketConnected",
        "",
        "text",
        "onSocketMessage",
        "setAwaitingMessageTimer",
        "",
        "withInitialDelay",
        "reconnect",
        "connect",
        "stopSocket",
        "isNetworkAvailable",
        "Lkotlinx/coroutines/flow/i;",
        "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
        "startSocketConnection",
        "imToken",
        "deviceToken",
        "onTokenUpdated",
        "onDestroy",
        "",
        "T",
        "request",
        "sendWsRequest",
        "(Ljava/lang/Object;)V",
        "Landroid/content/Intent;",
        "intent",
        "Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;",
        "onBind",
        "Lokhttp3/OkHttpClient;",
        "okHttpClient$delegate",
        "Lkotlin/Lazy;",
        "getOkHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "okHttpClient",
        "Lcom/squareup/moshi/u;",
        "moshi$delegate",
        "getMoshi",
        "()Lcom/squareup/moshi/u;",
        "moshi",
        "Lcom/im/freechat/domain/d;",
        "dnsRepository$delegate",
        "getDnsRepository",
        "()Lcom/im/freechat/domain/d;",
        "dnsRepository",
        "Lkotlinx/coroutines/flow/t;",
        "connectionState",
        "Lkotlinx/coroutines/flow/t;",
        "Lkotlinx/coroutines/flow/s;",
        "messageChannel",
        "Lkotlinx/coroutines/flow/s;",
        "Ljava/lang/String;",
        "timeoutEnabled",
        "Z",
        "Lokhttp3/WebSocket;",
        "wsInstance",
        "Lokhttp3/WebSocket;",
        "Ljava/util/Timer;",
        "reconnectTimer",
        "Ljava/util/Timer;",
        "",
        "reconnectAttempt",
        "I",
        "awaitingMessageTimer",
        "com/im/freechat/data/sources/websocket/WsService$listener$1",
        "listener",
        "Lcom/im/freechat/data/sources/websocket/WsService$listener$1;",
        "<init>",
        "()V",
        "Companion",
        "WebSocketClientBinder",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/im/freechat/data/sources/websocket/WsService$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private awaitingMessageTimer:Ljava/util/Timer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final connectionState:Lkotlinx/coroutines/flow/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private deviceToken:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final dnsRepository$delegate:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private imToken:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final listener:Lcom/im/freechat/data/sources/websocket/WsService$listener$1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final messageChannel:Lkotlinx/coroutines/flow/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/s<",
            "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final moshi$delegate:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final okHttpClient$delegate:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private reconnectAttempt:I

.field private reconnectTimer:Ljava/util/Timer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private timeoutEnabled:Z

.field private wsInstance:Lokhttp3/WebSocket;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/im/freechat/data/sources/websocket/WsService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/im/freechat/data/sources/websocket/WsService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/im/freechat/data/sources/websocket/WsService;->Companion:Lcom/im/freechat/data/sources/websocket/WsService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lorg/koin/android/scope/c;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v1, "WsClient"

    .line 2
    invoke-static {v1}, Lz8/b;->e(Ljava/lang/String;)Lz8/c;

    move-result-object v1

    .line 3
    sget-object v3, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 4
    new-instance v4, Lcom/im/freechat/data/sources/websocket/WsService$special$$inlined$inject$default$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/im/freechat/data/sources/websocket/WsService$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v3, v4}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 5
    iput-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->okHttpClient$delegate:Lkotlin/Lazy;

    const-string v1, "WsMoshi"

    .line 6
    invoke-static {v1}, Lz8/b;->e(Ljava/lang/String;)Lz8/c;

    move-result-object v1

    .line 7
    new-instance v4, Lcom/im/freechat/data/sources/websocket/WsService$special$$inlined$inject$default$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/im/freechat/data/sources/websocket/WsService$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v3, v4}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->moshi$delegate:Lkotlin/Lazy;

    .line 9
    new-instance v1, Lcom/im/freechat/data/sources/websocket/WsService$special$$inlined$inject$default$3;

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/data/sources/websocket/WsService$special$$inlined$inject$default$3;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v3, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->dnsRepository$delegate:Lkotlin/Lazy;

    .line 11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlinx/coroutines/flow/j0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/t;

    move-result-object v1

    iput-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->connectionState:Lkotlinx/coroutines/flow/t;

    const/4 v1, 0x7

    .line 12
    invoke-static {v0, v0, v2, v1, v2}, Lkotlinx/coroutines/flow/z;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/s;

    move-result-object v0

    iput-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->messageChannel:Lkotlinx/coroutines/flow/s;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->imToken:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->deviceToken:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/im/freechat/data/sources/websocket/WsService$listener$1;

    invoke-direct {v0, p0}, Lcom/im/freechat/data/sources/websocket/WsService$listener$1;-><init>(Lcom/im/freechat/data/sources/websocket/WsService;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->listener:Lcom/im/freechat/data/sources/websocket/WsService$listener$1;

    return-void
.end method

.method public static final synthetic access$connect(Lcom/im/freechat/data/sources/websocket/WsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->connect()V

    return-void
.end method

.method public static final synthetic access$getConnectionState$p(Lcom/im/freechat/data/sources/websocket/WsService;)Lkotlinx/coroutines/flow/t;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->connectionState:Lkotlinx/coroutines/flow/t;

    return-object p0
.end method

.method public static final synthetic access$getMessageChannel$p(Lcom/im/freechat/data/sources/websocket/WsService;)Lkotlinx/coroutines/flow/s;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->messageChannel:Lkotlinx/coroutines/flow/s;

    return-object p0
.end method

.method public static final synthetic access$getMoshi(Lcom/im/freechat/data/sources/websocket/WsService;)Lcom/squareup/moshi/u;
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->getMoshi()Lcom/squareup/moshi/u;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getReconnectAttempt$p(Lcom/im/freechat/data/sources/websocket/WsService;)I
    .locals 0

    iget p0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->reconnectAttempt:I

    return p0
.end method

.method public static final synthetic access$getWsInstance$p(Lcom/im/freechat/data/sources/websocket/WsService;)Lokhttp3/WebSocket;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->wsInstance:Lokhttp3/WebSocket;

    return-object p0
.end method

.method public static final synthetic access$isNetworkAvailable(Lcom/im/freechat/data/sources/websocket/WsService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onSocketConnected(Lcom/im/freechat/data/sources/websocket/WsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->onSocketConnected()V

    return-void
.end method

.method public static final synthetic access$onSocketMessage(Lcom/im/freechat/data/sources/websocket/WsService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/data/sources/websocket/WsService;->onSocketMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$reconnect(Lcom/im/freechat/data/sources/websocket/WsService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/data/sources/websocket/WsService;->reconnect(Z)V

    return-void
.end method

.method public static final synthetic access$setAwaitingMessageTimer(Lcom/im/freechat/data/sources/websocket/WsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->setAwaitingMessageTimer()V

    return-void
.end method

.method public static final synthetic access$setReconnectAttempt$p(Lcom/im/freechat/data/sources/websocket/WsService;I)V
    .locals 0

    iput p1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->reconnectAttempt:I

    return-void
.end method

.method public static final synthetic access$setTimeoutEnabled$p(Lcom/im/freechat/data/sources/websocket/WsService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->timeoutEnabled:Z

    return-void
.end method

.method public static final synthetic access$setWsInstance$p(Lcom/im/freechat/data/sources/websocket/WsService;Lokhttp3/WebSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->wsInstance:Lokhttp3/WebSocket;

    return-void
.end method

.method private final connect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->wsInstance:Lokhttp3/WebSocket;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 3
    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 4
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->getDnsRepository()Lcom/im/freechat/domain/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/im/freechat/domain/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/im/freechat/data/sources/websocket/WsService;->listener:Lcom/im/freechat/data/sources/websocket/WsService$listener$1;

    .line 6
    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->wsInstance:Lokhttp3/WebSocket;

    :cond_0
    return-void
.end method

.method private final getDnsRepository()Lcom/im/freechat/domain/d;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->dnsRepository$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/domain/d;

    return-object v0
.end method

.method private final getMoshi()Lcom/squareup/moshi/u;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->moshi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/moshi/u;

    return-object v0
.end method

.method private final getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->okHttpClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private final isNetworkAvailable()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v1, v3, :cond_4

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x4

    .line 7
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x3

    .line 8
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2

    .line 9
    :cond_4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :cond_5
    return v2
.end method

.method private final onSocketConnected()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const-string v1, "Socket connected"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->imToken:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->deviceToken:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    new-instance v0, Lcom/im/freechat/data/openapigen/models/Login;

    .line 5
    sget-object v1, Lcom/im/freechat/data/openapigen/models/Login$Type;->login:Lcom/im/freechat/data/openapigen/models/Login$Type;

    .line 6
    iget-object v3, p0, Lcom/im/freechat/data/sources/websocket/WsService;->imToken:Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lcom/im/freechat/data/sources/websocket/WsService;->deviceToken:Ljava/lang/String;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/im/freechat/data/openapigen/models/Login;-><init>(Lcom/im/freechat/data/openapigen/models/Login$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/im/freechat/data/sources/websocket/WsService;->sendWsRequest(Ljava/lang/Object;)V

    .line 11
    iput v2, p0, Lcom/im/freechat/data/sources/websocket/WsService;->reconnectAttempt:I

    .line 12
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->reconnectTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_3
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->reconnectTimer:Ljava/util/Timer;

    .line 14
    iget-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->awaitingMessageTimer:Ljava/util/Timer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 15
    :cond_4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 16
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 17
    invoke-static {v0, v2}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v0

    new-instance v6, Lcom/im/freechat/data/sources/websocket/WsService$onSocketConnected$lambda-1$$inlined$fixedRateTimer$default$1;

    invoke-direct {v6, p0}, Lcom/im/freechat/data/sources/websocket/WsService$onSocketConnected$lambda-1$$inlined$fixedRateTimer$default$1;-><init>(Lcom/im/freechat/data/sources/websocket/WsService;)V

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->awaitingMessageTimer:Ljava/util/Timer;

    .line 18
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_5
    :goto_2
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Socket connected while tokens are not set!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltimber/log/Timber$b;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    throw v0
.end method

.method private final onSocketMessage(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lkotlinx/coroutines/i1;->c()Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/t0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s0;

    move-result-object v1

    new-instance v4, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;-><init>(Lcom/im/freechat/data/sources/websocket/WsService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method private final reconnect(Z)V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->reconnectTimer:Ljava/util/Timer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->wsInstance:Lokhttp3/WebSocket;

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const-string v1, "Socket reconnection scheduled"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->wsInstance:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/WebSocket;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->wsInstance:Lokhttp3/WebSocket;

    .line 6
    iget-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->awaitingMessageTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->awaitingMessageTimer:Ljava/util/Timer;

    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    if-eqz p1, :cond_2

    move-wide v7, v9

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    move-wide v7, v3

    .line 9
    :goto_0
    invoke-static {v0, v2}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object p1

    new-instance v6, Lcom/im/freechat/data/sources/websocket/WsService$reconnect$lambda-5$$inlined$fixedRateTimer$default$1;

    invoke-direct {v6, p0}, Lcom/im/freechat/data/sources/websocket/WsService$reconnect$lambda-5$$inlined$fixedRateTimer$default$1;-><init>(Lcom/im/freechat/data/sources/websocket/WsService;)V

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    iput-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->reconnectTimer:Ljava/util/Timer;

    .line 10
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic reconnect$default(Lcom/im/freechat/data/sources/websocket/WsService;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/im/freechat/data/sources/websocket/WsService;->reconnect(Z)V

    return-void
.end method

.method private final setAwaitingMessageTimer()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->connectionState:Lkotlinx/coroutines/flow/t;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/t;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->awaitingMessageTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->timeoutEnabled:Z

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x37

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v0

    new-instance v4, Lcom/im/freechat/data/sources/websocket/WsService$setAwaitingMessageTimer$lambda-3$$inlined$fixedRateTimer$default$1;

    invoke-direct {v4, p0}, Lcom/im/freechat/data/sources/websocket/WsService$setAwaitingMessageTimer$lambda-3$$inlined$fixedRateTimer$default$1;-><init>(Lcom/im/freechat/data/sources/websocket/WsService;)V

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->awaitingMessageTimer:Ljava/util/Timer;

    .line 8
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final stopSocket()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const-string v2, "Socket stopping"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->wsInstance:Lokhttp3/WebSocket;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v3, 0x3e8

    invoke-interface {v1, v3, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    .line 3
    :cond_0
    iput-object v2, p0, Lcom/im/freechat/data/sources/websocket/WsService;->wsInstance:Lokhttp3/WebSocket;

    .line 4
    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->evictAll()V

    .line 5
    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 6
    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 7
    iget-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->reconnectTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 8
    :cond_1
    iput-object v2, p0, Lcom/im/freechat/data/sources/websocket/WsService;->reconnectTimer:Ljava/util/Timer;

    .line 9
    iget-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->awaitingMessageTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 10
    :cond_2
    iput-object v2, p0, Lcom/im/freechat/data/sources/websocket/WsService;->awaitingMessageTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    sget-object v2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v0, "Error while stopping socket"

    invoke-virtual {v2, v0, v3}, Ltimber/log/Timber$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/im/freechat/data/sources/websocket/WsService;->onBind(Landroid/content/Intent;)Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;

    move-result-object p1

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 2
    new-instance p1, Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;

    invoke-direct {p1, p0}, Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;-><init>(Lcom/im/freechat/data/sources/websocket/WsService;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->stopSocket()V

    .line 2
    invoke-super {p0}, Lorg/koin/android/scope/c;->onDestroy()V

    return-void
.end method

.method public final onTokenUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "imToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->imToken:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/im/freechat/data/sources/websocket/WsService;->deviceToken:Ljava/lang/String;

    return-void
.end method

.method public final sendWsRequest(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket Sending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->wsInstance:Lokhttp3/WebSocket;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->getMoshi()Lcom/squareup/moshi/u;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/moshi/u;->c(Ljava/lang/Class;)Lcom/squareup/moshi/h;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/moshi/h;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "moshi.adapter(request.javaClass).toJson(request)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 3
    :goto_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService;->wsInstance:Lokhttp3/WebSocket;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket error: trying to send request while webSocket is null! Request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltimber/log/Timber$b;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket failed to send request: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 7
    invoke-static {p0, v2, p1, v3}, Lcom/im/freechat/data/sources/websocket/WsService;->reconnect$default(Lcom/im/freechat/data/sources/websocket/WsService;ZILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final startSocketConnection()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/data/sources/websocket/WsService;->connect()V

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService;->messageChannel:Lkotlinx/coroutines/flow/s;

    return-object v0
.end method
