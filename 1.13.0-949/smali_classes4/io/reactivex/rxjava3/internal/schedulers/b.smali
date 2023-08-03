.class public final Lio/reactivex/rxjava3/internal/schedulers/b;
.super Lio/reactivex/rxjava3/core/o0;
.source "ComputationScheduler.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/schedulers/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/b$c;,
        Lio/reactivex/rxjava3/internal/schedulers/b$a;,
        Lio/reactivex/rxjava3/internal/schedulers/b$b;
    }
.end annotation


# static fields
.field static final d:Lio/reactivex/rxjava3/internal/schedulers/b$b;

.field private static final e:Ljava/lang/String; = "RxComputationThreadPool"

.field static final f:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

.field static final g:Ljava/lang/String; = "rx3.computation-threads"

.field static final h:I

.field static final i:Lio/reactivex/rxjava3/internal/schedulers/b$c;

.field private static final j:Ljava/lang/String; = "rx3.computation-priority"


# instance fields
.field final b:Ljava/util/concurrent/ThreadFactory;

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/schedulers/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string v1, "rx3.computation-threads"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/b;->l(II)I

    move-result v0

    sput v0, Lio/reactivex/rxjava3/internal/schedulers/b;->h:I

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/b$c;

    new-instance v1, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v3, "RxComputationShutdown"

    invoke-direct {v1, v3}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/b$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/b;->i:Lio/reactivex/rxjava3/internal/schedulers/b$c;

    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/i;->dispose()V

    const-string v0, "rx3.computation-priority"

    const/4 v1, 0x5

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    new-instance v3, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v4, "RxComputationThreadPool"

    invoke-direct {v3, v4, v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lio/reactivex/rxjava3/internal/schedulers/b;->f:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    .line 7
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/b$b;

    invoke-direct {v0, v2, v3}, Lio/reactivex/rxjava3/internal/schedulers/b$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/b;->d:Lio/reactivex/rxjava3/internal/schedulers/b$b;

    .line 8
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/b$b;->c()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/b;->f:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lio/reactivex/rxjava3/internal/schedulers/b;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadFactory"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/o0;-><init>()V

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/b;->b:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/b;->d:Lio/reactivex/rxjava3/internal/schedulers/b$b;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/b;->j()V

    return-void
.end method

.method static l(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cpuCount",
            "paramThreads"
        }
    .end annotation

    if-lez p1, :cond_1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public a(ILio/reactivex/rxjava3/internal/schedulers/k$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "callback"
        }
    .end annotation

    const-string v0, "number > 0 required"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/schedulers/b$b;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/internal/schedulers/b$b;->a(ILio/reactivex/rxjava3/internal/schedulers/k$a;)V

    return-void
.end method

.method public d()Lio/reactivex/rxjava3/core/o0$c;
    .locals 2
    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/b$a;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/internal/schedulers/b$b;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/schedulers/b$b;->b()Lio/reactivex/rxjava3/internal/schedulers/b$c;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/b$a;-><init>(Lio/reactivex/rxjava3/internal/schedulers/b$c;)V

    return-object v0
.end method

.method public g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "run",
            "delay",
            "unit"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/schedulers/b$b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/b$b;->b()Lio/reactivex/rxjava3/internal/schedulers/b$c;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/reactivex/rxjava3/internal/schedulers/i;->f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "run",
            "initialDelay",
            "period",
            "unit"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/schedulers/b$b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/b$b;->b()Lio/reactivex/rxjava3/internal/schedulers/b$c;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    .line 2
    invoke-virtual/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/schedulers/i;->g(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/b;->d:Lio/reactivex/rxjava3/internal/schedulers/b$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/schedulers/b$b;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/b$b;->c()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/b$b;

    sget v1, Lio/reactivex/rxjava3/internal/schedulers/b;->h:I

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/schedulers/b;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/schedulers/b$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/b;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/rxjava3/internal/schedulers/b;->d:Lio/reactivex/rxjava3/internal/schedulers/b$b;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/b$b;->c()V

    :cond_0
    return-void
.end method
