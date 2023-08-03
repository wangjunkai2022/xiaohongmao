.class public abstract Lio/reactivex/rxjava3/parallel/a;
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

.method public static C(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/parallel/a;
    .locals 2
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/rxjava3/parallel/a;->E(Lorg/reactivestreams/c;II)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p0

    return-object p0
.end method

.method public static D(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "parallelism"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+TT;>;I)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/parallel/a;->E(Lorg/reactivestreams/c;II)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p0

    return-object p0
.end method

.method public static E(Lorg/reactivestreams/c;II)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
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
            "parallelism",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+TT;>;II)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "parallelism"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/i;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/i;-><init>(Lorg/reactivestreams/c;II)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs F([Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p0    # [Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publishers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/reactivestreams/c<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "publishers is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/h;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/parallel/h;-><init>([Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zero publishers not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Lq7/o;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/parallel/a;->B(Lq7/o;I)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final B(Lq7/o;I)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapper",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;I)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/b0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/jdk8/b0;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/o;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final G(Lq7/o;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TR;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/k;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/k;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final H(Lq7/o;Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapper",
            "errorHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TR;>;",
            "Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/l;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/l;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/o;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final I(Lq7/o;Lq7/c;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapper",
            "errorHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+TR;>;",
            "Lq7/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/l;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/l;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/o;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final J(Lq7/o;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;",
            "Ljava/util/Optional<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/c0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/c0;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final K(Lq7/o;Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapper",
            "errorHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;",
            "Ljava/util/Optional<",
            "+TR;>;>;",
            "Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/d0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/jdk8/d0;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/o;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final L(Lq7/o;Lq7/c;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapper",
            "errorHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;",
            "Ljava/util/Optional<",
            "+TR;>;>;",
            "Lq7/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/d0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/jdk8/d0;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/o;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public abstract M()I
    .annotation runtime Lp7/c;
    .end annotation
.end method

.method public final N(Lq7/c;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lq7/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/c<",
            "TT;TT;TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "reducer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/o;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/o;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final O(Lq7/s;Lq7/c;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialSupplier",
            "reducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "TR;>;",
            "Lq7/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "initialSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/n;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/n;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/s;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final P(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/parallel/a;->Q(Lio/reactivex/rxjava3/core/o0;I)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final Q(Lio/reactivex/rxjava3/core/o0;I)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scheduler",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/o0;",
            "I)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/p;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/p;-><init>(Lio/reactivex/rxjava3/parallel/a;Lio/reactivex/rxjava3/core/o0;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final R()Lio/reactivex/rxjava3/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/parallel/a;->S(I)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0
.end method

.method public final S(I)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "prefetch"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/parallel/j;-><init>(Lio/reactivex/rxjava3/parallel/a;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final T()Lio/reactivex/rxjava3/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/parallel/a;->U(I)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0
.end method

.method public final U(I)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "prefetch"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/parallel/j;-><init>(Lio/reactivex/rxjava3/parallel/a;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final V(Ljava/util/Comparator;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/parallel/a;->W(Ljava/util/Comparator;I)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final W(Ljava/util/Comparator;I)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comparator",
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "comparator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/parallel/a;->M()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    .line 4
    invoke-static {p2}, Lio/reactivex/rxjava3/internal/functions/a;->f(I)Lq7/s;

    move-result-object p2

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ListAddBiConsumer;->instance()Lq7/c;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lio/reactivex/rxjava3/parallel/a;->O(Lq7/s;Lq7/c;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p2

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/internal/util/p;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/util/p;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/parallel/a;->G(Lq7/o;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p2

    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/q;

    invoke-direct {v0, p2, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/q;-><init>(Lio/reactivex/rxjava3/parallel/a;Ljava/util/Comparator;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public abstract X([Lorg/reactivestreams/d;)V
    .param p1    # [Lorg/reactivestreams/d;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->SPECIAL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation
.end method

.method public final Y(Lio/reactivex/rxjava3/parallel/b;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/parallel/b;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/parallel/b<",
            "TT;TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/parallel/b;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/parallel/b;->a(Lio/reactivex/rxjava3/parallel/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final Z(Ljava/util/Comparator;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/parallel/a;->a0(Ljava/util/Comparator;I)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/stream/Collector;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Ljava/util/stream/Collector;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "TT;TA;TR;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "collector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/a0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/a0;-><init>(Lio/reactivex/rxjava3/parallel/a;Ljava/util/stream/Collector;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final a0(Ljava/util/Comparator;I)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comparator",
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Lio/reactivex/rxjava3/core/m<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "comparator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/parallel/a;->M()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    .line 4
    invoke-static {p2}, Lio/reactivex/rxjava3/internal/functions/a;->f(I)Lq7/s;

    move-result-object p2

    invoke-static {}, Lio/reactivex/rxjava3/internal/util/ListAddBiConsumer;->instance()Lq7/c;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lio/reactivex/rxjava3/parallel/a;->O(Lq7/s;Lq7/c;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p2

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/internal/util/p;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/util/p;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/parallel/a;->G(Lq7/o;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p2

    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/util/j;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/util/j;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/parallel/a;->N(Lq7/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lq7/s;Lq7/b;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/b;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collectionSupplier",
            "collector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+TC;>;",
            "Lq7/b<",
            "-TC;-TT;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "collectionSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/a;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/a;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/s;Lq7/b;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method protected final b0([Lorg/reactivestreams/d;)Z
    .locals 5
    .param p1    # [Lorg/reactivestreams/d;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
            "*>;)Z"
        }
    .end annotation

    const-string v0, "subscribers is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/parallel/a;->M()I

    move-result v0

    .line 3
    array-length v1, p1

    if-eq v1, v0, :cond_1

    .line 4
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

    .line 5
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    .line 6
    invoke-static {v1, v4}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lio/reactivex/rxjava3/parallel/c;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/parallel/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "composer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/parallel/c<",
            "TT;TU;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "composer is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/parallel/c;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/parallel/c;->a(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lq7/o;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/parallel/a;->e(Lq7/o;I)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lq7/o;I)Lio/reactivex/rxjava3/parallel/a;
    .locals 2
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapper",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;I)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/b;

    sget-object v1, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/rxjava3/internal/operators/parallel/b;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lq7/o;IZ)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
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
            "mapper",
            "prefetch",
            "tillTheEnd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;IZ)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/b;

    if-eqz p3, :cond_0

    sget-object p3, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p3, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/parallel/b;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/o;ILio/reactivex/rxjava3/internal/util/ErrorMode;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lq7/o;Z)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapper",
            "tillTheEnd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;Z)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/rxjava3/parallel/a;->f(Lq7/o;IZ)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lq7/g;)Lio/reactivex/rxjava3/parallel/a;
    .locals 11
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onAfterNext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onAfterNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/m;

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v5

    sget-object v10, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/rxjava3/internal/functions/a;->g:Lq7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lio/reactivex/rxjava3/internal/operators/parallel/m;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/g;Lq7/q;Lq7/a;)V

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lq7/a;)Lio/reactivex/rxjava3/parallel/a;
    .locals 11
    .param p1    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onAfterTerminate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onAfterTerminate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/m;

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v5

    sget-object v10, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    .line 6
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/rxjava3/internal/functions/a;->g:Lq7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/rxjava3/internal/operators/parallel/m;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/g;Lq7/q;Lq7/a;)V

    .line 7
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lq7/a;)Lio/reactivex/rxjava3/parallel/a;
    .locals 11
    .param p1    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onCancel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onCancel is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/m;

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v5

    sget-object v7, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    .line 6
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/rxjava3/internal/functions/a;->g:Lq7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v7

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/rxjava3/internal/operators/parallel/m;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/g;Lq7/q;Lq7/a;)V

    .line 7
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lq7/a;)Lio/reactivex/rxjava3/parallel/a;
    .locals 11
    .param p1    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onComplete"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onComplete is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/m;

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v5

    sget-object v10, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    .line 6
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/rxjava3/internal/functions/a;->g:Lq7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lio/reactivex/rxjava3/internal/operators/parallel/m;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/g;Lq7/q;Lq7/a;)V

    .line 7
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lq7/g;)Lio/reactivex/rxjava3/parallel/a;
    .locals 11
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onError is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/m;

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v4

    sget-object v10, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/rxjava3/internal/functions/a;->g:Lq7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lio/reactivex/rxjava3/internal/operators/parallel/m;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/g;Lq7/q;Lq7/a;)V

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lq7/g;)Lio/reactivex/rxjava3/parallel/a;
    .locals 11
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onNext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/m;

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v4

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v5

    sget-object v10, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v8

    sget-object v9, Lio/reactivex/rxjava3/internal/functions/a;->g:Lq7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lio/reactivex/rxjava3/internal/operators/parallel/m;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/g;Lq7/q;Lq7/a;)V

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lq7/g;Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onNext",
            "errorHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;",
            "Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/c;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/c;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/g;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lq7/g;Lq7/c;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onNext",
            "errorHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;",
            "Lq7/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/c;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/c;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/g;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lq7/q;)Lio/reactivex/rxjava3/parallel/a;
    .locals 11
    .param p1    # Lq7/q;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/q;",
            ")",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onRequest is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/m;

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v5

    sget-object v10, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    .line 6
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v8

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, v10

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/rxjava3/internal/operators/parallel/m;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/g;Lq7/q;Lq7/a;)V

    .line 7
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lq7/g;)Lio/reactivex/rxjava3/parallel/a;
    .locals 11
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSubscribe"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-",
            "Lorg/reactivestreams/e;",
            ">;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/m;

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v4

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v5

    sget-object v10, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    sget-object v9, Lio/reactivex/rxjava3/internal/functions/a;->g:Lq7/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, v10

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/rxjava3/internal/operators/parallel/m;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/g;Lq7/q;Lq7/a;)V

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lq7/r;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/r;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/r<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/d;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lq7/r;Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/r;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "predicate",
            "errorHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/r<",
            "-TT;>;",
            "Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;",
            ")",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/e;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/e;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/r;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lq7/r;Lq7/c;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/r;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "predicate",
            "errorHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/r<",
            "-TT;>;",
            "Lq7/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/rxjava3/parallel/ParallelFailureHandling;",
            ">;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->PASS_THROUGH:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/e;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/e;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/r;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final u(Lq7/o;)Lio/reactivex/rxjava3/parallel/a;
    .locals 3
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v0

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lio/reactivex/rxjava3/parallel/a;->x(Lq7/o;ZII)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lq7/o;Z)Lio/reactivex/rxjava3/parallel/a;
    .locals 2
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapper",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;Z)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v0

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/rxjava3/parallel/a;->x(Lq7/o;ZII)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lq7/o;ZI)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
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
            "mapper",
            "delayError",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/parallel/a;->x(Lq7/o;ZII)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final x(Lq7/o;ZII)Lio/reactivex/rxjava3/parallel/a;
    .locals 7
    .param p1    # Lq7/o;
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
            "mapper",
            "delayError",
            "maxConcurrency",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;ZII)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 3
    invoke-static {p4, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/f;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/parallel/f;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/o;ZII)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lq7/o;)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/parallel/a;->z(Lq7/o;I)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method

.method public final z(Lq7/o;I)Lio/reactivex/rxjava3/parallel/a;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapper",
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;I)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lp7/a;
        value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/g;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/g;-><init>(Lio/reactivex/rxjava3/parallel/a;Lq7/o;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->V(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;

    move-result-object p1

    return-object p1
.end method
