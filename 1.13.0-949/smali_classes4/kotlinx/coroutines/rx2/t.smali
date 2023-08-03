.class public final Lkotlinx/coroutines/rx2/t;
.super Ljava/lang/Object;
.source "RxScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxScheduler.kt\nkotlinx/coroutines/rx2/RxSchedulerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n1#2:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\u0013\u0010\u0004\u001a\u00020\u0003*\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a\n\u0010\u0006\u001a\u00020\u0000*\u00020\u0001\u001aQ\u0010\u0013\u001a\u00020\u0012*\u00020\u00072\n\u0010\n\u001a\u00060\u0008j\u0002`\t2\u0006\u0010\u000c\u001a\u00020\u000b2,\u0010\u0011\u001a(\u0012\u001a\u0012\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00100\r\u0012\u0008\u0012\u00060\u0008j\u0002`\t0\rH\u0002\u00f8\u0001\u0000*8\u0008\u0002\u0010\u0014\"\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00100\r2\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00100\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/reactivex/h0;",
        "Lkotlinx/coroutines/n0;",
        "d",
        "Lkotlinx/coroutines/rx2/z;",
        "e",
        "(Lio/reactivex/h0;)Lkotlinx/coroutines/rx2/z;",
        "f",
        "Lkotlinx/coroutines/s0;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "",
        "delayMillis",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "adaptForScheduling",
        "Lio/reactivex/disposables/c;",
        "g",
        "Task",
        "kotlinx-coroutines-rx2"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0}, Lkotlinx/coroutines/rx2/t;->h(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static final synthetic b(Lkotlinx/coroutines/s0;Ljava/lang/Runnable;JLkotlin/jvm/functions/Function1;)Lio/reactivex/disposables/c;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/rx2/t;->g(Lkotlinx/coroutines/s0;Ljava/lang/Runnable;JLkotlin/jvm/functions/Function1;)Lio/reactivex/disposables/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lio/reactivex/disposables/c;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/rx2/t;->i(Lio/reactivex/disposables/c;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lio/reactivex/h0;)Lkotlinx/coroutines/n0;
    .locals 1
    .param p0    # Lio/reactivex/h0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/rx2/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lkotlinx/coroutines/rx2/a;

    iget-object p0, p0, Lkotlinx/coroutines/rx2/a;->c:Lkotlinx/coroutines/n0;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lkotlinx/coroutines/rx2/z;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/rx2/z;-><init>(Lio/reactivex/h0;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final synthetic e(Lio/reactivex/h0;)Lkotlinx/coroutines/rx2/z;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.4.2, binary compatibility with earlier versions"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "asCoroutineDispatcher"
    .end annotation

    new-instance v0, Lkotlinx/coroutines/rx2/z;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/rx2/z;-><init>(Lio/reactivex/h0;)V

    return-object v0
.end method

.method public static final f(Lkotlinx/coroutines/n0;)Lio/reactivex/h0;
    .locals 1
    .param p0    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/rx2/z;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lkotlinx/coroutines/rx2/z;

    invoke-virtual {p0}, Lkotlinx/coroutines/rx2/z;->r0()Lio/reactivex/h0;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lkotlinx/coroutines/rx2/a;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/rx2/a;-><init>(Lkotlinx/coroutines/n0;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static final g(Lkotlinx/coroutines/s0;Ljava/lang/Runnable;JLkotlin/jvm/functions/Function1;)Lio/reactivex/disposables/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Ljava/lang/Runnable;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lio/reactivex/disposables/c;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlinx/coroutines/s0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 2
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 3
    new-instance v2, Lkotlinx/coroutines/rx2/s;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/rx2/s;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v2}, Lio/reactivex/disposables/d;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/c;

    move-result-object v2

    .line 4
    invoke-static {p1}, Lio/reactivex/plugins/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 5
    new-instance v3, Lkotlinx/coroutines/rx2/t$c;

    invoke-direct {v3, v2, v0, p1}, Lkotlinx/coroutines/rx2/t$c;-><init>(Lio/reactivex/disposables/c;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    invoke-interface {p4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 6
    invoke-static {p0}, Lkotlinx/coroutines/t0;->k(Lkotlinx/coroutines/s0;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lio/reactivex/disposables/d;->a()Lio/reactivex/disposables/c;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long p0, p2, v3

    if-gtz p0, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Lkotlinx/coroutines/b1;->d(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/a1;

    move-result-object p0

    invoke-interface {p0, p2, p3, p1, v0}, Lkotlinx/coroutines/a1;->I(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/l1;

    move-result-object p0

    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_0
    return-object v2
.end method

.method private static final h(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/l1;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/l1;->dispose()V

    :goto_0
    return-void
.end method

.method private static final i(Lio/reactivex/disposables/c;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/disposables/c;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Ljava/lang/Runnable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/rx2/t$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/rx2/t$a;

    iget v1, v0, Lkotlinx/coroutines/rx2/t$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/rx2/t$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/rx2/t$a;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/rx2/t$a;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/rx2/t$a;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/rx2/t$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/rx2/t$a;->a:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p0}, Lio/reactivex/disposables/c;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 5
    :cond_3
    :try_start_1
    new-instance p0, Lkotlinx/coroutines/rx2/t$b;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/rx2/t$b;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, v0, Lkotlinx/coroutines/rx2/t$a;->a:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/rx2/t$a;->c:I

    const/4 p2, 0x0

    invoke-static {p2, p0, v0, v3, p2}, Lkotlinx/coroutines/f2;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_4

    return-object v1

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {p0, p1}, Lkotlinx/coroutines/rx2/e;->a(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 7
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
