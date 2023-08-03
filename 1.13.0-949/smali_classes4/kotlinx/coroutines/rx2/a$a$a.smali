.class final Lkotlinx/coroutines/rx2/a$a$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RxScheduler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/rx2/a$a;-><init>(JLkotlinx/coroutines/n0;Lkotlinx/coroutines/j2;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx2/DispatcherScheduler$DispatcherWorker$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,181:1\n103#2:182\n80#2,6:183\n104#2,2:189\n90#2:191\n86#2,4:192\n*S KotlinDebug\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx2/DispatcherScheduler$DispatcherWorker$1\n*L\n81#1:182\n81#1:183,6\n81#1:189,2\n81#1:191\n81#1:192,4\n*E\n"
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
        0x6,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.rx2.DispatcherScheduler$DispatcherWorker$1"
    f = "RxScheduler.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0xbd,
        0x52
    }
    m = "invokeSuspend"
    n = {
        "$this$consume$iv$iv",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lkotlinx/coroutines/rx2/a$a;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/rx2/a$a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/rx2/a$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/rx2/a$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/rx2/a$a$a;->d:Lkotlinx/coroutines/rx2/a$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lkotlinx/coroutines/rx2/a$a$a;

    iget-object v0, p0, Lkotlinx/coroutines/rx2/a$a$a;->d:Lkotlinx/coroutines/rx2/a$a;

    invoke-direct {p1, v0, p2}, Lkotlinx/coroutines/rx2/a$a$a;-><init>(Lkotlinx/coroutines/rx2/a$a;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/rx2/a$a$a;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/rx2/a$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/rx2/a$a$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/rx2/a$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lkotlinx/coroutines/rx2/a$a$a;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lkotlinx/coroutines/rx2/a$a$a;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/o;

    iget-object v4, p0, Lkotlinx/coroutines/rx2/a$a$a;->a:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/f0;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/rx2/a$a$a;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/o;

    iget-object v4, p0, Lkotlinx/coroutines/rx2/a$a$a;->a:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/f0;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v4

    move-object v4, p0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lkotlinx/coroutines/rx2/a$a$a;->d:Lkotlinx/coroutines/rx2/a$a;

    invoke-static {p1}, Lkotlinx/coroutines/rx2/a$a;->e(Lkotlinx/coroutines/rx2/a$a;)Lkotlinx/coroutines/channels/m;

    move-result-object v4

    .line 5
    :try_start_2
    invoke-interface {v4}, Lkotlinx/coroutines/channels/f0;->iterator()Lkotlinx/coroutines/channels/o;

    move-result-object p1

    :goto_0
    move-object v1, p0

    :goto_1
    iput-object v4, v1, Lkotlinx/coroutines/rx2/a$a$a;->a:Ljava/lang/Object;

    iput-object p1, v1, Lkotlinx/coroutines/rx2/a$a$a;->b:Ljava/lang/Object;

    iput v3, v1, Lkotlinx/coroutines/rx2/a$a$a;->c:I

    invoke-interface {p1, v1}, Lkotlinx/coroutines/channels/o;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v5, v0, :cond_3

    return-object v0

    :cond_3
    move-object v7, v1

    move-object v1, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v7

    :goto_2
    const/4 v6, 0x0

    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v1}, Lkotlinx/coroutines/channels/o;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 6
    iput-object v5, v4, Lkotlinx/coroutines/rx2/a$a$a;->a:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/rx2/a$a$a;->b:Ljava/lang/Object;

    iput v2, v4, Lkotlinx/coroutines/rx2/a$a$a;->c:I

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object p1, v1

    move-object v1, v4

    move-object v4, v5

    goto :goto_1

    .line 7
    :cond_5
    invoke-static {v5, v6}, Lkotlinx/coroutines/channels/r;->b(Lkotlinx/coroutines/channels/f0;Ljava/lang/Throwable;)V

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 9
    :goto_3
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 10
    invoke-static {v4, p1}, Lkotlinx/coroutines/channels/r;->b(Lkotlinx/coroutines/channels/f0;Ljava/lang/Throwable;)V

    throw v0
.end method
