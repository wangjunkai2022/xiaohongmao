.class public final Lio/reactivex/rxjava3/internal/operators/flowable/b5;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableWithLatestFromMany.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/b5$a;,
        Lio/reactivex/rxjava3/internal/operators/flowable/b5$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/b5$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:[Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/c<",
            "*>;"
        }
    .end annotation

    .annotation build Lp7/f;
    .end annotation
.end field

.field final d:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/reactivestreams/c<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lp7/f;
    .end annotation
.end field

.field final e:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Ljava/lang/Iterable;Lq7/o;)V
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/core/m;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/o;
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
            "source",
            "otherIterable",
            "combiner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/reactivestreams/c<",
            "*>;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b5;->c:[Lorg/reactivestreams/c;

    .line 7
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b5;->d:Ljava/lang/Iterable;

    .line 8
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b5;->e:Lq7/o;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/core/m;[Lorg/reactivestreams/c;Lq7/o;)V
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/core/m;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # [Lorg/reactivestreams/c;
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
            "source",
            "otherArray",
            "combiner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;[",
            "Lorg/reactivestreams/c<",
            "*>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b5;->c:[Lorg/reactivestreams/c;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b5;->d:Ljava/lang/Iterable;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b5;->e:Lq7/o;

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b5;->c:[Lorg/reactivestreams/c;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/reactivestreams/c;

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b5;->d:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/reactivestreams/c;

    .line 3
    array-length v4, v0

    if-ne v2, v4, :cond_0

    shr-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v2

    .line 4
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/reactivestreams/c;

    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 5
    aput-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    return-void

    .line 8
    :cond_1
    array-length v2, v0

    :cond_2
    if-nez v2, :cond_3

    .line 9
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/d2;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/b5$a;

    invoke-direct {v2, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/b5$a;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/b5;)V

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/d2;-><init>(Lio/reactivex/rxjava3/core/m;Lq7/o;)V

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/d2;->H6(Lorg/reactivestreams/d;)V

    return-void

    .line 10
    :cond_3
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/b5$b;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/b5;->e:Lq7/o;

    invoke-direct {v1, p1, v3, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/b5$b;-><init>(Lorg/reactivestreams/d;Lq7/o;I)V

    .line 11
    invoke-interface {p1, v1}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 12
    invoke-virtual {v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/b5$b;->e([Lorg/reactivestreams/c;I)V

    .line 13
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method
