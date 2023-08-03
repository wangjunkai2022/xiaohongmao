.class final Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WsService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/websocket/WsService;->onSocketMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/s0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/s0;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.im.freechat.data.sources.websocket.WsService$onSocketMessage$1"
    f = "WsService.kt"
    i = {
        0x0
    }
    l = {
        0x73,
        0x77
    }
    m = "invokeSuspend"
    n = {
        "it"
    }
    s = {
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $text:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/im/freechat/data/sources/websocket/WsService;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/websocket/WsService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/websocket/WsService;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    iput-object p2, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->$text:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance p1, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;

    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    iget-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->$text:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;-><init>(Lcom/im/freechat/data/sources/websocket/WsService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/im/freechat/data/sources/websocket/WsService;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/openapigen/models/SocketMessage;

    iget-object v3, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/data/sources/websocket/WsService;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iget-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    invoke-static {p1}, Lcom/im/freechat/data/sources/websocket/WsService;->access$getMoshi(Lcom/im/freechat/data/sources/websocket/WsService;)Lcom/squareup/moshi/u;

    move-result-object p1

    const-class v1, Lcom/im/freechat/data/openapigen/models/SocketMessage;

    invoke-virtual {p1, v1}, Lcom/squareup/moshi/u;->c(Ljava/lang/Class;)Lcom/squareup/moshi/h;

    move-result-object p1

    iget-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->$text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/squareup/moshi/h;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/im/freechat/data/openapigen/models/SocketMessage;

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->this$0:Lcom/im/freechat/data/sources/websocket/WsService;

    .line 5
    instance-of v4, v1, Lcom/im/freechat/data/openapigen/models/LoggedInSuccessfully;

    if-eqz v4, :cond_4

    .line 6
    invoke-static {p1}, Lcom/im/freechat/data/sources/websocket/WsService;->access$getConnectionState$p(Lcom/im/freechat/data/sources/websocket/WsService;)Lkotlinx/coroutines/flow/t;

    move-result-object v4

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    const-wide/16 v4, 0x64

    .line 7
    iput-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/b1;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, p1

    :goto_0
    move-object p1, v3

    goto :goto_1

    .line 8
    :cond_4
    instance-of v3, v1, Lcom/im/freechat/data/openapigen/models/Ping;

    if-eqz v3, :cond_5

    new-instance v3, Lcom/im/freechat/data/openapigen/models/Pong;

    sget-object v4, Lcom/im/freechat/data/openapigen/models/Pong$Type;->pong:Lcom/im/freechat/data/openapigen/models/Pong$Type;

    invoke-direct {v3, v4}, Lcom/im/freechat/data/openapigen/models/Pong;-><init>(Lcom/im/freechat/data/openapigen/models/Pong$Type;)V

    invoke-virtual {p1, v3}, Lcom/im/freechat/data/sources/websocket/WsService;->sendWsRequest(Ljava/lang/Object;)V

    .line 9
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/im/freechat/data/sources/websocket/WsService;->access$getMessageChannel$p(Lcom/im/freechat/data/sources/websocket/WsService;)Lkotlinx/coroutines/flow/s;

    move-result-object v3

    const-string v4, "it"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/im/freechat/data/sources/websocket/WsService$onSocketMessage$1;->label:I

    invoke-interface {v3, v1, p0}, Lkotlinx/coroutines/flow/s;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    .line 10
    :goto_2
    invoke-static {v0}, Lcom/im/freechat/data/sources/websocket/WsService;->access$setAwaitingMessageTimer(Lcom/im/freechat/data/sources/websocket/WsService;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 11
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v0, p1}, Ltimber/log/Timber$b;->e(Ljava/lang/Throwable;)V

    .line 12
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
