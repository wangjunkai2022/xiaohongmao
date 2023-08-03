.class public Lkotlinx/coroutines/scheduling/h;
.super Lkotlinx/coroutines/v1;
.source "Dispatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0010\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0019\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0019\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\"\u00a2\u0006\u0004\u0008-\u0010.J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\u0008\u001a\u00060\u0006j\u0002`\u0007H\u0016J\u001c\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\u0008\u001a\u00060\u0006j\u0002`\u0007H\u0016J+\u0010\u000f\u001a\u00020\t2\n\u0010\u0008\u001a\u00060\u0006j\u0002`\u00072\u0006\u0010\u0005\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\rH\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0011\u001a\u00020\tH\u0016J\u000f\u0010\u0012\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014H\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0013R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001bR\u0014\u0010!\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010(\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/h;",
        "Lkotlinx/coroutines/v1;",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "q0",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "",
        "dispatch",
        "dispatchYield",
        "Lkotlinx/coroutines/scheduling/k;",
        "",
        "tailDispatch",
        "r0",
        "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/k;Z)V",
        "close",
        "u0",
        "()V",
        "",
        "timeout",
        "t0",
        "(J)V",
        "s0",
        "",
        "b",
        "I",
        "corePoolSize",
        "c",
        "maxPoolSize",
        "d",
        "J",
        "idleWorkerKeepAliveNs",
        "",
        "e",
        "Ljava/lang/String;",
        "schedulerName",
        "f",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "coroutineScheduler",
        "Ljava/util/concurrent/Executor;",
        "p0",
        "()Ljava/util/concurrent/Executor;",
        "executor",
        "<init>",
        "(IIJLjava/lang/String;)V",
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
.field private final b:I

.field private final c:I

.field private final d:J

.field private final e:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/scheduling/h;-><init>(IIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Lkotlinx/coroutines/v1;-><init>()V

    .line 6
    iput p1, p0, Lkotlinx/coroutines/scheduling/h;->b:I

    .line 7
    iput p2, p0, Lkotlinx/coroutines/scheduling/h;->c:I

    .line 8
    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/h;->d:J

    .line 9
    iput-object p5, p0, Lkotlinx/coroutines/scheduling/h;->e:Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/h;->q0()Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-void
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 1
    sget p1, Lkotlinx/coroutines/scheduling/n;->c:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 2
    sget p2, Lkotlinx/coroutines/scheduling/n;->d:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 3
    sget-wide p3, Lkotlinx/coroutines/scheduling/n;->e:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    const-string p5, "CoroutineScheduler"

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move-wide p5, v0

    move-object p7, v2

    .line 4
    invoke-direct/range {p2 .. p7}, Lkotlinx/coroutines/scheduling/h;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method private final q0()Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .locals 7

    new-instance v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget v1, p0, Lkotlinx/coroutines/scheduling/h;->b:I

    iget v2, p0, Lkotlinx/coroutines/scheduling/h;->c:I

    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/h;->d:J

    iget-object v5, p0, Lkotlinx/coroutines/scheduling/h;->e:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->close()V

    return-void
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->A(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/k;ZILjava/lang/Object;)V

    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->A(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/k;ZILjava/lang/Object;)V

    return-void
.end method

.method public p0()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-object v0
.end method

.method public final r0(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/k;Z)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/scheduling/k;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->y(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/k;Z)V

    return-void
.end method

.method public final s0()V
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/h;->u0()V

    return-void
.end method

.method public final declared-synchronized t0(J)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->X(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized u0()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->X(J)V

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/h;->q0()Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/h;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
