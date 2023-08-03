.class public final Lio/reactivex/rxjava3/internal/operators/parallel/n;
.super Lio/reactivex/rxjava3/parallel/a;
.source "ParallelReduce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/parallel/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/parallel/a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/parallel/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/parallel/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "TR;>;"
        }
    .end annotation
.end field

.field final c:Lq7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/parallel/a;Lq7/s;Lq7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "initialSupplier",
            "reducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/parallel/a<",
            "+TT;>;",
            "Lq7/s<",
            "TR;>;",
            "Lq7/c<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/parallel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/n;->a:Lio/reactivex/rxjava3/parallel/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/n;->b:Lq7/s;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/n;->c:Lq7/c;

    return-void
.end method


# virtual methods
.method public M()I
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/n;->a:Lio/reactivex/rxjava3/parallel/a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/parallel/a;->M()I

    move-result v0

    return v0
.end method

.method public X([Lorg/reactivestreams/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscribers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/d<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/parallel/a;->b0([Lorg/reactivestreams/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    .line 3
    new-array v1, v0, [Lorg/reactivestreams/d;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    :try_start_0
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/n;->b:Lq7/s;

    invoke-interface {v3}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "The initialSupplier returned a null value"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/parallel/n$a;

    aget-object v5, p1, v2

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/parallel/n;->c:Lq7/c;

    invoke-direct {v4, v5, v3, v6}, Lio/reactivex/rxjava3/internal/operators/parallel/n$a;-><init>(Lorg/reactivestreams/d;Ljava/lang/Object;Lq7/c;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/internal/operators/parallel/n;->c0([Lorg/reactivestreams/d;Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/n;->a:Lio/reactivex/rxjava3/parallel/a;

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/parallel/a;->X([Lorg/reactivestreams/d;)V

    return-void
.end method

.method c0([Lorg/reactivestreams/d;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subscribers",
            "ex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/d<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-static {p2, v2}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
