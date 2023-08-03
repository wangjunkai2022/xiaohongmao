.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$m;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$b;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$a;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$g;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$RequestMax;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$e;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$d;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$j;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$k;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$l;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$f;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$h;,
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$i;
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

.method public static a(Lq7/o;)Lq7/o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lq7/o<",
            "TT;",
            "Lorg/reactivestreams/c<",
            "TU;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$c;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$c;-><init>(Lq7/o;)V

    return-object v0
.end method

.method public static b(Lq7/o;Lq7/c;)Lq7/o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mapper",
            "combiner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "+TU;>;>;",
            "Lq7/c<",
            "-TT;-TU;+TR;>;)",
            "Lq7/o<",
            "TT;",
            "Lorg/reactivestreams/c<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$e;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$e;-><init>(Lq7/c;Lq7/o;)V

    return-object v0
.end method

.method public static c(Lq7/o;)Lq7/o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "itemDelay"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/o<",
            "-TT;+",
            "Lorg/reactivestreams/c<",
            "TU;>;>;)",
            "Lq7/o<",
            "TT;",
            "Lorg/reactivestreams/c<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$f;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$f;-><init>(Lq7/o;)V

    return-object v0
.end method

.method public static d(Lio/reactivex/rxjava3/core/m;)Lq7/s;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;)",
            "Lq7/s<",
            "Lio/reactivex/rxjava3/flowables/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$g;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$g;-><init>(Lio/reactivex/rxjava3/core/m;)V

    return-object v0
.end method

.method public static e(Lio/reactivex/rxjava3/core/m;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lq7/s;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "parent",
            "bufferSize",
            "time",
            "unit",
            "scheduler",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lq7/s<",
            "Lio/reactivex/rxjava3/flowables/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v8, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$b;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$b;-><init>(Lio/reactivex/rxjava3/core/m;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    return-object v8
.end method

.method public static f(Lio/reactivex/rxjava3/core/m;IZ)Lq7/s;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "parent",
            "bufferSize",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;IZ)",
            "Lq7/s<",
            "Lio/reactivex/rxjava3/flowables/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$a;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$a;-><init>(Lio/reactivex/rxjava3/core/m;IZ)V

    return-object v0
.end method

.method public static g(Lio/reactivex/rxjava3/core/m;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lq7/s;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "parent",
            "time",
            "unit",
            "scheduler",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)",
            "Lq7/s<",
            "Lio/reactivex/rxjava3/flowables/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$m;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$m;-><init>(Lio/reactivex/rxjava3/core/m;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V

    return-object v7
.end method

.method public static h(Lq7/b;)Lq7/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/b<",
            "TS;",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;>;)",
            "Lq7/c<",
            "TS;",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;TS;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$h;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$h;-><init>(Lq7/b;)V

    return-object v0
.end method

.method public static i(Lq7/g;)Lq7/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lq7/g<",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;>;)",
            "Lq7/c<",
            "TS;",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;TS;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$i;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$i;-><init>(Lq7/g;)V

    return-object v0
.end method

.method public static j(Lorg/reactivestreams/d;)Lq7/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscriber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/d<",
            "TT;>;)",
            "Lq7/a;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$j;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$j;-><init>(Lorg/reactivestreams/d;)V

    return-object v0
.end method

.method public static k(Lorg/reactivestreams/d;)Lq7/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscriber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/d<",
            "TT;>;)",
            "Lq7/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$k;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$k;-><init>(Lorg/reactivestreams/d;)V

    return-object v0
.end method

.method public static l(Lorg/reactivestreams/d;)Lq7/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscriber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/d<",
            "TT;>;)",
            "Lq7/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$l;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableInternalHelper$l;-><init>(Lorg/reactivestreams/d;)V

    return-object v0
.end method
