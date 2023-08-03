.class public abstract Lio/reactivex/rxjava3/core/a;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Ljava/lang/Iterable<",
            "+",
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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/m;->e3(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/m;->V0(Lq7/o;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static A1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
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
            "source"
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
    instance-of v0, p0, Lio/reactivex/rxjava3/core/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lio/reactivex/rxjava3/core/a;

    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/x;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/x;-><init>(Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static B(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;)",
            "Lio/reactivex/rxjava3/core/a;"
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

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/core/a;->C(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static C(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;I)",
            "Lio/reactivex/rxjava3/core/a;"
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

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/core/m;->X0(Lq7/o;ZI)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static E(Lio/reactivex/rxjava3/core/e;)Lio/reactivex/rxjava3/core/a;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/e;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/g;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/g;-><init>(Lio/reactivex/rxjava3/core/e;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static F(Lq7/s;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Lq7/s<",
            "+",
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

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/h;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/h;-><init>(Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static P0(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p0    # Lio/reactivex/rxjava3/core/g;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p1    # Lio/reactivex/rxjava3/core/g;
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
            "(",
            "Lio/reactivex/rxjava3/core/g;",
            "Lio/reactivex/rxjava3/core/g;",
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

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/rxjava3/core/g;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/core/a;->p0([Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/p0;->N0(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/a;->l(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p0

    return-object p0
.end method

.method private S(Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/a;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "onSubscribe",
            "onError",
            "onComplete",
            "onTerminate",
            "onAfterTerminate",
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
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lq7/a;",
            "Lq7/a;",
            "Lq7/a;",
            "Lq7/a;",
            ")",
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

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onTerminate is null"

    .line 4
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 5
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 6
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/k0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lio/reactivex/rxjava3/internal/operators/completable/k0;-><init>(Lio/reactivex/rxjava3/core/g;Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public static V(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/a;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/o;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static W(Lq7/s;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Lq7/s<",
            "+",
            "Ljava/lang/Throwable;",
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

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/p;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/p;-><init>(Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static X(Lq7/a;)Lio/reactivex/rxjava3/core/a;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/q;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/q;-><init>(Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
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

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/r;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/r;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Ljava/util/concurrent/CompletionStage;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "*>;)",
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

    const-string v0, "stage is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/a;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/jdk8/a;-><init>(Ljava/util/concurrent/CompletionStage;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Ljava/util/concurrent/Future;)Lio/reactivex/rxjava3/core/a;
    .locals 1
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
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
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

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/functions/a;->j(Ljava/util/concurrent/Future;)Lq7/a;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/a;->X(Lq7/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static b0(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/a;
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
            "maybe"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/b0<",
            "TT;>;)",
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

    const-string v0, "maybe is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/r0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/r0;-><init>(Lio/reactivex/rxjava3/core/b0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static b1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;)",
            "Lio/reactivex/rxjava3/core/a;"
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/i;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/mixed/i;-><init>(Lorg/reactivestreams/c;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/a;
    .locals 1
    .param p0    # Lio/reactivex/rxjava3/core/l0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;)",
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

    const-string v0, "observable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/s;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/s;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static c1(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;)",
            "Lio/reactivex/rxjava3/core/a;"
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/i;

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/mixed/i;-><init>(Lorg/reactivestreams/c;Lq7/o;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;
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
            "publisher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TT;>;)",
            "Lio/reactivex/rxjava3/core/a;"
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

    const-string v0, "publisher is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/t;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/t;-><init>(Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Ljava/lang/Iterable<",
            "+",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/rxjava3/internal/operators/completable/a;-><init>([Lio/reactivex/rxjava3/core/g;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/core/a;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/u;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/u;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs f([Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/g;
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
    invoke-static {}, Lio/reactivex/rxjava3/core/a;->t()Lio/reactivex/rxjava3/core/a;

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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/a;->A1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/completable/a;-><init>([Lio/reactivex/rxjava3/core/g;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static f0(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/a;
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

    const-string v0, "single is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/v;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/v;-><init>(Lio/reactivex/rxjava3/core/v0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Lq7/s;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Lq7/s<",
            "*>;)",
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

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/w;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/w;-><init>(Lq7/s;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Ljava/lang/Iterable<",
            "+",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/f0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/f0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method private k1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
    .locals 8
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/o0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/completable/o0;-><init>(Lio/reactivex/rxjava3/core/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public static l0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;)",
            "Lio/reactivex/rxjava3/core/a;"
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

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/reactivex/rxjava3/core/a;->n0(Lorg/reactivestreams/c;IZ)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static l1(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/a;
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

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/a;->m1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/a;
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
            "sources",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;I)",
            "Lio/reactivex/rxjava3/core/a;"
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

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/core/a;->n0(Lorg/reactivestreams/c;IZ)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static m1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/a;
    .locals 1
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/p0;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/completable/p0;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method private static n0(Lorg/reactivestreams/c;IZ)Lio/reactivex/rxjava3/core/a;
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
            "sources",
            "maxConcurrency",
            "delayErrors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;IZ)",
            "Lio/reactivex/rxjava3/core/a;"
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/b0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/completable/b0;-><init>(Lorg/reactivestreams/c;IZ)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs o0([Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/g;
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
    invoke-static {}, Lio/reactivex/rxjava3/core/a;->t()Lio/reactivex/rxjava3/core/a;

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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/a;->A1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/c0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/c0;-><init>([Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs p0([Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
    .locals 1
    .param p0    # [Lio/reactivex/rxjava3/core/g;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/d0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/d0;-><init>([Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Ljava/lang/Iterable<",
            "+",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/e0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/e0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static r0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;)",
            "Lio/reactivex/rxjava3/core/a;"
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

    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/reactivex/rxjava3/core/a;->n0(Lorg/reactivestreams/c;IZ)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static s0(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/a;
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
            "sources",
            "maxConcurrency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;I)",
            "Lio/reactivex/rxjava3/core/a;"
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

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lio/reactivex/rxjava3/core/a;->n0(Lorg/reactivestreams/c;IZ)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method private static s1(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ex"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static t()Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/completable/n;->a:Lio/reactivex/rxjava3/core/a;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object v0

    return-object v0
.end method

.method public static u0()Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/completable/g0;->a:Lio/reactivex/rxjava3/core/a;

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object v0

    return-object v0
.end method

.method public static v(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Ljava/lang/Iterable<",
            "+",
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/f;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/f;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;
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
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;)",
            "Lio/reactivex/rxjava3/core/a;"
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

    invoke-static {p0, v0}, Lio/reactivex/rxjava3/core/a;->x(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static w1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
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
            "onSubscribe"
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
    instance-of v0, p0, Lio/reactivex/rxjava3/core/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/x;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/x;-><init>(Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use of unsafeCreate(Completable)!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x(Lorg/reactivestreams/c;I)Lio/reactivex/rxjava3/core/a;
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
            "sources",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;I)",
            "Lio/reactivex/rxjava3/core/a;"
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/d;-><init>(Lorg/reactivestreams/c;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs y([Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
    .locals 2
    .param p0    # [Lio/reactivex/rxjava3/core/g;
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
    invoke-static {}, Lio/reactivex/rxjava3/core/a;->t()Lio/reactivex/rxjava3/core/a;

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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/a;->A1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/e;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/e;-><init>([Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static y1(Lq7/s;Lq7/o;Lq7/g;)Lio/reactivex/rxjava3/core/a;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "TR;>;",
            "Lq7/o<",
            "-TR;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;",
            "Lq7/g<",
            "-TR;>;)",
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

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/rxjava3/core/a;->z1(Lq7/s;Lq7/o;Lq7/g;Z)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs z([Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
    .locals 3
    .param p0    # [Lio/reactivex/rxjava3/core/g;
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

    .annotation runtime Ljava/lang/SafeVarargs;
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->k()Lq7/o;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/rxjava3/core/m;->X0(Lq7/o;ZI)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static z1(Lq7/s;Lq7/o;Lq7/g;Z)Lio/reactivex/rxjava3/core/a;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
            "TR;>;",
            "Lq7/o<",
            "-TR;+",
            "Lio/reactivex/rxjava3/core/g;",
            ">;",
            "Lq7/g<",
            "-TR;>;Z)",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/t0;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/completable/t0;-><init>(Lq7/s;Lq7/o;Lq7/g;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0(Lq7/o;)Lio/reactivex/rxjava3/core/v;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/j0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/j0;-><init>(Lio/reactivex/rxjava3/core/g;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final B0(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/v;
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
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/functions/a;->n(Ljava/lang/Object;)Lq7/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/a;->A0(Lq7/o;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final C0()Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/j;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/j;-><init>(Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object v0

    return-object v0
.end method

.method public final D(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/b;-><init>(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final D0()Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/m;->k5()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/a;->d0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;

    move-result-object v0

    return-object v0
.end method

.method public final E0(J)Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/core/m;->l5(J)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->d0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final F0(Lq7/e;)Lio/reactivex/rxjava3/core/a;
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

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->m5(Lq7/e;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->d0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final G(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/a;
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/a;->I(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final G0(Lq7/o;)Lio/reactivex/rxjava3/core/a;
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->n5(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->d0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final H(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/a;
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

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/a;->I(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final H0()Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/m;->G5()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/a;->d0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;

    move-result-object v0

    return-object v0
.end method

.method public final I(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/core/a;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/i;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/completable/i;-><init>(Lio/reactivex/rxjava3/core/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final I0(J)Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/rxjava3/core/m;->H5(J)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->d0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final J(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/a;
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

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/core/a;->K(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final J0(JLq7/r;)Lio/reactivex/rxjava3/core/a;
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/rxjava3/core/m;->I5(JLq7/r;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->d0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final K(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/a;
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

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "custom"
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lio/reactivex/rxjava3/core/a;->m1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/core/a;->h(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final K0(Lq7/d;)Lio/reactivex/rxjava3/core/a;
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->J5(Lq7/d;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->d0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final L(Lq7/a;)Lio/reactivex/rxjava3/core/a;
    .locals 7
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

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v1

    .line 2
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v2

    sget-object v6, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    move-object v0, p0

    move-object v3, v6

    move-object v4, v6

    move-object v5, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/core/a;->S(Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final L0(Lq7/r;)Lio/reactivex/rxjava3/core/a;
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->K5(Lq7/r;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->d0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final M(Lq7/a;)Lio/reactivex/rxjava3/core/a;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/l;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/l;-><init>(Lio/reactivex/rxjava3/core/g;Lq7/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final M0(Lq7/e;)Lio/reactivex/rxjava3/core/a;
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

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/core/a;->J0(JLq7/r;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final N(Lq7/a;)Lio/reactivex/rxjava3/core/a;
    .locals 7
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

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v2

    sget-object v6, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/core/a;->S(Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final N0(Lq7/o;)Lio/reactivex/rxjava3/core/a;
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->M5(Lq7/o;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->d0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final O(Lq7/a;)Lio/reactivex/rxjava3/core/a;
    .locals 7
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

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v2

    sget-object v5, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    move-object v0, p0

    move-object v3, v5

    move-object v4, v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/core/a;->S(Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final O0(Lio/reactivex/rxjava3/core/d;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/d;
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

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/q;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/observers/q;-><init>(Lio/reactivex/rxjava3/core/d;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method

.method public final P(Lq7/g;)Lio/reactivex/rxjava3/core/a;
    .locals 7
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v1

    sget-object v6, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/core/a;->S(Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final Q(Lq7/g;)Lio/reactivex/rxjava3/core/a;
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
            "onEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
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

    const-string v0, "onEvent is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/m;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/m;-><init>(Lio/reactivex/rxjava3/core/g;Lq7/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
    .locals 2
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

    new-array v0, v0, [Lio/reactivex/rxjava3/core/g;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/core/a;->y([Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final R(Lq7/g;Lq7/a;)Lio/reactivex/rxjava3/core/a;
    .locals 7
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v2

    sget-object v5, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v5

    move-object v4, v5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/core/a;->S(Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final R0(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/m;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/core/m;->w0(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final S0(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/m;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/core/m;->w0(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final T(Lq7/g;)Lio/reactivex/rxjava3/core/a;
    .locals 7
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

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v2

    sget-object v6, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/core/a;->S(Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final T0(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->p1()Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->y6(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final U(Lq7/a;)Lio/reactivex/rxjava3/core/a;
    .locals 7
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

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v2

    sget-object v6, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    move-object v0, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/core/a;->S(Lq7/g;Lq7/g;Lq7/a;Lq7/a;Lq7/a;Lq7/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final U0(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/a;->t1()Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/g0;->p1(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final V0()Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/EmptyCompletableObserver;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/EmptyCompletableObserver;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    return-object v0
.end method

.method public final W0(Lq7/a;)Lio/reactivex/rxjava3/disposables/f;
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
            "onComplete"
        }
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
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;-><init>(Lq7/a;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    return-object v0
.end method

.method public final X0(Lq7/a;Lq7/g;)Lio/reactivex/rxjava3/disposables/f;
    .locals 1
    .param p1    # Lq7/a;
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
            "onComplete",
            "onError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
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

    const-string v0, "onError is null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    invoke-direct {v0, p2, p1}, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;-><init>(Lq7/g;Lq7/a;)V

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    return-object v0
.end method

.method protected abstract Y0(Lio/reactivex/rxjava3/core/d;)V
    .param p1    # Lio/reactivex/rxjava3/core/d;
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
.end method

.method public final Z0(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/a;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/m0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/m0;-><init>(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final a1(Lio/reactivex/rxjava3/core/d;)Lio/reactivex/rxjava3/core/d;
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
            "Lio/reactivex/rxjava3/core/d;",
            ">(TE;)TE;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    return-object p1
.end method

.method public final d(Lio/reactivex/rxjava3/core/d;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/d;
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

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/plugins/a;->d0(Lio/reactivex/rxjava3/core/a;Lio/reactivex/rxjava3/core/d;)Lio/reactivex/rxjava3/core/d;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/a;->Y0(Lio/reactivex/rxjava3/core/d;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->s1(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    .line 8
    throw p1
.end method

.method public final d1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/n0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/n0;-><init>(Lio/reactivex/rxjava3/core/a;Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final e1()Lio/reactivex/rxjava3/observers/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/observers/n<",
            "Ljava/lang/Void;",
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

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/observers/n;

    invoke-direct {v0}, Lio/reactivex/rxjava3/observers/n;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    return-object v0
.end method

.method public final f1(Z)Lio/reactivex/rxjava3/observers/n;
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
            "Ljava/lang/Void;",
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

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/observers/n;

    invoke-direct {v0}, Lio/reactivex/rxjava3/observers/n;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/rxjava3/observers/n;->dispose()V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    return-object v0
.end method

.method public final g(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
    .locals 2
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

    new-array v0, v0, [Lio/reactivex/rxjava3/core/g;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/core/a;->f([Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final g1(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/a;
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
            "timeout",
            "unit"
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

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/core/a;->k1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
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
            "next"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/b;-><init>(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final h0()Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/y;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/y;-><init>(Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object v0

    return-object v0
.end method

.method public final h1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
    .locals 7
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/g;
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

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/core/a;->k1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lorg/reactivestreams/c;)Lio/reactivex/rxjava3/core/m;
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
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/mixed/b;-><init>(Lio/reactivex/rxjava3/core/g;Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method

.method public final i0(Lio/reactivex/rxjava3/core/f;)Lio/reactivex/rxjava3/core/a;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/f;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onLift"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onLift is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/z;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/z;-><init>(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/f;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final i1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/a;
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
            "timeout",
            "unit",
            "scheduler"
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

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/core/a;->k1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lio/reactivex/rxjava3/core/b0;)Lio/reactivex/rxjava3/core/v;
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
            "next"
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

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/n;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/n;-><init>(Lio/reactivex/rxjava3/core/b0;Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object p1

    return-object p1
.end method

.method public final j0()Lio/reactivex/rxjava3/core/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
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

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/a0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/a0;-><init>(Lio/reactivex/rxjava3/core/a;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object v0

    return-object v0
.end method

.method public final j1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p4    # Lio/reactivex/rxjava3/core/o0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/rxjava3/core/g;
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
    invoke-direct/range {p0 .. p5}, Lio/reactivex/rxjava3/core/a;->k1(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lio/reactivex/rxjava3/core/l0;)Lio/reactivex/rxjava3/core/g0;
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
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/mixed/a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/mixed/a;-><init>(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/l0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lio/reactivex/rxjava3/core/v0;)Lio/reactivex/rxjava3/core/p0;
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
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/v0<",
            "TT;>;)",
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

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/g;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/single/g;-><init>(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final m()V
    .locals 1
    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/g;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/g;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/g;->c()Ljava/lang/Object;

    return-void
.end method

.method public final n(JLjava/util/concurrent/TimeUnit;)Z
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

    .annotation runtime Lp7/c;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/g;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/g;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/observers/g;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final n1(Lio/reactivex/rxjava3/core/b;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/b;
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
            "Lio/reactivex/rxjava3/core/b<",
            "+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/b;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/b;->a(Lio/reactivex/rxjava3/core/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o()V
    .locals 2
    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->c:Lq7/a;

    sget-object v1, Lio/reactivex/rxjava3/internal/functions/a;->e:Lq7/g;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/core/a;->r(Lq7/a;Lq7/g;)V

    return-void
.end method

.method public final o1(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
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

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->a1(Lio/reactivex/rxjava3/core/d;)Lio/reactivex/rxjava3/core/d;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CompletionStage;

    return-object p1
.end method

.method public final p(Lio/reactivex/rxjava3/core/d;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/d;
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
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    .line 5
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/observers/d;->a(Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method

.method public final p1()Lio/reactivex/rxjava3/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/q0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/q0;-><init>(Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0
.end method

.method public final q(Lq7/a;)V
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
            "onComplete"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/a;->e:Lq7/g;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/rxjava3/core/a;->r(Lq7/a;Lq7/g;)V

    return-void
.end method

.method public final q1()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
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

    new-instance v0, Lio/reactivex/rxjava3/internal/observers/i;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/i;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->a1(Lio/reactivex/rxjava3/core/d;)Lio/reactivex/rxjava3/core/d;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final r(Lq7/a;Lq7/g;)V
    .locals 2
    .param p1    # Lq7/a;
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
            "onComplete",
            "onError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/a;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "onComplete is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/g;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/g;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->d(Lio/reactivex/rxjava3/core/d;)V

    .line 5
    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->h()Lq7/g;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lio/reactivex/rxjava3/internal/observers/g;->b(Lq7/g;Lq7/g;Lq7/a;)V

    return-void
.end method

.method public final r1()Lio/reactivex/rxjava3/core/v;
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

    .line 1
    instance-of v0, p0, Lio/reactivex/rxjava3/internal/fuseable/e;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lio/reactivex/rxjava3/internal/fuseable/e;

    invoke-interface {v0}, Lio/reactivex/rxjava3/internal/fuseable/e;->b()Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/k0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/k0;-><init>(Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->Q(Lio/reactivex/rxjava3/core/v;)Lio/reactivex/rxjava3/core/v;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/c;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/c;-><init>(Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object v0

    return-object v0
.end method

.method public final t0(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
    .locals 2
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

    new-array v0, v0, [Lio/reactivex/rxjava3/core/g;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/core/a;->o0([Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final t1()Lio/reactivex/rxjava3/core/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/r0;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/r0;-><init>(Lio/reactivex/rxjava3/core/g;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->R(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lio/reactivex/rxjava3/core/h;)Lio/reactivex/rxjava3/core/a;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/h;
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

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    const-string v0, "transformer is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/core/h;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/h;->a(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/g;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/a;->A1(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final u1(Lq7/s;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .param p1    # Lq7/s;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "completionValueSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/s<",
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

    const-string v0, "completionValueSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/s0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/completable/s0;-><init>(Lio/reactivex/rxjava3/core/g;Lq7/s;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final v0(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/a;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/h0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/h0;-><init>(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final v1(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/p0;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "completionValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
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

    const-string v0, "completionValue is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/s0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/rxjava3/internal/operators/completable/s0;-><init>(Lio/reactivex/rxjava3/core/g;Lq7/s;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->S(Lio/reactivex/rxjava3/core/p0;)Lio/reactivex/rxjava3/core/p0;

    move-result-object p1

    return-object p1
.end method

.method public final w0()Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .annotation runtime Lp7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/internal/functions/a;->c()Lq7/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/a;->x0(Lq7/r;)Lio/reactivex/rxjava3/core/a;

    move-result-object v0

    return-object v0
.end method

.method public final x0(Lq7/r;)Lio/reactivex/rxjava3/core/a;
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

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/i0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/i0;-><init>(Lio/reactivex/rxjava3/core/g;Lq7/r;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final x1(Lio/reactivex/rxjava3/core/o0;)Lio/reactivex/rxjava3/core/a;
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/k;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/k;-><init>(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/o0;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final y0(Lq7/o;)Lio/reactivex/rxjava3/core/a;
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

    const-string v0, "fallbackSupplier is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/l0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/l0;-><init>(Lio/reactivex/rxjava3/core/g;Lq7/o;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->O(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method

.method public final z0(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/a;
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
            "fallback"
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

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/a;->y0(Lq7/o;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method
