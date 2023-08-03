.class public final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$h;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$n;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$b;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$a;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$g;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$o;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$c;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$d;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$k;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$l;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$m;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$f;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$i;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$j;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ln7/o;)Ln7/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Ln7/o<",
            "TT;",
            "Lorg/reactivestreams/c<",
            "TU;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$c;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$c;-><init>(Ln7/o;)V

    return-object v0
.end method

.method public static b(Ln7/o;Ln7/c;)Ln7/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TU;>;>;",
            "Ln7/c<",
            "-TT;-TU;+TR;>;)",
            "Ln7/o<",
            "TT;",
            "Lorg/reactivestreams/c<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$e;-><init>(Ln7/c;Ln7/o;)V

    return-object v0
.end method

.method public static c(Ln7/o;)Ln7/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "TU;>;>;)",
            "Ln7/o<",
            "TT;",
            "Lorg/reactivestreams/c<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$f;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$f;-><init>(Ln7/o;)V

    return-object v0
.end method

.method public static d(Lio/reactivex/j;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/flowables/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$g;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$g;-><init>(Lio/reactivex/j;)V

    return-object v0
.end method

.method public static e(Lio/reactivex/j;I)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;I)",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/flowables/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$a;-><init>(Lio/reactivex/j;I)V

    return-object v0
.end method

.method public static f(Lio/reactivex/j;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Ljava/util/concurrent/Callable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/flowables/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v7, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$b;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$b;-><init>(Lio/reactivex/j;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    return-object v7
.end method

.method public static g(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Ljava/util/concurrent/Callable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/flowables/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v6, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$n;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$n;-><init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    return-object v6
.end method

.method public static h(Ln7/o;Lio/reactivex/h0;)Ln7/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;+",
            "Lorg/reactivestreams/c<",
            "TR;>;>;",
            "Lio/reactivex/h0;",
            ")",
            "Ln7/o<",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lorg/reactivestreams/c<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$h;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$h;-><init>(Ln7/o;Lio/reactivex/h0;)V

    return-object v0
.end method

.method public static i(Ln7/b;)Ln7/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/b<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;>;)",
            "Ln7/c<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;TS;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$i;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$i;-><init>(Ln7/b;)V

    return-object v0
.end method

.method public static j(Ln7/g;)Ln7/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/g<",
            "Lio/reactivex/i<",
            "TT;>;>;)",
            "Ln7/c<",
            "TS;",
            "Lio/reactivex/i<",
            "TT;>;TS;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$j;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$j;-><init>(Ln7/g;)V

    return-object v0
.end method

.method public static k(Lorg/reactivestreams/d;)Ln7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/d<",
            "TT;>;)",
            "Ln7/a;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$k;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$k;-><init>(Lorg/reactivestreams/d;)V

    return-object v0
.end method

.method public static l(Lorg/reactivestreams/d;)Ln7/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/d<",
            "TT;>;)",
            "Ln7/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$l;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$l;-><init>(Lorg/reactivestreams/d;)V

    return-object v0
.end method

.method public static m(Lorg/reactivestreams/d;)Ln7/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/d<",
            "TT;>;)",
            "Ln7/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$m;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$m;-><init>(Lorg/reactivestreams/d;)V

    return-object v0
.end method

.method public static n(Ln7/o;)Ln7/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Ln7/o<",
            "Ljava/util/List<",
            "Lorg/reactivestreams/c<",
            "+TT;>;>;",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$o;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$o;-><init>(Ln7/o;)V

    return-object v0
.end method
