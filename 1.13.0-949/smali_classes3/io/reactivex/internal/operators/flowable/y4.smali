.class public final Lio/reactivex/internal/operators/flowable/y4;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableWithLatestFromMany.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/y4$a;,
        Lio/reactivex/internal/operators/flowable/y4$c;,
        Lio/reactivex/internal/operators/flowable/y4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
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

    .annotation build Lm7/f;
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

    .annotation build Lm7/f;
    .end annotation
.end field

.field final e:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ljava/lang/Iterable;Ln7/o;)V
    .locals 0
    .param p1    # Lio/reactivex/j;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p3    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/reactivestreams/c<",
            "*>;>;",
            "Ln7/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/y4;->c:[Lorg/reactivestreams/c;

    .line 7
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/y4;->d:Ljava/lang/Iterable;

    .line 8
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/y4;->e:Ln7/o;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/j;[Lorg/reactivestreams/c;Ln7/o;)V
    .locals 0
    .param p1    # Lio/reactivex/j;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p2    # [Lorg/reactivestreams/c;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;[",
            "Lorg/reactivestreams/c<",
            "*>;",
            "Ln7/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/y4;->c:[Lorg/reactivestreams/c;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/y4;->d:Ljava/lang/Iterable;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/y4;->e:Ln7/o;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/y4;->c:[Lorg/reactivestreams/c;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/reactivestreams/c;

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/y4;->d:Ljava/lang/Iterable;

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
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    return-void

    .line 8
    :cond_1
    array-length v2, v0

    :cond_2
    if-nez v2, :cond_3

    .line 9
    new-instance v0, Lio/reactivex/internal/operators/flowable/z1;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v2, Lio/reactivex/internal/operators/flowable/y4$a;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/flowable/y4$a;-><init>(Lio/reactivex/internal/operators/flowable/y4;)V

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/flowable/z1;-><init>(Lio/reactivex/j;Ln7/o;)V

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/z1;->k6(Lorg/reactivestreams/d;)V

    return-void

    .line 10
    :cond_3
    new-instance v1, Lio/reactivex/internal/operators/flowable/y4$b;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/y4;->e:Ln7/o;

    invoke-direct {v1, p1, v3, v2}, Lio/reactivex/internal/operators/flowable/y4$b;-><init>(Lorg/reactivestreams/d;Ln7/o;I)V

    .line 11
    invoke-interface {p1, v1}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 12
    invoke-virtual {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/y4$b;->e([Lorg/reactivestreams/c;I)V

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {p1, v1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
