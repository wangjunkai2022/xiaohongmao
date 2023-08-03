.class public final Lio/reactivex/rxjava3/internal/operators/single/l0;
.super Ljava/lang/Object;
.source "SingleInternalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/single/l0$c;,
        Lio/reactivex/rxjava3/internal/operators/single/l0$d;,
        Lio/reactivex/rxjava3/internal/operators/single/l0$b;,
        Lio/reactivex/rxjava3/internal/operators/single/l0$a;
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

.method public static a()Lq7/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq7/s<",
            "Ljava/util/NoSuchElementException;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/single/l0$a;->a:Lio/reactivex/rxjava3/internal/operators/single/l0$a;

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/l0$c;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/single/l0$c;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static c()Lq7/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lq7/o<",
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lorg/reactivestreams/c<",
            "+TT;>;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/single/l0$b;->a:Lio/reactivex/rxjava3/internal/operators/single/l0$b;

    return-object v0
.end method
