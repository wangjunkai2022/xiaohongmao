.class final Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StartWebSocketInteractor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->h(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/im/freechat/shared/entities/SocketEvent;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/SocketEvent;",
        "it",
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
    c = "com.im.freechat.domain.usecase.auth.StartWebSocketInteractor$buildFlow$2"
    f = "StartWebSocketInteractor.kt"
    i = {
        0x1,
        0x2,
        0x3,
        0x4,
        0x4,
        0x5,
        0x5,
        0x6,
        0x6,
        0x7,
        0x7,
        0x8,
        0x8
    }
    l = {
        0x1a,
        0x1f,
        0x20,
        0x22,
        0x24,
        0x25,
        0x27,
        0x27,
        0x28,
        0x29,
        0x34,
        0x38
    }
    m = "invokeSuspend"
    n = {
        "it",
        "it",
        "it",
        "it",
        "presentIds",
        "it",
        "presentIds",
        "it",
        "presentIds",
        "it",
        "presentIds",
        "it",
        "presentIds"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;


# direct methods
.method constructor <init>(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;

    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-direct {v0, v1, p2}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;-><init>(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final h(Lcom/im/freechat/shared/entities/SocketEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/im/freechat/shared/entities/SocketEvent;
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
            "Lcom/im/freechat/shared/entities/SocketEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/SocketEvent;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->h(Lcom/im/freechat/shared/entities/SocketEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :catch_0
    move-exception p1

    goto/16 :goto_9

    :pswitch_1
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/shared/entities/SocketEvent;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_7

    :pswitch_2
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/shared/entities/SocketEvent;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    :pswitch_3
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/domain/t;

    iget-object v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/shared/entities/SocketEvent;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    :pswitch_4
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/shared/entities/SocketEvent;

    :try_start_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    move-object v5, v4

    move-object v4, v1

    goto/16 :goto_4

    :pswitch_5
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/shared/entities/SocketEvent;

    :try_start_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    :pswitch_6
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/shared/entities/SocketEvent;

    :try_start_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    move-object v4, v1

    goto/16 :goto_2

    :pswitch_7
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/shared/entities/SocketEvent;

    :try_start_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/shared/entities/SocketEvent;

    :try_start_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :pswitch_9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/shared/entities/SocketEvent;

    .line 4
    instance-of v1, p1, Lcom/im/freechat/shared/entities/SyncLastMessagesEvent;

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {v1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;

    move-result-object v1

    check-cast p1, Lcom/im/freechat/shared/entities/SyncLastMessagesEvent;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/SyncLastMessagesEvent;->getUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/SyncLastMessagesEvent;->getChatId()I

    move-result p1

    iput v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    invoke-interface {v1, v2, p1, p0}, Lcom/im/freechat/domain/t;->M(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    return-object v0

    .line 5
    :cond_2
    instance-of v1, p1, Lcom/im/freechat/shared/entities/SyncAppStateEvent;

    if-eqz v1, :cond_b

    .line 6
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {v1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;

    move-result-object v1

    invoke-interface {v1}, Lcom/im/freechat/domain/t;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 7
    :cond_3
    :try_start_9
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {v1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/im/freechat/domain/t;->u(Z)V

    .line 8
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {v1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;

    move-result-object v1

    iput-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    invoke-interface {v1, p0}, Lcom/im/freechat/domain/t;->R(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p1

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {p1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;

    move-result-object p1

    iput-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    invoke-interface {p1, p0}, Lcom/im/freechat/domain/t;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 10
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {p1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;

    move-result-object p1

    move-object v4, v1

    check-cast v4, Lcom/im/freechat/shared/entities/SyncAppStateEvent;

    invoke-virtual {v4}, Lcom/im/freechat/shared/entities/SyncAppStateEvent;->getUserId()I

    move-result v4

    iput-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    invoke-interface {p1, v4, p0}, Lcom/im/freechat/domain/t;->F(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 11
    :goto_2
    check-cast p1, Ljava/util/Map;

    .line 12
    new-instance v1, Lkotlin/Pair;

    move-object v5, v4

    check-cast v5, Lcom/im/freechat/shared/entities/SyncAppStateEvent;

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/SyncAppStateEvent;->getUserId()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lkotlin/Pair;

    const-wide v7, 0x7fffffffffffffffL

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 13
    iget-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {p1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;

    move-result-object p1

    iput-object v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    iput-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->a:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    invoke-interface {p1, p0}, Lcom/im/freechat/domain/t;->D(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 14
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {p1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->e(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/c;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    iput-object v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    iput-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->a:Ljava/lang/Object;

    const/4 v6, 0x6

    iput v6, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    invoke-interface {p1, v5, p0}, Lcom/im/freechat/domain/c;->E(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    .line 15
    :goto_4
    iget-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {p1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;

    move-result-object v1

    iget-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {p1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->f(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/k;

    move-result-object p1

    iput-object v5, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    iput-object v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->b:Ljava/lang/Object;

    const/4 v6, 0x7

    iput v6, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    invoke-interface {p1, p0}, Lcom/im/freechat/domain/k;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object v5, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    iput-object v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->a:Ljava/lang/Object;

    iput-object v3, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->b:Ljava/lang/Object;

    const/16 v8, 0x8

    iput v8, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    invoke-interface {v1, v6, v7, p1, p0}, Lcom/im/freechat/domain/t;->C(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    move-object v1, v4

    move-object v4, v5

    :goto_6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 16
    iget-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {p1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->f(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/k;

    move-result-object p1

    iput-object v4, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    iput-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->a:Ljava/lang/Object;

    const/16 v7, 0x9

    iput v7, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    invoke-interface {p1, v5, v6, p0}, Lcom/im/freechat/domain/k;->s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 17
    :cond_9
    :goto_7
    new-instance p1, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b$a;

    iget-object v5, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-direct {p1, v5, v4, v3}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b$a;-><init>(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;Lcom/im/freechat/shared/entities/SocketEvent;Lkotlin/coroutines/Continuation;)V

    iput-object v3, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->d:Ljava/lang/Object;

    iput-object v3, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->a:Ljava/lang/Object;

    const/16 v3, 0xa

    iput v3, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    invoke-static {v1, p1, p0}, Lcom/im/freechat/domain/f;->b(Ljava/util/Map;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-ne p1, v0, :cond_a

    return-object v0

    .line 18
    :cond_a
    :goto_8
    iget-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {p1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/im/freechat/domain/t;->u(Z)V

    goto :goto_b

    .line 19
    :goto_9
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 20
    :goto_a
    iget-object v0, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {v0}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/im/freechat/domain/t;->u(Z)V

    throw p1

    .line 21
    :cond_b
    instance-of v1, p1, Lcom/im/freechat/shared/entities/LastSyncTimeUpdated;

    if-eqz v1, :cond_d

    .line 22
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {v1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;

    move-result-object v1

    invoke-interface {v1}, Lcom/im/freechat/domain/t;->w()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 23
    :cond_c
    iget-object v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {v1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->f(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/k;

    move-result-object v1

    check-cast p1, Lcom/im/freechat/shared/entities/LastSyncTimeUpdated;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/LastSyncTimeUpdated;->getTime()J

    move-result-wide v2

    const/16 p1, 0xb

    iput p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    invoke-interface {v1, v2, v3, p0}, Lcom/im/freechat/domain/k;->s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    return-object v0

    .line 24
    :cond_d
    instance-of p1, p1, Lcom/im/freechat/shared/entities/LogoutEvent;

    if-eqz p1, :cond_e

    .line 25
    iget-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {p1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->g(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/t;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/im/freechat/domain/t;->u(Z)V

    .line 26
    iget-object p1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->e:Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;

    invoke-static {p1}, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;->f(Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;)Lcom/im/freechat/domain/k;

    move-result-object p1

    const/16 v1, 0xc

    iput v1, p0, Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor$b;->c:I

    invoke-interface {p1, p0}, Lcom/im/freechat/domain/k;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    return-object v0

    .line 27
    :cond_e
    :goto_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
