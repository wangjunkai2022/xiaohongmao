.class public final Lio/reactivex/internal/operators/observable/n1;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/n1$l;,
        Lio/reactivex/internal/operators/observable/n1$o;,
        Lio/reactivex/internal/operators/observable/n1$b;,
        Lio/reactivex/internal/operators/observable/n1$a;,
        Lio/reactivex/internal/operators/observable/n1$k;,
        Lio/reactivex/internal/operators/observable/n1$p;,
        Lio/reactivex/internal/operators/observable/n1$g;,
        Lio/reactivex/internal/operators/observable/n1$c;,
        Lio/reactivex/internal/operators/observable/n1$e;,
        Lio/reactivex/internal/operators/observable/n1$d;,
        Lio/reactivex/internal/operators/observable/n1$h;,
        Lio/reactivex/internal/operators/observable/n1$i;,
        Lio/reactivex/internal/operators/observable/n1$j;,
        Lio/reactivex/internal/operators/observable/n1$f;,
        Lio/reactivex/internal/operators/observable/n1$m;,
        Lio/reactivex/internal/operators/observable/n1$n;
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
            "Lio/reactivex/e0<",
            "TU;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/n1$c;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/n1$c;-><init>(Ln7/o;)V

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
            "Lio/reactivex/e0<",
            "+TU;>;>;",
            "Ln7/c<",
            "-TT;-TU;+TR;>;)",
            "Ln7/o<",
            "TT;",
            "Lio/reactivex/e0<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/n1$e;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/observable/n1$e;-><init>(Ln7/c;Ln7/o;)V

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
            "Lio/reactivex/e0<",
            "TU;>;>;)",
            "Ln7/o<",
            "TT;",
            "Lio/reactivex/e0<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/n1$f;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/n1$f;-><init>(Ln7/o;)V

    return-object v0
.end method

.method public static d(Lio/reactivex/g0;)Ln7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/g0<",
            "TT;>;)",
            "Ln7/a;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/n1$h;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/n1$h;-><init>(Lio/reactivex/g0;)V

    return-object v0
.end method

.method public static e(Lio/reactivex/g0;)Ln7/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/g0<",
            "TT;>;)",
            "Ln7/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/n1$i;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/n1$i;-><init>(Lio/reactivex/g0;)V

    return-object v0
.end method

.method public static f(Lio/reactivex/g0;)Ln7/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/g0<",
            "TT;>;)",
            "Ln7/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/n1$j;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/n1$j;-><init>(Lio/reactivex/g0;)V

    return-object v0
.end method

.method public static g(Lio/reactivex/z;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/z<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/observables/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/n1$k;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/n1$k;-><init>(Lio/reactivex/z;)V

    return-object v0
.end method

.method public static h(Lio/reactivex/z;I)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/z<",
            "TT;>;I)",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/observables/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/n1$a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/n1$a;-><init>(Lio/reactivex/z;I)V

    return-object v0
.end method

.method public static i(Lio/reactivex/z;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Ljava/util/concurrent/Callable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/z<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/observables/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v7, Lio/reactivex/internal/operators/observable/n1$b;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/n1$b;-><init>(Lio/reactivex/z;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    return-object v7
.end method

.method public static j(Lio/reactivex/z;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)Ljava/util/concurrent/Callable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/z<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/observables/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v6, Lio/reactivex/internal/operators/observable/n1$o;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/n1$o;-><init>(Lio/reactivex/z;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;)V

    return-object v6
.end method

.method public static k(Ln7/o;Lio/reactivex/h0;)Ln7/o;
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
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/e0<",
            "TR;>;>;",
            "Lio/reactivex/h0;",
            ")",
            "Ln7/o<",
            "Lio/reactivex/z<",
            "TT;>;",
            "Lio/reactivex/e0<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/n1$l;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/n1$l;-><init>(Ln7/o;Lio/reactivex/h0;)V

    return-object v0
.end method

.method public static l(Ln7/b;)Ln7/c;
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

    new-instance v0, Lio/reactivex/internal/operators/observable/n1$m;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/n1$m;-><init>(Ln7/b;)V

    return-object v0
.end method

.method public static m(Ln7/g;)Ln7/c;
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

    new-instance v0, Lio/reactivex/internal/operators/observable/n1$n;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/n1$n;-><init>(Ln7/g;)V

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
            "Lio/reactivex/e0<",
            "+TT;>;>;",
            "Lio/reactivex/e0<",
            "+TR;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/n1$p;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/n1$p;-><init>(Ln7/o;)V

    return-object v0
.end method
