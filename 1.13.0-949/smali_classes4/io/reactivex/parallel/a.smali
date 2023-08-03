.class public abstract Lio/reactivex/parallel/a;
.super Ljava/lang/Object;
.source "ParallelFlowable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lorg/reactivestreams/c;II)Lio/reactivex/parallel/a;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+TT;>;II)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "source"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "parallelism"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/parallel/h;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/h;-><init>(Lorg/reactivestreams/c;II)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs B([Lorg/reactivestreams/c;)Lio/reactivex/parallel/a;
    .locals 1
    .param p0    # [Lorg/reactivestreams/c;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/c<",
            "TT;>;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/g;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/parallel/g;-><init>([Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zero publishers not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y(Lorg/reactivestreams/c;)Lio/reactivex/parallel/a;
    .locals 2
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+TT;>;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {}, Lio/reactivex/j;->Y()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/parallel/a;->A(Lorg/reactivestreams/c;II)Lio/reactivex/parallel/a;

    move-result-object p0

    return-object p0
.end method

.method public static z(Lorg/reactivestreams/c;I)Lio/reactivex/parallel/a;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+TT;>;I)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    invoke-static {}, Lio/reactivex/j;->Y()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/parallel/a;->A(Lorg/reactivestreams/c;II)Lio/reactivex/parallel/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final C(Ln7/o;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+TR;>;)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "mapper"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/j;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/parallel/j;-><init>(Lio/reactivex/parallel/a;Ln7/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final D(Ln7/o;Lio/reactivex/parallel/ParallelFailureHandling;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/parallel/ParallelFailureHandling;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+TR;>;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "mapper"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/k;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/k;-><init>(Lio/reactivex/parallel/a;Ln7/o;Ln7/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final E(Ln7/o;Ln7/c;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p2    # Ln7/c;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+TR;>;",
            "Ln7/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "mapper"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/k;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/k;-><init>(Lio/reactivex/parallel/a;Ln7/o;Ln7/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public abstract F()I
.end method

.method public final G(Ln7/c;)Lio/reactivex/j;
    .locals 1
    .param p1    # Ln7/c;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/c<",
            "TT;TT;TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "reducer"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/n;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/parallel/n;-><init>(Lio/reactivex/parallel/a;Ln7/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final H(Ljava/util/concurrent/Callable;Ln7/c;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p2    # Ln7/c;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Ln7/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "initialSupplier"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/m;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/m;-><init>(Lio/reactivex/parallel/a;Ljava/util/concurrent/Callable;Ln7/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final I(Lio/reactivex/h0;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Lio/reactivex/h0;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h0;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    invoke-static {}, Lio/reactivex/j;->Y()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/parallel/a;->J(Lio/reactivex/h0;I)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final J(Lio/reactivex/h0;I)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Lio/reactivex/h0;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h0;",
            "I)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "scheduler"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/o;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/o;-><init>(Lio/reactivex/parallel/a;Lio/reactivex/h0;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final K()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/j;->Y()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/parallel/a;->L(I)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final L(I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "prefetch"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/parallel/i;-><init>(Lio/reactivex/parallel/a;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final M()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/j;->Y()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/parallel/a;->N(I)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final N(I)Lio/reactivex/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->FULL:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "prefetch"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/parallel/i;-><init>(Lio/reactivex/parallel/a;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final O(Ljava/util/Comparator;)Lio/reactivex/j;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lio/reactivex/parallel/a;->P(Ljava/util/Comparator;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final P(Ljava/util/Comparator;I)Lio/reactivex/j;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "comparator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/parallel/a;->F()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    .line 4
    invoke-static {p2}, Lio/reactivex/internal/functions/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/util/ListAddBiConsumer;->instance()Ln7/c;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lio/reactivex/parallel/a;->H(Ljava/util/concurrent/Callable;Ln7/c;)Lio/reactivex/parallel/a;

    move-result-object p2

    .line 5
    new-instance v0, Lio/reactivex/internal/util/p;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/p;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Lio/reactivex/parallel/a;->C(Ln7/o;)Lio/reactivex/parallel/a;

    move-result-object p2

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/parallel/p;

    invoke-direct {v0, p2, p1}, Lio/reactivex/internal/operators/parallel/p;-><init>(Lio/reactivex/parallel/a;Ljava/util/Comparator;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public abstract Q([Lorg/reactivestreams/d;)V
    .param p1    # [Lorg/reactivestreams/d;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final R(Ln7/o;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-",
            "Lio/reactivex/parallel/a<",
            "TT;>;TU;>;)TU;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln7/o;

    invoke-interface {p1, p0}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p1}, Lio/reactivex/internal/util/g;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final S(Ljava/util/Comparator;)Lio/reactivex/j;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lio/reactivex/parallel/a;->T(Ljava/util/Comparator;I)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final T(Ljava/util/Comparator;I)Lio/reactivex/j;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Lio/reactivex/j<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "comparator is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/parallel/a;->F()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    .line 4
    invoke-static {p2}, Lio/reactivex/internal/functions/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/util/ListAddBiConsumer;->instance()Ln7/c;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lio/reactivex/parallel/a;->H(Ljava/util/concurrent/Callable;Ln7/c;)Lio/reactivex/parallel/a;

    move-result-object p2

    .line 5
    new-instance v0, Lio/reactivex/internal/util/p;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/p;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Lio/reactivex/parallel/a;->C(Ln7/o;)Lio/reactivex/parallel/a;

    move-result-object p2

    .line 6
    new-instance v0, Lio/reactivex/internal/util/j;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/j;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Lio/reactivex/parallel/a;->G(Ln7/c;)Lio/reactivex/j;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method protected final U([Lorg/reactivestreams/d;)Z
    .locals 5
    .param p1    # [Lorg/reactivestreams/d;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/d<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/parallel/a;->F()I

    move-result v0

    .line 2
    array-length v1, p1

    if-eq v1, v0, :cond_1

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parallelism = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subscribers = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 4
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    .line 5
    invoke-static {v1, v4}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lio/reactivex/parallel/b;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/parallel/b;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/parallel/b<",
            "TT;TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/parallel/b;

    invoke-interface {p1, p0}, Lio/reactivex/parallel/b;->a(Lio/reactivex/parallel/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/concurrent/Callable;Ln7/b;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p2    # Ln7/b;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TC;>;",
            "Ln7/b<",
            "-TC;-TT;>;)",
            "Lio/reactivex/parallel/a<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "collectionSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/a;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/a;-><init>(Lio/reactivex/parallel/a;Ljava/util/concurrent/Callable;Ln7/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lio/reactivex/parallel/c;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Lio/reactivex/parallel/c;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/parallel/c<",
            "TT;TU;>;)",
            "Lio/reactivex/parallel/a<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "composer is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/parallel/c;

    invoke-interface {p1, p0}, Lio/reactivex/parallel/c;->a(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ln7/o;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/reactivex/parallel/a;->e(Ln7/o;I)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ln7/o;I)Lio/reactivex/parallel/a;
    .locals 2
    .param p1    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;I)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/b;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/parallel/b;-><init>(Lio/reactivex/parallel/a;Ln7/o;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ln7/o;IZ)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;IZ)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/b;

    if-eqz p3, :cond_0

    sget-object p3, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p3, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/parallel/b;-><init>(Lio/reactivex/parallel/a;Ln7/o;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ln7/o;Z)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;Z)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/parallel/a;->f(Ln7/o;IZ)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ln7/g;)Lio/reactivex/parallel/a;
    .locals 11
    .param p1    # Ln7/g;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "-TT;>;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "onAfterNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/l;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v5

    sget-object v10, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/functions/a;->g:Ln7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/l;-><init>(Lio/reactivex/parallel/a;Ln7/g;Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/g;Ln7/q;Ln7/a;)V

    .line 6
    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ln7/a;)Lio/reactivex/parallel/a;
    .locals 11
    .param p1    # Ln7/a;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/a;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "onAfterTerminate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/l;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v5

    sget-object v10, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    .line 6
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/functions/a;->g:Ln7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/l;-><init>(Lio/reactivex/parallel/a;Ln7/g;Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/g;Ln7/q;Ln7/a;)V

    .line 7
    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ln7/a;)Lio/reactivex/parallel/a;
    .locals 11
    .param p1    # Ln7/a;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/a;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "onCancel is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/l;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v5

    sget-object v7, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    .line 6
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/functions/a;->g:Ln7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v7

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/l;-><init>(Lio/reactivex/parallel/a;Ln7/g;Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/g;Ln7/q;Ln7/a;)V

    .line 7
    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ln7/a;)Lio/reactivex/parallel/a;
    .locals 11
    .param p1    # Ln7/a;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/a;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "onComplete is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/l;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v5

    sget-object v10, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    .line 6
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/functions/a;->g:Ln7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/l;-><init>(Lio/reactivex/parallel/a;Ln7/g;Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/g;Ln7/q;Ln7/a;)V

    .line 7
    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ln7/g;)Lio/reactivex/parallel/a;
    .locals 11
    .param p1    # Ln7/g;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "onError is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/l;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v4

    sget-object v10, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/functions/a;->g:Ln7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/l;-><init>(Lio/reactivex/parallel/a;Ln7/g;Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/g;Ln7/q;Ln7/a;)V

    .line 6
    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ln7/g;)Lio/reactivex/parallel/a;
    .locals 11
    .param p1    # Ln7/g;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "-TT;>;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/l;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v4

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v5

    sget-object v10, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/internal/functions/a;->g:Ln7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/l;-><init>(Lio/reactivex/parallel/a;Ln7/g;Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/g;Ln7/q;Ln7/a;)V

    .line 6
    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ln7/g;Lio/reactivex/parallel/ParallelFailureHandling;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ln7/g;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/parallel/ParallelFailureHandling;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "-TT;>;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/c;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/c;-><init>(Lio/reactivex/parallel/a;Ln7/g;Ln7/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ln7/g;Ln7/c;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ln7/g;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p2    # Ln7/c;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "-TT;>;",
            "Ln7/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/c;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/c;-><init>(Lio/reactivex/parallel/a;Ln7/g;Ln7/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ln7/q;)Lio/reactivex/parallel/a;
    .locals 11
    .param p1    # Ln7/q;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/q;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "onRequest is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/l;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v5

    sget-object v10, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    .line 6
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v8

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, v10

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/l;-><init>(Lio/reactivex/parallel/a;Ln7/g;Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/g;Ln7/q;Ln7/a;)V

    .line 7
    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ln7/g;)Lio/reactivex/parallel/a;
    .locals 11
    .param p1    # Ln7/g;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "-",
            "Lorg/reactivestreams/e;",
            ">;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/l;

    .line 3
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v5

    sget-object v10, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    sget-object v9, Lio/reactivex/internal/functions/a;->g:Ln7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, v10

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/parallel/l;-><init>(Lio/reactivex/parallel/a;Ln7/g;Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/g;Ln7/q;Ln7/a;)V

    .line 6
    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ln7/r;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ln7/r;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/r<",
            "-TT;>;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    const-string v0, "predicate"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/parallel/d;-><init>(Lio/reactivex/parallel/a;Ln7/r;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ln7/r;Lio/reactivex/parallel/ParallelFailureHandling;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ln7/r;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/parallel/ParallelFailureHandling;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/r<",
            "-TT;>;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    const-string v0, "predicate"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/e;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/e;-><init>(Lio/reactivex/parallel/a;Ln7/r;Ln7/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ln7/r;Ln7/c;)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ln7/r;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p2    # Ln7/c;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/r<",
            "-TT;>;",
            "Ln7/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    const-string v0, "predicate"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/parallel/e;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/parallel/e;-><init>(Lio/reactivex/parallel/a;Ln7/r;Ln7/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final u(Ln7/o;)Lio/reactivex/parallel/a;
    .locals 3
    .param p1    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    invoke-static {}, Lio/reactivex/j;->Y()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {p0, p1, v1, v2, v0}, Lio/reactivex/parallel/a;->x(Ln7/o;ZII)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ln7/o;Z)Lio/reactivex/parallel/a;
    .locals 2
    .param p1    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;Z)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    invoke-static {}, Lio/reactivex/j;->Y()I

    move-result v0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/reactivex/parallel/a;->x(Ln7/o;ZII)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final w(Ln7/o;ZI)Lio/reactivex/parallel/a;
    .locals 1
    .param p1    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    invoke-static {}, Lio/reactivex/j;->Y()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/parallel/a;->x(Ln7/o;ZII)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final x(Ln7/o;ZII)Lio/reactivex/parallel/a;
    .locals 7
    .param p1    # Ln7/o;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;ZII)",
            "Lio/reactivex/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 3
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/parallel/f;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/parallel/f;-><init>(Lio/reactivex/parallel/a;Ln7/o;ZII)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->V(Lio/reactivex/parallel/a;)Lio/reactivex/parallel/a;

    move-result-object p1

    return-object p1
.end method
