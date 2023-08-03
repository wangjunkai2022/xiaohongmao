.class final Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;
.super Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;
.source "FlowableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/g3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/g3$a<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final j:J = 0x2ffd21f3bea38aacL


# instance fields
.field final f:Lio/reactivex/rxjava3/core/o0;

.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;

.field final i:I


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "limit",
            "maxAge",
            "unit",
            "scheduler",
            "eagerTruncate"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p6}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;-><init>(Z)V

    .line 2
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->f:Lio/reactivex/rxjava3/core/o0;

    .line 3
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->i:I

    .line 4
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->g:J

    .line 5
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->h:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method h(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "terminal"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/schedulers/d;

    if-eqz p2, :cond_0

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->f:Lio/reactivex/rxjava3/core/o0;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/o0;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    :goto_0
    iget-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->h:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, p2}, Lio/reactivex/rxjava3/schedulers/d;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method i()Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;
    .locals 8

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->f:Lio/reactivex/rxjava3/core/o0;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/o0;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->g:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    :goto_0
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v4, v2, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;->a:Ljava/lang/Object;

    check-cast v4, Lio/reactivex/rxjava3/schedulers/d;

    .line 5
    invoke-virtual {v4}, Lio/reactivex/rxjava3/schedulers/d;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lio/reactivex/rxjava3/schedulers/d;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v4}, Lio/reactivex/rxjava3/schedulers/d;->a()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_2

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3
.end method

.method l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lio/reactivex/rxjava3/schedulers/d;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/schedulers/d;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method q()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->f:Lio/reactivex/rxjava3/core/o0;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/o0;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->g:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    const/4 v4, 0x0

    :goto_0
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    .line 4
    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 5
    iget v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->i:I

    if-le v5, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    .line 6
    iput v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v5, v2, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;->a:Ljava/lang/Object;

    check-cast v5, Lio/reactivex/rxjava3/schedulers/d;

    .line 9
    invoke-virtual {v5}, Lio/reactivex/rxjava3/schedulers/d;->a()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gtz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 10
    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    sub-int/2addr v3, v6

    iput v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {p0, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->o(Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;)V

    :cond_2
    return-void
.end method

.method r()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->f:Lio/reactivex/rxjava3/core/o0;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/o0;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$k;->g:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    const/4 v4, 0x0

    :goto_0
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    .line 4
    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 5
    iget-object v5, v2, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;->a:Ljava/lang/Object;

    check-cast v5, Lio/reactivex/rxjava3/schedulers/d;

    .line 6
    invoke-virtual {v5}, Lio/reactivex/rxjava3/schedulers/d;->a()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gtz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 7
    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    sub-int/2addr v3, v6

    iput v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->c:I

    .line 8
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {p0, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$a;->o(Lio/reactivex/rxjava3/internal/operators/flowable/g3$e;)V

    :cond_1
    return-void
.end method
