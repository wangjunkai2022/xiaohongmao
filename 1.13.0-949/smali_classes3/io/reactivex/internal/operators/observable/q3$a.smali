.class final Lio/reactivex/internal/operators/observable/q3$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ObservableTakeLastTimed.java"

# interfaces
.implements Lio/reactivex/g0;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/g0<",
        "TT;>;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# static fields
.field private static final k:J = -0x4eca0434695949bbL


# instance fields
.field final a:Lio/reactivex/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/g0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/h0;

.field final f:Lio/reactivex/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Z

.field h:Lio/reactivex/disposables/c;

.field volatile i:Z

.field j:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/g0;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q3$a;->a:Lio/reactivex/g0;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/q3$a;->b:J

    .line 4
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/q3$a;->c:J

    .line 5
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/q3$a;->d:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/q3$a;->e:Lio/reactivex/h0;

    .line 7
    new-instance p1, Lio/reactivex/internal/queue/b;

    invoke-direct {p1, p8}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q3$a;->f:Lio/reactivex/internal/queue/b;

    .line 8
    iput-boolean p9, p0, Lio/reactivex/internal/operators/observable/q3$a;->g:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/q3$a;->a:Lio/reactivex/g0;

    .line 3
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/q3$a;->f:Lio/reactivex/internal/queue/b;

    .line 4
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/q3$a;->g:Z

    .line 5
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/q3$a;->e:Lio/reactivex/h0;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/q3$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Lio/reactivex/h0;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    iget-wide v7, p0, Lio/reactivex/internal/operators/observable/q3$a;->c:J

    sub-long/2addr v5, v7

    .line 6
    :goto_0
    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/q3$a;->i:Z

    if-eqz v7, :cond_1

    .line 7
    invoke-virtual {v3}, Lio/reactivex/internal/queue/b;->clear()V

    return-void

    :cond_1
    if-nez v4, :cond_2

    .line 8
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/q3$a;->j:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    .line 9
    invoke-virtual {v3}, Lio/reactivex/internal/queue/b;->clear()V

    .line 10
    invoke-interface {v2, v7}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 11
    :cond_2
    invoke-virtual {v3}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_5

    .line 12
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q3$a;->j:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 13
    invoke-interface {v2, v0}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 14
    :cond_4
    invoke-interface {v2}, Lio/reactivex/g0;->onComplete()V

    :goto_2
    return-void

    .line 15
    :cond_5
    invoke-virtual {v3}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v8

    .line 16
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v9, v5

    if-gez v7, :cond_6

    goto :goto_0

    .line 17
    :cond_6
    invoke-interface {v2, v8}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/q3$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/q3$a;->i:Z

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/q3$a;->h:Lio/reactivex/disposables/c;

    invoke-interface {v1}, Lio/reactivex/disposables/c;->dispose()V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q3$a;->f:Lio/reactivex/internal/queue/b;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/b;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/q3$a;->i:Z

    return v0
.end method

.method public onComplete()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/q3$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q3$a;->j:Ljava/lang/Throwable;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/q3$a;->a()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q3$a;->f:Lio/reactivex/internal/queue/b;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/q3$a;->e:Lio/reactivex/h0;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/q3$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/h0;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/q3$a;->c:J

    .line 4
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/q3$a;->b:J

    const/4 v7, 0x1

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v5, v8

    if-nez v10, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 5
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9, p1}, Lio/reactivex/internal/queue/b;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    :goto_1
    invoke-virtual {v0}, Lio/reactivex/internal/queue/b;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {v0}, Lio/reactivex/internal/queue/b;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v11, v1, v3

    cmp-long p1, v9, v11

    if-lez p1, :cond_1

    if-nez v8, :cond_2

    .line 8
    invoke-virtual {v0}, Lio/reactivex/internal/queue/b;->p()I

    move-result p1

    shr-int/2addr p1, v7

    int-to-long v9, p1

    cmp-long p1, v9, v5

    if-lez p1, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v0}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q3$a;->h:Lio/reactivex/disposables/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/c;Lio/reactivex/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q3$a;->h:Lio/reactivex/disposables/c;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/q3$a;->a:Lio/reactivex/g0;

    invoke-interface {p1, p0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    :cond_0
    return-void
.end method
