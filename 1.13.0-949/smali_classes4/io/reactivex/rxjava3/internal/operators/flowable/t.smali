.class public final Lio/reactivex/rxjava3/internal/operators/flowable/t;
.super Lio/reactivex/rxjava3/core/m;
.source "FlowableCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/t$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/t$b;,
        Lio/reactivex/rxjava3/internal/operators/flowable/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/m<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:[Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/c<",
            "+TT;>;"
        }
    .end annotation

    .annotation build Lp7/f;
    .end annotation
.end field

.field final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/reactivestreams/c<",
            "+TT;>;>;"
        }
    .end annotation

    .annotation build Lp7/f;
    .end annotation
.end field

.field final d:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final e:I

.field final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lq7/o;IZ)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
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
            "iterable",
            "combiner",
            "bufferSize",
            "delayErrors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/reactivestreams/c<",
            "+TT;>;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->b:[Lorg/reactivestreams/c;

    .line 9
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->c:Ljava/lang/Iterable;

    .line 10
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->d:Lq7/o;

    .line 11
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->e:I

    .line 12
    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->f:Z

    return-void
.end method

.method public constructor <init>([Lorg/reactivestreams/c;Lq7/o;IZ)V
    .locals 0
    .param p1    # [Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
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
            "array",
            "combiner",
            "bufferSize",
            "delayErrors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/c<",
            "+TT;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->b:[Lorg/reactivestreams/c;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->c:Ljava/lang/Iterable;

    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->d:Lq7/o;

    .line 5
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->e:I

    .line 6
    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->f:Z

    return-void
.end method


# virtual methods
.method public H6(Lorg/reactivestreams/d;)V
    .locals 9
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->b:[Lorg/reactivestreams/c;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/reactivestreams/c;

    .line 2
    :try_start_0
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->c:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/reactivestreams/c;

    .line 3
    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    .line 4
    new-array v5, v5, [Lorg/reactivestreams/c;

    .line 5
    invoke-static {v0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    const-string v6, "The Iterator returned a null Publisher"

    .line 6
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lorg/reactivestreams/c;

    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    return-void

    .line 9
    :cond_1
    array-length v3, v0

    :cond_2
    move v8, v3

    if-nez v8, :cond_3

    .line 10
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/d;)V

    return-void

    :cond_3
    const/4 v2, 0x1

    if-ne v8, v2, :cond_4

    .line 11
    aget-object v0, v0, v1

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/d2$b;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/t$c;

    invoke-direct {v2, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/t$c;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/t;)V

    invoke-direct {v1, p1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/d2$b;-><init>(Lorg/reactivestreams/d;Lq7/o;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void

    .line 12
    :cond_4
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/t$a;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->d:Lq7/o;

    iget v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->e:I

    iget-boolean v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/t;->f:Z

    move-object v2, v1

    move-object v3, p1

    move v5, v8

    invoke-direct/range {v2 .. v7}, Lio/reactivex/rxjava3/internal/operators/flowable/t$a;-><init>(Lorg/reactivestreams/d;Lq7/o;IIZ)V

    .line 13
    invoke-interface {p1, v1}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 14
    invoke-virtual {v1, v0, v8}, Lio/reactivex/rxjava3/internal/operators/flowable/t$a;->q([Lorg/reactivestreams/c;I)V

    return-void
.end method
