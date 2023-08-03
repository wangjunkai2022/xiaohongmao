.class public final Lkotlinx/coroutines/internal/r;
.super Lkotlinx/coroutines/n0;
.source "LimitedDispatcher.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lkotlinx/coroutines/a1;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,107:1\n80#1,10:109\n80#1,10:119\n20#2:108\n20#2:129\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n66#1:109,10\n73#1:119,10\n56#1:108\n92#1:129\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u00032\u00020\u0004B\u0017\u0012\u0006\u0010 \u001a\u00020\u0001\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008,\u0010-J#\u0010\t\u001a\u00020\u00072\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0082\u0008J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0014\u0010\u000c\u001a\u00020\n2\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0002J\u001b\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0097A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\r2\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0013\u001a\u00020\u0012H\u0096\u0001J\u001f\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\r2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0016H\u0096\u0001J\u0010\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0019H\u0017J\u0008\u0010\u001c\u001a\u00020\u0007H\u0016J\u001c\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u001c\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0017R\u0014\u0010 \u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u0015R\u0016\u0010\"\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u0015R\u001e\u0010&\u001a\u000c\u0012\u0008\u0012\u00060\u0002j\u0002`\u00030#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010+\u001a\u00060\'j\u0002`(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006."
    }
    d2 = {
        "Lkotlinx/coroutines/internal/r;",
        "Lkotlinx/coroutines/n0;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "Lkotlinx/coroutines/a1;",
        "block",
        "Lkotlin/Function0;",
        "",
        "dispatch",
        "q0",
        "",
        "r0",
        "p0",
        "",
        "time",
        "g0",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "timeMillis",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlinx/coroutines/l1;",
        "I",
        "Lkotlinx/coroutines/q;",
        "continuation",
        "r",
        "",
        "parallelism",
        "limitedParallelism",
        "run",
        "dispatchYield",
        "a",
        "Lkotlinx/coroutines/n0;",
        "dispatcher",
        "b",
        "runningWorkers",
        "Lkotlinx/coroutines/internal/z;",
        "d",
        "Lkotlinx/coroutines/internal/z;",
        "queue",
        "",
        "Lkotlinx/coroutines/internal/SynchronizedObject;",
        "e",
        "Ljava/lang/Object;",
        "workerAllocationLock",
        "<init>",
        "(Lkotlinx/coroutines/n0;I)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lkotlinx/coroutines/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:I

.field private final synthetic c:Lkotlinx/coroutines/a1;

.field private final d:Lkotlinx/coroutines/internal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/z<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/n0;I)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/n0;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/r;->a:Lkotlinx/coroutines/n0;

    .line 3
    iput p2, p0, Lkotlinx/coroutines/internal/r;->b:I

    .line 4
    instance-of p2, p1, Lkotlinx/coroutines/a1;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlinx/coroutines/a1;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/x0;->a()Lkotlinx/coroutines/a1;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lkotlinx/coroutines/internal/r;->c:Lkotlinx/coroutines/a1;

    .line 5
    new-instance p1, Lkotlinx/coroutines/internal/z;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/z;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/r;->d:Lkotlinx/coroutines/internal/z;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/r;->e:Ljava/lang/Object;

    return-void
.end method

.method private final p0(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->d:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/z;->a(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lkotlinx/coroutines/internal/r;->runningWorkers:I

    iget v0, p0, Lkotlinx/coroutines/internal/r;->b:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final q0(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/r;->p0(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/internal/r;->r0()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final r0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->e:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/internal/r;->runningWorkers:I

    iget v2, p0, Lkotlinx/coroutines/internal/r;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget v1, p0, Lkotlinx/coroutines/internal/r;->runningWorkers:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lkotlinx/coroutines/internal/r;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public I(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/l1;
    .locals 1
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->c:Lkotlinx/coroutines/a1;

    invoke-interface {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/a1;->I(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/l1;

    move-result-object p1

    return-object p1
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/internal/r;->p0(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/internal/r;->r0()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/internal/r;->a:Lkotlinx/coroutines/n0;

    invoke-virtual {p1, p0, p0}, Lkotlinx/coroutines/n0;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlinx/coroutines/e2;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/internal/r;->p0(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/internal/r;->r0()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/internal/r;->a:Lkotlinx/coroutines/n0;

    invoke-virtual {p1, p0, p0}, Lkotlinx/coroutines/n0;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public g0(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->c:Lkotlinx/coroutines/a1;

    invoke-interface {v0, p1, p2, p3}, Lkotlinx/coroutines/a1;->g0(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public limitedParallelism(I)Lkotlinx/coroutines/n0;
    .locals 1
    .annotation build Lkotlinx/coroutines/y1;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlinx/coroutines/internal/s;->a(I)V

    .line 2
    iget v0, p0, Lkotlinx/coroutines/internal/r;->b:I

    if-lt p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/n0;->limitedParallelism(I)Lkotlinx/coroutines/n0;

    move-result-object p1

    return-object p1
.end method

.method public r(JLkotlinx/coroutines/q;)V
    .locals 1
    .param p3    # Lkotlinx/coroutines/q;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/q<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->c:Lkotlinx/coroutines/a1;

    invoke-interface {v0, p1, p2, p3}, Lkotlinx/coroutines/a1;->r(JLkotlinx/coroutines/q;)V

    return-void
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 1
    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/r;->d:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/z;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 2
    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 3
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v3, v2}, Lkotlinx/coroutines/p0;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lkotlinx/coroutines/internal/r;->a:Lkotlinx/coroutines/n0;

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/n0;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->a:Lkotlinx/coroutines/n0;

    invoke-virtual {v0, p0, p0}, Lkotlinx/coroutines/n0;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/internal/r;->e:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_1
    iget v2, p0, Lkotlinx/coroutines/internal/r;->runningWorkers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkotlinx/coroutines/internal/r;->runningWorkers:I

    .line 9
    iget-object v2, p0, Lkotlinx/coroutines/internal/r;->d:Lkotlinx/coroutines/internal/z;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/z;->c()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    .line 10
    :cond_2
    :try_start_2
    iget v2, p0, Lkotlinx/coroutines/internal/r;->runningWorkers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/r;->runningWorkers:I

    .line 11
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
