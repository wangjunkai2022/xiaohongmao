.class public abstract Lio/reactivex/rxjava3/core/v;
.super Ljava/lang/Object;
.source "Maybe.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/b0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/m;->j1(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static B(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/m;->j1(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static C(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;
    .locals 2
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
            "sources",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;I)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/core/m;->l1(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToPublisher;->instance()Lq7/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/m;->d1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static D0(Lq7/a;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "action is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/i0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/i0;-><init>(Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static E(Ljava/lang/Iterable;I)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sources",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;I)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToPublisher;->instance()Lq7/o;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lio/reactivex/rxjava3/core/m;->e1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static E0(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/j0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/j0;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static E2(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/b0;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/rxjava3/core/v;

    if-nez v0, :cond_0

    const-string v0, "onSubscribe is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/r1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/r1;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Maybe) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToPublisher;->instance()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/m;->b1(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static F0(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "completableSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/g;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "completableSource is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/k0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/k0;-><init>(Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static G(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;
    .locals 2
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
            "sources",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;I)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToPublisher;->instance()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lio/reactivex/rxjava3/core/m;->c1(Lq7/o;II)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static G0(Ljava/util/concurrent/CompletionStage;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Ljava/util/concurrent/CompletionStage;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "stage is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/o;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/jdk8/o;-><init>(Ljava/util/concurrent/CompletionStage;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static G2(Lq7/s;Lq7/o;Lq7/g;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/g;
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
            "resourceSupplier",
            "sourceSupplier",
            "resourceCleanup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+TD;>;",
            "Lq7/o<",
            "-TD;+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;",
            "Lq7/g<",
            "-TD;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/v;->H2(Lq7/s;Lq7/o;Lq7/g;Z)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToPublisher;->instance()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/m;->d1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static H0(Ljava/util/concurrent/Future;)Lio/reactivex/rxjava3/core/v;
    .locals 4
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/l0;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/rxjava3/internal/operators/maybe/l0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static H2(Lq7/s;Lq7/o;Lq7/g;Z)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/g;
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
            "resourceSupplier",
            "sourceSupplier",
            "resourceCleanup",
            "eager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+TD;>;",
            "Lq7/o<",
            "-TD;+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;",
            "Lq7/g<",
            "-TD;>;Z)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resourceCleanup is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/t1;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/maybe/t1;-><init>(Lq7/s;Lq7/o;Lq7/g;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/lang/Iterable;I)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sources",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;I)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToPublisher;->instance()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, v1}, Lio/reactivex/rxjava3/core/m;->e1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static I0(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
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
            "future",
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/l0;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/maybe/l0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static I2(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/b0;
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
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/rxjava3/core/v;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/reactivex/rxjava3/core/v;

    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "source is null"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/r1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/r1;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static J(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
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
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToPublisher;->instance()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/m;->d1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static J0(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/v;
    .locals 3
    .param p0    # Lio/reactivex/rxjava3/core/l0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
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

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/r0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/r0;-><init>(Lio/reactivex/rxjava3/core/l0;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static J1(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/b;->a()Lq7/d;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/core/v;->K1(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/d;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static J2(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/n;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p8    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p9    # Lq7/n;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "source5",
            "source6",
            "source7",
            "source8",
            "source9",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT6;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT7;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT8;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT9;>;",
            "Lq7/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 8
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 9
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 10
    invoke-static {p9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {p9}, Lio/reactivex/rxjava3/internal/functions/a;->E(Lq7/n;)Lq7/o;

    move-result-object p9

    const/16 v0, 0x9

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    invoke-static {p9, v0}, Lio/reactivex/rxjava3/core/v;->S2(Lq7/o;[Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static K(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;
    .locals 2
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
            "sources",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;I)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->i3(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToPublisher;->instance()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, v1}, Lio/reactivex/rxjava3/core/m;->e1(Lq7/o;ZII)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static K0(Ljava/util/Optional;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Ljava/util/Optional;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optional"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Optional<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "optional is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lio/reactivex/rxjava3/core/t;->a:Lio/reactivex/rxjava3/core/t;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lio/reactivex/rxjava3/core/u;->a:Lio/reactivex/rxjava3/core/u;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/v;

    return-object p0
.end method

.method public static K1(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/d;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/d;
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
            "source1",
            "source2",
            "isEqual"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lq7/d<",
            "-TT;-TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isEqual is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/w;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/maybe/w;-><init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/d;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method public static K2(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/m;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p8    # Lq7/m;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "source5",
            "source6",
            "source7",
            "source8",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT6;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT7;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT8;>;",
            "Lq7/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 8
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 9
    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-static {p8}, Lio/reactivex/rxjava3/internal/functions/a;->D(Lq7/m;)Lq7/o;

    move-result-object p8

    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    invoke-static {p8, v0}, Lio/reactivex/rxjava3/core/v;->S2(Lq7/o;[Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static L0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/v;
    .locals 3
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
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
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

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/u0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/u0;-><init>(Lorg/reactivestreams/c;J)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static L2(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/l;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p7    # Lq7/l;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "source5",
            "source6",
            "source7",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT6;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT7;>;",
            "Lq7/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 8
    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-static {p7}, Lio/reactivex/rxjava3/internal/functions/a;->C(Lq7/l;)Lq7/o;

    move-result-object p7

    const/4 v0, 0x7

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    invoke-static {p7, v0}, Lio/reactivex/rxjava3/core/v;->S2(Lq7/o;[Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static M0(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/m0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/m0;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static M2(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/k;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p6    # Lq7/k;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "source5",
            "source6",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT5;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT6;>;",
            "Lq7/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 7
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-static {p6}, Lio/reactivex/rxjava3/internal/functions/a;->B(Lq7/k;)Lq7/o;

    move-result-object p6

    const/4 v0, 0x6

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    invoke-static {p6, v0}, Lio/reactivex/rxjava3/core/v;->S2(Lq7/o;[Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static N0(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "single"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "single is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/n0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/n0;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static N2(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/j;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lq7/j;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "source5",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT4;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT5;>;",
            "Lq7/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 6
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {p5}, Lio/reactivex/rxjava3/internal/functions/a;->A(Lq7/j;)Lq7/o;

    move-result-object p5

    const/4 v0, 0x5

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    invoke-static {p5, v0}, Lio/reactivex/rxjava3/core/v;->S2(Lq7/o;[Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static O0(Lq7/s;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/o0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/o0;-><init>(Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static O2(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/i;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lq7/i;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "source3",
            "source4",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT3;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT4;>;",
            "Lq7/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 5
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p4}, Lio/reactivex/rxjava3/internal/functions/a;->z(Lq7/i;)Lq7/o;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, Lio/reactivex/rxjava3/core/v;->S2(Lq7/o;[Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static P2(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/h;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/h;
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
            "source1",
            "source2",
            "source3",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT2;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT3;>;",
            "Lq7/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Lio/reactivex/rxjava3/internal/functions/a;->y(Lq7/h;)Lq7/o;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, Lio/reactivex/rxjava3/core/v;->S2(Lq7/o;[Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static Q2(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/c;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
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
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT1;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT2;>;",
            "Lq7/c<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lio/reactivex/rxjava3/internal/functions/a;->x(Lq7/c;)Lq7/o;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, Lio/reactivex/rxjava3/core/v;->S2(Lq7/o;[Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static R(Lio/reactivex/rxjava3/core/z;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/z;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/z<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
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
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/i;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/i;-><init>(Lio/reactivex/rxjava3/core/z;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static R2(Ljava/lang/Iterable;Lq7/o;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
            "sources",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/v1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/v1;-><init>(Ljava/lang/Iterable;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static S0(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/u0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/u0;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs S2(Lq7/o;[Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # [Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zipper",
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/core/v;->o0()Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    .line 4
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/u1;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/u1;-><init>([Lio/reactivex/rxjava3/core/b0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static T(Lq7/s;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/j;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/j;-><init>(Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static X0(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/core/v;->e1([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static Y0(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
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
            "source1",
            "source2",
            "source3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/core/v;->e1([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static Z0(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/b0;
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
            "source1",
            "source2",
            "source3",
            "source4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/core/v;->e1([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static Z1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/k;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/mixed/k;-><init>(Lorg/reactivestreams/c;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static a1(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/rxjava3/core/m;->O2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static a2(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/k;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/mixed/k;-><init>(Lorg/reactivestreams/c;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static b1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/core/v;->c1(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static c1(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;
    .locals 3
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
            "sources",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;I)",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/d1;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/d1;-><init>(Lorg/reactivestreams/c;Lq7/o;ZI)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/b;-><init>([Lio/reactivex/rxjava3/core/b0;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static d1(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
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
            "Lio/reactivex/rxjava3/core/b0<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
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

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/h0;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/h0;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/core/v;->o0()Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    .line 6
    invoke-static {p0}, Lio/reactivex/rxjava3/core/v;->I2(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/b;-><init>([Lio/reactivex/rxjava3/core/b0;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e1([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/core/m;->m2()Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/o1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/o1;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/y0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/y0;-><init>([Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static varargs f1([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .param p0    # [Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    array-length p0, p0

    const/4 v2, 0x1

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lio/reactivex/rxjava3/core/m;->O2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static g1(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/core/v;->f1([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static h1(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
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
            "source1",
            "source2",
            "source3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/core/v;->f1([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static i1(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/b0;
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
            "source1",
            "source2",
            "source3",
            "source4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/core/v;->f1([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static j1(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;
    .locals 3
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/rxjava3/core/m;->O2(Lq7/o;ZI)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static k1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/core/v;->l1(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static l1(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;
    .locals 3
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
            "sources",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;I)",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/d1;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/d1;-><init>(Lorg/reactivestreams/c;Lq7/o;ZI)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static n1()Lio/reactivex/rxjava3/core/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/maybe/z0;->a:Lio/reactivex/rxjava3/internal/operators/maybe/z0;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public static o0()Lio/reactivex/rxjava3/core/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/maybe/v;->a:Lio/reactivex/rxjava3/internal/operators/maybe/v;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public static p0(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "throwable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/x;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/x;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source1",
            "source2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/core/v;->w([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Lq7/s;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p0    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/y;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/y;-><init>(Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
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
            "source1",
            "source2",
            "source3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/core/v;->w([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static r2(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delay",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/v;->s2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/b0;
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
            "source1",
            "source2",
            "source3",
            "source4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 4
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/core/v;->w([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static s2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;
    .locals 3
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/o0;
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
            "delay",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/n1;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/maybe/n1;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/f;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/f;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
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

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/core/v;->v(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/m;
    .locals 3
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
            "sources",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;I)",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/e;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    sget-object v2, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    invoke-direct {v0, p0, v1, v2, p1}, Lio/reactivex/rxjava3/internal/operators/mixed/e;-><init>(Lorg/reactivestreams/c;Lq7/o;Lio/reactivex/rxjava3/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static varargs w([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/core/m;->m2()Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/o1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/o1;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/d;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/d;-><init>([Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static varargs x([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/core/m;->m2()Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/o1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/o1;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/e;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/e;-><init>([Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static varargs y([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p0    # [Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToPublisher;->instance()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/m;->b1(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method

.method public static varargs z([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->Y2([Ljava/lang/Object;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeToPublisher;->instance()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/m;->d1(Lq7/o;Z)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
            "TU;>;"
        }
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/e0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/e0;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final A1(Lq7/o;)Lio/reactivex/rxjava3/core/m;
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
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/reactivestreams/c<",
            "*>;>;)",
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/v;->A2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->n5(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final A2()Lio/reactivex/rxjava3/core/m;
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

    .line 1
    instance-of v0, p0, Lio/reactivex/rxjava3/internal/fuseable/d;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lio/reactivex/rxjava3/internal/fuseable/d;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/d;->c()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/o1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/o1;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0
.end method

.method public final B0(Lq7/o;)Lio/reactivex/rxjava3/core/m;
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
            "Lio/reactivex/rxjava3/core/m<",
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

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/m;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/m;-><init>(Lio/reactivex/rxjava3/core/v;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final B1()Lio/reactivex/rxjava3/core/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->c()Lq7/r;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2, v0}, Lio/reactivex/rxjava3/core/v;->D1(JLq7/r;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final B2()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/observers/i;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/i;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->W1(Lio/reactivex/rxjava3/core/y;)Lio/reactivex/rxjava3/core/y;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final C0(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
        }
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
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/n;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/n;-><init>(Lio/reactivex/rxjava3/core/v;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final C1(J)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->c()Lq7/r;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/v;->D1(JLq7/r;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final C2()Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/rxjava3/internal/fuseable/f;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lio/reactivex/rxjava3/internal/fuseable/f;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/f;->a()Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/p1;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/p1;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final D1(JLq7/r;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p3    # Lq7/r;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "times",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lq7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/v;->A2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/rxjava3/core/m;->I5(JLq7/r;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/m;->e6()Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final D2()Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/q1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/q1;-><init>(Lio/reactivex/rxjava3/core/b0;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final E1(Lq7/d;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/d;
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
            "Lq7/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/v;->A2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->J5(Lq7/d;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/m;->e6()Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final F1(Lq7/r;)Lio/reactivex/rxjava3/core/v;
    .locals 2
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
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/core/v;->D1(JLq7/r;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final F2(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;
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
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
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

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/s1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/s1;-><init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final G1(Lq7/e;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p1    # Lq7/e;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stop"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/e;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "stop is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->v(Lq7/e;)Lq7/r;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/core/v;->D1(JLq7/r;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final H1(Lq7/o;)Lio/reactivex/rxjava3/core/v;
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
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lorg/reactivestreams/c<",
            "*>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/v;->A2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->M5(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/m;->e6()Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final I1(Lio/reactivex/rxjava3/core/y;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/y;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/y<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/r;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/observers/r;-><init>(Lio/reactivex/rxjava3/core/y;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->b(Lio/reactivex/rxjava3/core/y;)V

    return-void
.end method

.method public final L(Lq7/o;)Lio/reactivex/rxjava3/core/v;
    .locals 0
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
            "Lio/reactivex/rxjava3/core/b0<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/v;->s0(Lq7/o;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final L1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/g;",
            ")",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->A1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/v;->A2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/core/m;->w0(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final M(Lq7/o;)Lio/reactivex/rxjava3/core/a;
    .locals 0
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
            "(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;)",
            "Lio/reactivex/rxjava3/core/a;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/v;->v0(Lq7/o;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final M1(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;)",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/core/v;->I2(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/v;->A2()Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/v;->A2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/core/m;->w0(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final N(Lq7/o;)Lio/reactivex/rxjava3/core/v;
    .locals 0
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
            "Lio/reactivex/rxjava3/core/v0<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/v;->y0(Lq7/o;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final N1(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;)",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/core/p0;->w2(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/p0;->n2()Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/v;->A2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/core/m;->w0(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final O(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/core/v;->q(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final O1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;)",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/v;->A2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->y6(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final P(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/g;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/g;-><init>(Lio/reactivex/rxjava3/core/b0;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final P0()Lio/reactivex/rxjava3/core/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/p0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/p0;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final P1(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/core/g0;->i8(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/v;->C2()Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/g0;->p1(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final Q()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/h;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/h;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final Q0()Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/r0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/r0;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object v0

    return-object v0
.end method

.method public final Q1()Lio/reactivex/rxjava3/disposables/f;
    .locals 3
    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->f:Lq7/g;

    sget-object v2, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/rxjava3/core/v;->T1(Lq7/g;Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object v0

    return-object v0
.end method

.method public final R0()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/t0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/t0;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final R1(Lq7/g;)Lio/reactivex/rxjava3/disposables/f;
    .locals 2
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSuccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/disposables/f;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->f:Lq7/g;

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/v;->T1(Lq7/g;Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method

.method public final S(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/q1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/q1;-><init>(Lio/reactivex/rxjava3/core/b0;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final S1(Lq7/g;Lq7/g;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onSuccess",
            "onError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/disposables/f;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/v;->T1(Lq7/g;Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    return-object p1
.end method

.method public final T0(Lio/reactivex/rxjava3/core/a0;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/a0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lift"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/a0<",
            "+TR;-TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "lift is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/v0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/v0;-><init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/a0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final T1(Lq7/g;Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/a;
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
            "onSuccess",
            "onError",
            "onComplete"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/disposables/f;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onSuccess is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    invoke-direct {v0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lq7/g;Lq7/g;Lq7/a;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->W1(Lio/reactivex/rxjava3/core/y;)Lio/reactivex/rxjava3/core/y;

    move-result-object p1

    check-cast p1, Lio/reactivex/rxjava3/disposables/f;

    return-object p1
.end method

.method public final T2(Lio/reactivex/rxjava3/core/b0;Lq7/c;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/b0;
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
            "other",
            "zipper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TU;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/core/v;->Q2(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lq7/c;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final U(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/v;
    .locals 6
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/v;->W(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final U0(Lq7/o;)Lio/reactivex/rxjava3/core/v;
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
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/w0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/w0;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method protected abstract U1(Lio/reactivex/rxjava3/core/y;)V
    .param p1    # Lio/reactivex/rxjava3/core/y;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/y<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final V(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;
    .locals 6
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/o0;
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
            "time",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/v;->W(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final V0(Lq7/o;)Lio/reactivex/rxjava3/core/v;
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
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
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
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/p;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/jdk8/p;-><init>(Lio/reactivex/rxjava3/core/v;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final V1(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;
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
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
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

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/f1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/f1;-><init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final W(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/v;
    .locals 8
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/o0;
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
            "time",
            "unit",
            "scheduler",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/k;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/maybe/k;-><init>(Lio/reactivex/rxjava3/core/b0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final W0()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/p0<",
            "Lio/reactivex/rxjava3/core/d0<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/x0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/x0;-><init>(Lio/reactivex/rxjava3/core/v;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final W1(Lio/reactivex/rxjava3/core/y;)Lio/reactivex/rxjava3/core/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/rxjava3/core/y<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/v;->b(Lio/reactivex/rxjava3/core/y;)V

    return-object p1
.end method

.method public final X(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/rxjava3/core/v;
    .locals 6
    .param p3    # Ljava/util/concurrent/TimeUnit;
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
            "time",
            "unit",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/v;->W(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final X1(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/g1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/g1;-><init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final Y(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TU;>;)",
            "Lio/reactivex/rxjava3/core/v<",
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

    const-string v0, "delayIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/l;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/l;-><init>(Lio/reactivex/rxjava3/core/b0;Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final Y1(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/v0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/h1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/h1;-><init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final Z(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "time",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/v;->a0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final a0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/o0;
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
            "time",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lio/reactivex/rxjava3/core/m;->S7(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/v;->b0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lio/reactivex/rxjava3/core/y;)V
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/y;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/y<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/plugins/a;->e0(Lio/reactivex/rxjava3/core/v;Lio/reactivex/rxjava3/core/y;)Lio/reactivex/rxjava3/core/y;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/v;->U1(Lio/reactivex/rxjava3/core/y;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw v0

    :catch_0
    move-exception p1

    .line 9
    throw p1
.end method

.method public final b0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscriptionIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TU;>;)",
            "Lio/reactivex/rxjava3/core/v<",
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

    const-string v0, "subscriptionIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/m;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/m;-><init>(Lio/reactivex/rxjava3/core/b0;Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final b2(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "TU;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/i1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/i1;-><init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final c0(Lq7/o;)Lio/reactivex/rxjava3/core/v;
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
            "selector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;",
            "Lio/reactivex/rxjava3/core/d0<",
            "TR;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "selector is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/o;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/o;-><init>(Lio/reactivex/rxjava3/core/v;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final c2(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TU;>;)",
            "Lio/reactivex/rxjava3/core/v<",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/j1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/j1;-><init>(Lio/reactivex/rxjava3/core/b0;Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final d0(Lq7/g;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onAfterSuccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onAfterSuccess is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/q;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/q;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final d2()Lio/reactivex/rxjava3/observers/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/observers/n<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/observers/n;

    invoke-direct {v0}, Lio/reactivex/rxjava3/observers/n;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->b(Lio/reactivex/rxjava3/core/y;)V

    return-object v0
.end method

.method public final e0(Lq7/a;)Lio/reactivex/rxjava3/core/v;
    .locals 9
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
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v8, Lio/reactivex/rxjava3/internal/operators/maybe/e1;

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v2

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v4

    sget-object v7, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    const-string v0, "onAfterTerminate is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lq7/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v7}, Lio/reactivex/rxjava3/internal/operators/maybe/e1;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;)V

    .line 6
    invoke-static {v8}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final e2(Z)Lio/reactivex/rxjava3/observers/n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dispose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/observers/n<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/observers/n;

    invoke-direct {v0}, Lio/reactivex/rxjava3/observers/n;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/observers/n;->dispose()V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->b(Lio/reactivex/rxjava3/core/y;)V

    return-object v0
.end method

.method public final f(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/b0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/core/v;->e([Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final f0(Lq7/a;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onFinally"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/r;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/r;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final f2()Lio/reactivex/rxjava3/core/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/v<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/v;->i2(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/f;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/g;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/g;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->b(Lio/reactivex/rxjava3/core/y;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/g;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final g0(Lq7/a;)Lio/reactivex/rxjava3/core/v;
    .locals 9
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
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v8, Lio/reactivex/rxjava3/internal/operators/maybe/e1;

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v2

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v4

    const-string v0, "onComplete is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lq7/a;

    sget-object v7, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    move-object v0, v8

    move-object v1, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lio/reactivex/rxjava3/internal/operators/maybe/e1;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;)V

    .line 6
    invoke-static {v8}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final g2(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;
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
            "Lio/reactivex/rxjava3/core/v<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/core/v;->i2(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "defaultValue is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/g;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/g;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->b(Lio/reactivex/rxjava3/core/y;)V

    .line 4
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/observers/g;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h0(Lq7/a;)Lio/reactivex/rxjava3/core/v;
    .locals 9
    .param p1    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onDispose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v8, Lio/reactivex/rxjava3/internal/operators/maybe/e1;

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v2

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v4

    sget-object v6, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    const-string v0, "onDispose is null"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lq7/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lio/reactivex/rxjava3/internal/operators/maybe/e1;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;)V

    .line 6
    invoke-static {v8}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final h2(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/v;->i2(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final i()V
    .locals 3
    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->e:Lq7/g;

    sget-object v2, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/rxjava3/core/v;->m(Lq7/g;Lq7/g;Lq7/a;)V

    return-void
.end method

.method public final i0(Lq7/g;)Lio/reactivex/rxjava3/core/v;
    .locals 9
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
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v8, Lio/reactivex/rxjava3/internal/operators/maybe/e1;

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v2

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    const-string v0, "onError is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lq7/g;

    sget-object v7, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lio/reactivex/rxjava3/internal/operators/maybe/e1;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;)V

    .line 5
    invoke-static {v8}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final i2(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/k1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/k1;-><init>(Lio/reactivex/rxjava3/core/b0;Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lio/reactivex/rxjava3/core/y;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/y;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/y<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/d;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/d;-><init>()V

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/y;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->b(Lio/reactivex/rxjava3/core/y;)V

    .line 5
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/observers/d;->b(Lio/reactivex/rxjava3/core/y;)V

    return-void
.end method

.method public final j0(Lq7/b;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/b;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onEvent is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/s;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/s;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/b;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final j2(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/v;->l2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lq7/g;)V
    .locals 2
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSuccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->e:Lq7/g;

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/rxjava3/core/v;->m(Lq7/g;Lq7/g;Lq7/a;)V

    return-void
.end method

.method public final k0(Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onSubscribe",
            "onDispose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-",
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
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

    const-string v0, "onDispose is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/t;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/maybe/t;-><init>(Lio/reactivex/rxjava3/core/v;Lq7/g;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final k2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 7
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/b0;
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
            "timeout",
            "unit",
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    const-string v0, "fallback is null"

    .line 1
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/rxjava3/core/v;->m2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lq7/g;Lq7/g;)V
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onSuccess",
            "onError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/v;->m(Lq7/g;Lq7/g;Lq7/a;)V

    return-void
.end method

.method public final l0(Lq7/g;)Lio/reactivex/rxjava3/core/v;
    .locals 9
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
            "Lio/reactivex/rxjava3/disposables/f;",
            ">;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v8, Lio/reactivex/rxjava3/internal/operators/maybe/e1;

    const-string v0, "onSubscribe is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lq7/g;

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v3

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v4

    sget-object v7, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lio/reactivex/rxjava3/internal/operators/maybe/e1;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;)V

    .line 5
    invoke-static {v8}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final l2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/o0;
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
            "timeout",
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lio/reactivex/rxjava3/core/v;->s2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/v;->n2(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lq7/g;Lq7/g;Lq7/a;)V
    .locals 1
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/a;
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
            "onSuccess",
            "onError",
            "onComplete"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lq7/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onSuccess is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/g;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/g;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->b(Lio/reactivex/rxjava3/core/y;)V

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/observers/g;->b(Lq7/g;Lq7/g;Lq7/a;)V

    return-void
.end method

.method public final m0(Lq7/g;)Lio/reactivex/rxjava3/core/v;
    .locals 9
    .param p1    # Lq7/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSuccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v8, Lio/reactivex/rxjava3/internal/operators/maybe/e1;

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v2

    const-string v0, "onSuccess is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lq7/g;

    .line 4
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v4

    sget-object v7, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lio/reactivex/rxjava3/internal/operators/maybe/e1;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;)V

    .line 5
    invoke-static {v8}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final m1(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/core/v;->X0(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final m2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/b0;
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
            "timeout",
            "unit",
            "scheduler",
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "fallback is null"

    .line 1
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/rxjava3/core/v;->s2(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lio/reactivex/rxjava3/core/v;->o2(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final n()Lio/reactivex/rxjava3/core/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/c;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/c;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Lq7/a;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/a;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onTerminate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onTerminate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/u;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/u;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final n2(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeoutIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "TU;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/l1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/l1;-><init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TU;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->e(Ljava/lang/Class;)Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/v;->U0(Lq7/o;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final o1(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;
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
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
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

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/a1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/a1;-><init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final o2(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeoutIndicator",
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "TU;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "timeoutIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/l1;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/maybe/l1;-><init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lio/reactivex/rxjava3/core/c0;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/c0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transformer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/c0<",
            "-TT;+TR;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "transformer is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/c0;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/c0;->a(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/b0;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/v;->I2(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final p1(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->l(Ljava/lang/Class;)Lq7/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->r0(Lq7/r;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/v;->o(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final p2(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p1    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeoutIndicator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TU;>;)",
            "Lio/reactivex/rxjava3/core/v<",
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

    const-string v0, "timeoutIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/m1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/m1;-><init>(Lio/reactivex/rxjava3/core/b0;Lorg/reactivestreams/c;Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final q1()Lio/reactivex/rxjava3/core/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->c()Lq7/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->r1(Lq7/r;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final q2(Lorg/reactivestreams/c;Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lorg/reactivestreams/c;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeoutIndicator",
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TU;>;",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
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

    const-string v0, "timeoutIndicator is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/m1;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/maybe/m1;-><init>(Lio/reactivex/rxjava3/core/b0;Lorg/reactivestreams/c;Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final r0(Lq7/r;)Lio/reactivex/rxjava3/core/v;
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
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/z;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/z;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final r1(Lq7/r;)Lio/reactivex/rxjava3/core/v;
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
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/b1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/b1;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final s0(Lq7/o;)Lio/reactivex/rxjava3/core/v;
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
            "Lio/reactivex/rxjava3/core/b0<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/h0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/h0;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final s1(Lq7/o;)Lio/reactivex/rxjava3/core/v;
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
            "fallbackSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "fallbackSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/c1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/c1;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final t0(Lq7/o;Lq7/c;)Lio/reactivex/rxjava3/core/v;
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
            "combiner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TU;>;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
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

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/b0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/maybe/b0;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;Lq7/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final t1(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/b0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "fallback is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->n(Ljava/lang/Object;)Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/v;->s1(Lq7/o;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final t2()Lio/reactivex/rxjava3/core/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/v<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/v;->w2(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final u0(Lq7/o;Lq7/o;Lq7/s;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lq7/o;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p3    # Lq7/s;
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
            "onSuccessMapper",
            "onErrorMapper",
            "onCompleteSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TR;>;>;",
            "Lq7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TR;>;>;",
            "Lq7/s<",
            "+",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onSuccessMapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/f0;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/maybe/f0;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;Lq7/o;Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final u1(Lq7/o;)Lio/reactivex/rxjava3/core/v;
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
            "itemSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "itemSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/d1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/d1;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final u2(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;
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
            "Lio/reactivex/rxjava3/core/v<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/core/v;->w2(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final v0(Lq7/o;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Lq7/o<",
            "-TT;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;)",
            "Lio/reactivex/rxjava3/core/a;"
        }
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/c0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/c0;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final v1(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->n(Ljava/lang/Object;)Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/v;->u1(Lq7/o;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final v2(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/v;
    .locals 1
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/v;->w2(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final w0(Lq7/o;)Lio/reactivex/rxjava3/core/g0;
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
            "Lio/reactivex/rxjava3/core/l0<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/g0<",
            "TR;>;"
        }
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/o;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/mixed/o;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final w1()Lio/reactivex/rxjava3/core/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/v<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/p;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/p;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final w2(Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/v;
    .locals 2
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unit",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")",
            "Lio/reactivex/rxjava3/core/v<",
            "Lio/reactivex/rxjava3/schedulers/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/k1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/k1;-><init>(Lio/reactivex/rxjava3/core/b0;Ljava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final x0(Lq7/o;)Lio/reactivex/rxjava3/core/m;
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
            "Lio/reactivex/rxjava3/core/m<",
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

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/p;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/mixed/p;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final x1()Lio/reactivex/rxjava3/core/m;
    .locals 2
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

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/v;->y1(J)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0
.end method

.method public final x2(Lio/reactivex/rxjava3/core/w;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/w;
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
            "Lio/reactivex/rxjava3/core/w<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/w;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/w;->a(Lio/reactivex/rxjava3/core/v;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final y0(Lq7/o;)Lio/reactivex/rxjava3/core/v;
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
            "Lio/reactivex/rxjava3/core/v0<",
            "+TR;>;>;)",
            "Lio/reactivex/rxjava3/core/v<",
            "TR;>;"
        }
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/g0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/g0;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final y1(J)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/v;->A2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/core/m;->l5(J)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final y2()Ljava/util/concurrent/CompletionStage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/jdk8/b;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->W1(Lio/reactivex/rxjava3/core/y;)Lio/reactivex/rxjava3/core/y;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletionStage;

    return-object v0
.end method

.method public final z0(Lq7/o;)Lio/reactivex/rxjava3/core/m;
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
            "Lio/reactivex/rxjava3/core/m<",
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

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/d0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/d0;-><init>(Lio/reactivex/rxjava3/core/b0;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final z1(Lq7/e;)Lio/reactivex/rxjava3/core/m;
    .locals 1
    .param p1    # Lq7/e;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stop"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/e;",
            ")",
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/v;->A2()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->m5(Lq7/e;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final z2(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lio/reactivex/rxjava3/internal/jdk8/b;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/v;->W1(Lio/reactivex/rxjava3/core/y;)Lio/reactivex/rxjava3/core/y;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CompletionStage;

    return-object p1
.end method
