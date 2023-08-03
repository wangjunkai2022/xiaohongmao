.class public abstract Lio/reactivex/a;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lio/reactivex/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/util/concurrent/Callable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "completableSupplier"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/h;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/h;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method private M(Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/a;Ln7/a;)Lio/reactivex/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "-",
            "Lio/reactivex/disposables/c;",
            ">;",
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ln7/a;",
            "Ln7/a;",
            "Ln7/a;",
            "Ln7/a;",
            ")",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onTerminate is null"

    .line 4
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 5
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 6
    invoke-static {p6, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lio/reactivex/internal/operators/completable/i0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/completable/i0;-><init>(Lio/reactivex/g;Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/a;Ln7/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public static P(Ljava/lang/Throwable;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "error is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/o;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static Q(Ljava/util/concurrent/Callable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/p;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/p;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static R(Ln7/a;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/q;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/q;-><init>(Ln7/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static S(Ljava/util/concurrent/Callable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "callable is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/r;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/r;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method private S0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)Lio/reactivex/a;
    .locals 8
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/m0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/completable/m0;-><init>(Lio/reactivex/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public static T(Ljava/util/concurrent/Future;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/internal/functions/a;->j(Ljava/util/concurrent/Future;)Ln7/a;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/a;->R(Ln7/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static T0(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/a;->U0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static U(Lio/reactivex/w;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "TT;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "maybe is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/p0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/p0;-><init>(Lio/reactivex/w;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static U0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/n0;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/completable/n0;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static V(Lio/reactivex/e0;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e0<",
            "TT;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "observable is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/s;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/s;-><init>(Lio/reactivex/e0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static W(Lorg/reactivestreams/c;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TT;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "publisher is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/t;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/t;-><init>(Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static X(Ljava/lang/Runnable;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "run is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/u;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/u;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Lio/reactivex/o0;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/o0<",
            "TT;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "single is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/v;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/v;-><init>(Lio/reactivex/o0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method private static Y0(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static c0(Ljava/lang/Iterable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/e0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/e0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static c1(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/reactivex/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/w;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/w;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use of unsafeCreate(Completable)!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d0(Lorg/reactivestreams/c;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/reactivex/a;->f0(Lorg/reactivestreams/c;IZ)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Iterable;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/completable/a;-><init>([Lio/reactivex/g;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Lorg/reactivestreams/c;I)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/g;",
            ">;I)",
            "Lio/reactivex/a;"
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

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/reactivex/a;->f0(Lorg/reactivestreams/c;IZ)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static e1(Ljava/util/concurrent/Callable;Ln7/o;Ln7/g;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Ln7/o<",
            "-TR;+",
            "Lio/reactivex/g;",
            ">;",
            "Ln7/g<",
            "-TR;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/a;->f1(Ljava/util/concurrent/Callable;Ln7/o;Ln7/g;Z)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs f([Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/a;->s()Lio/reactivex/a;

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

    invoke-static {p0}, Lio/reactivex/a;->g1(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/completable/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/completable/a;-><init>([Lio/reactivex/g;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method private static f0(Lorg/reactivestreams/c;IZ)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/g;",
            ">;IZ)",
            "Lio/reactivex/a;"
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/a0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/completable/a0;-><init>(Lorg/reactivestreams/c;IZ)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static f1(Ljava/util/concurrent/Callable;Ln7/o;Ln7/g;Z)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Ln7/o<",
            "-TR;+",
            "Lio/reactivex/g;",
            ">;",
            "Ln7/g<",
            "-TR;>;Z)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "completableFunction is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    .line 3
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/completable/r0;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/completable/r0;-><init>(Ljava/util/concurrent/Callable;Ln7/o;Ln7/g;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs g0([Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/a;->s()Lio/reactivex/a;

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

    invoke-static {p0}, Lio/reactivex/a;->g1(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/completable/b0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/b0;-><init>([Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static g1(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/reactivex/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lio/reactivex/a;

    invoke-static {p0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/completable/w;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/w;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h0([Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/c0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/c0;-><init>([Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static i0(Ljava/lang/Iterable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/d0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/d0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static j0(Lorg/reactivestreams/c;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/a;
        value = .enum Lio/reactivex/annotations/BackpressureKind;->UNBOUNDED_IN:Lio/reactivex/annotations/BackpressureKind;
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/reactivex/a;->f0(Lorg/reactivestreams/c;IZ)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Lorg/reactivestreams/c;I)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/g;",
            ">;I)",
            "Lio/reactivex/a;"
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

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lio/reactivex/a;->f0(Lorg/reactivestreams/c;IZ)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static m0()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/internal/operators/completable/f0;->a:Lio/reactivex/a;

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public static s()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    sget-object v0, Lio/reactivex/internal/operators/completable/n;->a:Lio/reactivex/a;

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public static u(Ljava/lang/Iterable;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/f;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/f;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lorg/reactivestreams/c;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
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

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lio/reactivex/a;->w(Lorg/reactivestreams/c;I)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lorg/reactivestreams/c;I)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+",
            "Lio/reactivex/g;",
            ">;I)",
            "Lio/reactivex/a;"
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

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->h(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/d;-><init>(Lorg/reactivestreams/c;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static varargs x([Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/a;->s()Lio/reactivex/a;

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

    invoke-static {p0}, Lio/reactivex/a;->g1(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/completable/e;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/e;-><init>([Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method

.method public static z(Lio/reactivex/e;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/g;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/g;-><init>(Lio/reactivex/e;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0(Ln7/r;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/a;->W0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->r5(Ln7/r;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->W(Lorg/reactivestreams/c;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final B(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/a;
    .locals 6
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/a;->D(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final B0(Ln7/o;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/o<",
            "-",
            "Lio/reactivex/j<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lorg/reactivestreams/c<",
            "*>;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/a;->W0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->t5(Ln7/o;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->W(Lorg/reactivestreams/c;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final C(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 6
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/a;->D(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final C0(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/g;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 2
    invoke-static {v0}, Lio/reactivex/a;->x([Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final D(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)Lio/reactivex/a;
    .locals 8
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/completable/i;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/completable/i;-><init>(Lio/reactivex/g;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Z)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final D0(Lorg/reactivestreams/c;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TT;>;)",
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

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/a;->W0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->c6(Lorg/reactivestreams/c;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final E(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/d;
    .end annotation

    .annotation runtime Lm7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/a;->F(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final E0(Lio/reactivex/z;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/z<",
            "TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/reactivex/a;->Z0()Lio/reactivex/z;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->concatWith(Lio/reactivex/e0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final F(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 0
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/d;
    .end annotation

    .annotation runtime Lm7/g;
        value = "custom"
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lio/reactivex/a;->U0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/reactivex/a;->h(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final F0()Lio/reactivex/disposables/c;
    .locals 1
    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/observers/EmptyCompletableObserver;

    invoke-direct {v0}, Lio/reactivex/internal/observers/EmptyCompletableObserver;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/a;->d(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final G(Ln7/a;)Lio/reactivex/a;
    .locals 7
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v1

    .line 2
    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v2

    sget-object v6, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    move-object v0, p0

    move-object v3, v6

    move-object v4, v6

    move-object v5, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->M(Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/a;Ln7/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final G0(Ln7/a;)Lio/reactivex/disposables/c;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "onComplete is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Ln7/a;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/a;->d(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final H(Ln7/a;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/l;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/l;-><init>(Lio/reactivex/g;Ln7/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final H0(Ln7/a;Ln7/g;)Lio/reactivex/disposables/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/a;",
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/disposables/c;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "onError is null"

    .line 1
    invoke-static {p2, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 2
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v0, p2, p1}, Lio/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Ln7/g;Ln7/a;)V

    .line 4
    invoke-virtual {p0, v0}, Lio/reactivex/a;->d(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final I(Ln7/a;)Lio/reactivex/a;
    .locals 7
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v2

    sget-object v6, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->M(Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/a;Ln7/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method protected abstract I0(Lio/reactivex/d;)V
.end method

.method public final J(Ln7/a;)Lio/reactivex/a;
    .locals 7
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v2

    sget-object v5, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    move-object v0, p0

    move-object v3, v5

    move-object v4, v5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->M(Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/a;Ln7/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final J0(Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/k0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/k0;-><init>(Lio/reactivex/g;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final K(Ln7/g;)Lio/reactivex/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v1

    sget-object v6, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->M(Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/a;Ln7/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final K0(Lio/reactivex/d;)Lio/reactivex/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/d;",
            ">(TE;)TE;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/a;->d(Lio/reactivex/d;)V

    return-object p1
.end method

.method public final L(Ln7/g;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "onEvent is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/m;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/m;-><init>(Lio/reactivex/g;Ln7/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final L0(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/l0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/l0;-><init>(Lio/reactivex/a;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final M0()Lio/reactivex/observers/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/m<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/m;

    invoke-direct {v0}, Lio/reactivex/observers/m;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/a;->d(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final N(Ln7/g;)Lio/reactivex/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/g<",
            "-",
            "Lio/reactivex/disposables/c;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v2

    sget-object v6, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->M(Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/a;Ln7/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final N0(Z)Lio/reactivex/observers/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/observers/m<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/m;

    invoke-direct {v0}, Lio/reactivex/observers/m;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/observers/m;->cancel()V

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/a;->d(Lio/reactivex/d;)V

    return-object v0
.end method

.method public final O(Ln7/a;)Lio/reactivex/a;
    .locals 7
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/functions/a;->h()Ln7/g;

    move-result-object v2

    sget-object v6, Lio/reactivex/internal/functions/a;->c:Ln7/a;

    move-object v0, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lio/reactivex/a;->M(Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/a;Ln7/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final O0(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/a;
    .locals 6
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/a;->S0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final P0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/g;)Lio/reactivex/a;
    .locals 7
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "io.reactivex:computation"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p4, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/a;->S0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 6
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/a;->S0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final R0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "custom"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p5, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct/range {p0 .. p5}, Lio/reactivex/a;->S0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final V0(Ln7/o;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-",
            "Lio/reactivex/a;",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
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

.method public final W0()Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
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

    .line 1
    instance-of v0, p0, Lo7/b;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lo7/b;

    invoke-interface {v0}, Lo7/b;->c()Lio/reactivex/j;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/completable/o0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/o0;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final X0()Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p0, Lo7/c;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lo7/c;

    invoke-interface {v0}, Lo7/c;->b()Lio/reactivex/q;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/maybe/j0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/j0;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->Q(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object v0

    return-object v0
.end method

.method public final Z()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/completable/x;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/x;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final Z0()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    .line 1
    instance-of v0, p0, Lo7/d;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lo7/d;

    invoke-interface {v0}, Lo7/d;->a()Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/completable/p0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/p0;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final a0(Lio/reactivex/f;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "onLift is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/y;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/y;-><init>(Lio/reactivex/g;Lio/reactivex/f;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final a1(Ljava/util/concurrent/Callable;)Lio/reactivex/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "completionValueSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/q0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/completable/q0;-><init>(Lio/reactivex/g;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final b0()Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/i0<",
            "Lio/reactivex/y<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/d;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/completable/z;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/z;-><init>(Lio/reactivex/a;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object v0

    return-object v0
.end method

.method public final b1(Ljava/lang/Object;)Lio/reactivex/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "completionValue is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/q0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/internal/operators/completable/q0;-><init>(Lio/reactivex/g;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lio/reactivex/d;)V
    .locals 1
    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lio/reactivex/plugins/a;->d0(Lio/reactivex/a;Lio/reactivex/d;)Lio/reactivex/d;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/a;->I0(Lio/reactivex/d;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {p1}, Lio/reactivex/a;->Y0(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    .line 8
    throw p1
.end method

.method public final d1(Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/k;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/k;-><init>(Lio/reactivex/g;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/g;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lio/reactivex/a;->f([Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/b;-><init>(Lio/reactivex/g;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lorg/reactivestreams/c;)Lio/reactivex/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "TT;>;)",
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

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/mixed/b;-><init>(Lio/reactivex/g;Lorg/reactivestreams/c;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lio/reactivex/w;)Lio/reactivex/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/w<",
            "TT;>;)",
            "Lio/reactivex/q<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/maybe/n;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/maybe/n;-><init>(Lio/reactivex/w;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->Q(Lio/reactivex/q;)Lio/reactivex/q;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lio/reactivex/e0;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/e0<",
            "TT;>;)",
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/mixed/a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/mixed/a;-><init>(Lio/reactivex/g;Lio/reactivex/e0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lio/reactivex/o0;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/o0<",
            "TT;>;)",
            "Lio/reactivex/i0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/single/g;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/single/g;-><init>(Lio/reactivex/o0;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->S(Lio/reactivex/i0;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method public final l0(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 2
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/g;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lio/reactivex/a;->g0([Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lio/reactivex/b;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/reactivex/b;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/b<",
            "+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/b;

    invoke-interface {p1, p0}, Lio/reactivex/b;->a(Lio/reactivex/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n()V
    .locals 1
    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/observers/f;

    invoke-direct {v0}, Lio/reactivex/internal/observers/f;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/a;->d(Lio/reactivex/d;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/observers/f;->b()Ljava/lang/Object;

    return-void
.end method

.method public final n0(Lio/reactivex/h0;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/g0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/g0;-><init>(Lio/reactivex/g;Lio/reactivex/h0;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final o(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/observers/f;

    invoke-direct {v0}, Lio/reactivex/internal/observers/f;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/a;->d(Lio/reactivex/d;)V

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/internal/observers/f;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final o0()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-static {}, Lio/reactivex/internal/functions/a;->c()Ln7/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/a;->p0(Ln7/r;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/f;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/observers/f;

    invoke-direct {v0}, Lio/reactivex/internal/observers/f;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/a;->d(Lio/reactivex/d;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/observers/f;->d()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final p0(Ln7/r;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/h0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/h0;-><init>(Lio/reactivex/g;Ln7/r;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final q(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/f;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p3, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/observers/f;

    invoke-direct {v0}, Lio/reactivex/internal/observers/f;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/a;->d(Lio/reactivex/d;)V

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/internal/observers/f;->e(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public final q0(Ln7/o;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/g;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "errorMapper is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/j0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/j0;-><init>(Lio/reactivex/g;Ln7/o;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final r()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/completable/c;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/c;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final r0()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/completable/j;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/j;-><init>(Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final s0()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/a;->W0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/j;->T4()Lio/reactivex/j;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/a;->W(Lorg/reactivestreams/c;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final t(Lio/reactivex/h;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "transformer is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/h;

    invoke-interface {p1, p0}, Lio/reactivex/h;->a(Lio/reactivex/a;)Lio/reactivex/g;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->g1(Lio/reactivex/g;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final t0(J)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/a;->W0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/j;->U4(J)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->W(Lorg/reactivestreams/c;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final u0(Ln7/e;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/a;->W0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->V4(Ln7/e;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->W(Lorg/reactivestreams/c;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final v0(Ln7/o;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/o<",
            "-",
            "Lio/reactivex/j<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/reactivestreams/c<",
            "*>;>;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/a;->W0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->W4(Ln7/o;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->W(Lorg/reactivestreams/c;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final w0()Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/a;->W0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/j;->n5()Lio/reactivex/j;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/a;->W(Lorg/reactivestreams/c;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final x0(J)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/a;->W0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/reactivex/j;->o5(J)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->W(Lorg/reactivestreams/c;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lio/reactivex/g;)Lio/reactivex/a;
    .locals 1
    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/completable/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/b;-><init>(Lio/reactivex/g;Lio/reactivex/g;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->O(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final y0(JLn7/r;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ln7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/a;->W0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/reactivex/j;->p5(JLn7/r;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->W(Lorg/reactivestreams/c;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final z0(Ln7/d;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation runtime Lm7/g;
        value = "none"
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/a;->W0()Lio/reactivex/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/j;->q5(Ln7/d;)Lio/reactivex/j;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/a;->W(Lorg/reactivestreams/c;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method
