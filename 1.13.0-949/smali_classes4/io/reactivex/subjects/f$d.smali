.class final Lio/reactivex/subjects/f$d;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"

# interfaces
.implements Lio/reactivex/subjects/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/subjects/f$b<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final i:J = -0x6fcd9699e42b76b5L


# instance fields
.field final a:I

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/h0;

.field e:I

.field volatile f:Lio/reactivex/subjects/f$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/f$f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field g:Lio/reactivex/subjects/f$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/f$f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile h:Z


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-string v0, "maxSize"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/reactivex/subjects/f$d;->a:I

    const-string p1, "maxAge"

    .line 3
    invoke-static {p2, p3, p1}, Lio/reactivex/internal/functions/b;->i(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/reactivex/subjects/f$d;->b:J

    const-string p1, "unit is null"

    .line 4
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lio/reactivex/subjects/f$d;->c:Ljava/util/concurrent/TimeUnit;

    const-string p1, "scheduler is null"

    .line 5
    invoke-static {p5, p1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/h0;

    iput-object p1, p0, Lio/reactivex/subjects/f$d;->d:Lio/reactivex/h0;

    .line 6
    new-instance p1, Lio/reactivex/subjects/f$f;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lio/reactivex/subjects/f$f;-><init>(Ljava/lang/Object;J)V

    .line 7
    iput-object p1, p0, Lio/reactivex/subjects/f$d;->g:Lio/reactivex/subjects/f$f;

    .line 8
    iput-object p1, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/subjects/f$f;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/subjects/f$f;-><init>(Ljava/lang/Object;J)V

    .line 2
    iget-object p1, p0, Lio/reactivex/subjects/f$d;->g:Lio/reactivex/subjects/f$f;

    .line 3
    iput-object v0, p0, Lio/reactivex/subjects/f$d;->g:Lio/reactivex/subjects/f$f;

    .line 4
    iget v1, p0, Lio/reactivex/subjects/f$d;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/reactivex/subjects/f$d;->e:I

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lio/reactivex/subjects/f$d;->j()V

    .line 7
    iput-boolean v2, p0, Lio/reactivex/subjects/f$d;->h:Z

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/subjects/f$f;

    iget-object v1, p0, Lio/reactivex/subjects/f$d;->d:Lio/reactivex/h0;

    iget-object v2, p0, Lio/reactivex/subjects/f$d;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/h0;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/subjects/f$f;-><init>(Ljava/lang/Object;J)V

    .line 2
    iget-object p1, p0, Lio/reactivex/subjects/f$d;->g:Lio/reactivex/subjects/f$f;

    .line 3
    iput-object v0, p0, Lio/reactivex/subjects/f$d;->g:Lio/reactivex/subjects/f$f;

    .line 4
    iget v1, p0, Lio/reactivex/subjects/f$d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/subjects/f$d;->e:I

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lio/reactivex/subjects/f$d;->i()V

    return-void
.end method

.method public b(Lio/reactivex/subjects/f$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/f$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lio/reactivex/subjects/f$c;->a:Lio/reactivex/g0;

    .line 3
    iget-object v1, p1, Lio/reactivex/subjects/f$c;->c:Ljava/lang/Object;

    check-cast v1, Lio/reactivex/subjects/f$f;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/reactivex/subjects/f$d;->e()Lio/reactivex/subjects/f$f;

    move-result-object v1

    :cond_1
    const/4 v3, 0x1

    .line 5
    :cond_2
    :goto_0
    iget-boolean v4, p1, Lio/reactivex/subjects/f$c;->d:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 6
    iput-object v5, p1, Lio/reactivex/subjects/f$c;->c:Ljava/lang/Object;

    return-void

    .line 7
    :cond_3
    :goto_1
    iget-boolean v4, p1, Lio/reactivex/subjects/f$c;->d:Z

    if-eqz v4, :cond_4

    .line 8
    iput-object v5, p1, Lio/reactivex/subjects/f$c;->c:Ljava/lang/Object;

    return-void

    .line 9
    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/subjects/f$f;

    if-nez v4, :cond_6

    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 11
    :cond_5
    iput-object v1, p1, Lio/reactivex/subjects/f$c;->c:Ljava/lang/Object;

    neg-int v3, v3

    .line 12
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 13
    :cond_6
    iget-object v1, v4, Lio/reactivex/subjects/f$f;->a:Ljava/lang/Object;

    .line 14
    iget-boolean v6, p0, Lio/reactivex/subjects/f$d;->h:Z

    if-eqz v6, :cond_8

    .line 15
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    .line 16
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 17
    invoke-interface {v0}, Lio/reactivex/g0;->onComplete()V

    goto :goto_2

    .line 18
    :cond_7
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/g0;->onError(Ljava/lang/Throwable;)V

    .line 19
    :goto_2
    iput-object v5, p1, Lio/reactivex/subjects/f$c;->c:Ljava/lang/Object;

    .line 20
    iput-boolean v2, p1, Lio/reactivex/subjects/f$c;->d:Z

    return-void

    .line 21
    :cond_8
    invoke-interface {v0, v1}, Lio/reactivex/g0;->onNext(Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_1
.end method

.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    .line 2
    iget-object v1, v0, Lio/reactivex/subjects/f$f;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lio/reactivex/subjects/f$f;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lio/reactivex/subjects/f$f;-><init>(Ljava/lang/Object;J)V

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    iput-object v1, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    :cond_0
    return-void
.end method

.method public d([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/subjects/f$d;->e()Lio/reactivex/subjects/f$f;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/f$d;->h(Lio/reactivex/subjects/f$f;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 4
    aput-object v2, p1, v3

    goto :goto_1

    .line 5
    :cond_0
    array-length v4, p1

    if-ge v4, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eq v3, v1, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/f$f;

    .line 8
    iget-object v4, v0, Lio/reactivex/subjects/f$f;->a:Ljava/lang/Object;

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    array-length v0, p1

    if-le v0, v1, :cond_3

    .line 10
    aput-object v2, p1, v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method e()Lio/reactivex/subjects/f$f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/f$f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    .line 2
    iget-object v1, p0, Lio/reactivex/subjects/f$d;->d:Lio/reactivex/h0;

    iget-object v2, p0, Lio/reactivex/subjects/f$d;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/h0;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lio/reactivex/subjects/f$d;->b:J

    sub-long/2addr v1, v3

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/f$f;

    :goto_0
    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    if-eqz v0, :cond_1

    .line 4
    iget-wide v4, v0, Lio/reactivex/subjects/f$f;->b:J

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/f$f;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method

.method public getValue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lm7/f;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    const/4 v1, 0x0

    move-object v2, v1

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/f$f;

    if-nez v3, :cond_4

    .line 3
    iget-object v3, p0, Lio/reactivex/subjects/f$d;->d:Lio/reactivex/h0;

    iget-object v4, p0, Lio/reactivex/subjects/f$d;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lio/reactivex/h0;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    iget-wide v5, p0, Lio/reactivex/subjects/f$d;->b:J

    sub-long/2addr v3, v5

    .line 4
    iget-wide v5, v0, Lio/reactivex/subjects/f$f;->b:J

    cmp-long v7, v5, v3

    if-gez v7, :cond_0

    return-object v1

    .line 5
    :cond_0
    iget-object v0, v0, Lio/reactivex/subjects/f$f;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    .line 7
    :cond_3
    :goto_1
    iget-object v0, v2, Lio/reactivex/subjects/f$f;->a:Ljava/lang/Object;

    return-object v0

    :cond_4
    move-object v2, v0

    move-object v0, v3

    goto :goto_0
.end method

.method h(Lio/reactivex/subjects/f$f;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/f$f<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/f$f;

    if-nez v1, :cond_1

    .line 2
    iget-object p1, p1, Lio/reactivex/subjects/f$f;->a:Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-object p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method i()V
    .locals 8

    .line 1
    iget v0, p0, Lio/reactivex/subjects/f$d;->e:I

    iget v1, p0, Lio/reactivex/subjects/f$d;->a:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v2

    .line 2
    iput v0, p0, Lio/reactivex/subjects/f$d;->e:I

    .line 3
    iget-object v0, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/f$f;

    iput-object v0, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/f$d;->d:Lio/reactivex/h0;

    iget-object v1, p0, Lio/reactivex/subjects/f$d;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/h0;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v3, p0, Lio/reactivex/subjects/f$d;->b:J

    sub-long/2addr v0, v3

    .line 6
    iget-object v3, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    .line 7
    :goto_0
    iget v4, p0, Lio/reactivex/subjects/f$d;->e:I

    if-gt v4, v2, :cond_1

    .line 8
    iput-object v3, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/subjects/f$f;

    if-nez v4, :cond_2

    .line 10
    iput-object v3, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    goto :goto_1

    .line 11
    :cond_2
    iget-wide v5, v4, Lio/reactivex/subjects/f$f;->b:J

    cmp-long v7, v5, v0

    if-lez v7, :cond_3

    .line 12
    iput-object v3, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    :goto_1
    return-void

    .line 13
    :cond_3
    iget v3, p0, Lio/reactivex/subjects/f$d;->e:I

    sub-int/2addr v3, v2

    iput v3, p0, Lio/reactivex/subjects/f$d;->e:I

    move-object v3, v4

    goto :goto_0
.end method

.method j()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/subjects/f$d;->d:Lio/reactivex/h0;

    iget-object v1, p0, Lio/reactivex/subjects/f$d;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/h0;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/subjects/f$d;->b:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    .line 3
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/f$f;

    .line 4
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-nez v4, :cond_1

    .line 5
    iget-object v0, v2, Lio/reactivex/subjects/f$f;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lio/reactivex/subjects/f$f;

    invoke-direct {v0, v7, v5, v6}, Lio/reactivex/subjects/f$f;-><init>(Ljava/lang/Object;J)V

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    goto :goto_1

    .line 9
    :cond_0
    iput-object v2, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    goto :goto_1

    .line 10
    :cond_1
    iget-wide v8, v3, Lio/reactivex/subjects/f$f;->b:J

    cmp-long v4, v8, v0

    if-lez v4, :cond_3

    .line 11
    iget-object v0, v2, Lio/reactivex/subjects/f$f;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lio/reactivex/subjects/f$f;

    invoke-direct {v0, v7, v5, v6}, Lio/reactivex/subjects/f$f;-><init>(Ljava/lang/Object;J)V

    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 14
    iput-object v0, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    goto :goto_1

    .line 15
    :cond_2
    iput-object v2, p0, Lio/reactivex/subjects/f$d;->f:Lio/reactivex/subjects/f$f;

    :goto_1
    return-void

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/subjects/f$d;->e()Lio/reactivex/subjects/f$f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/f$d;->h(Lio/reactivex/subjects/f$f;)I

    move-result v0

    return v0
.end method
