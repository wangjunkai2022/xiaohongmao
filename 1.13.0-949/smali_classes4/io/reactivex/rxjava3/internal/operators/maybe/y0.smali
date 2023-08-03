.class public final Lio/reactivex/rxjava3/internal/operators/maybe/y0;
.super Lio/reactivex/rxjava3/core/m;
.source "MaybeMergeArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/maybe/y0$a;,
        Lio/reactivex/rxjava3/internal/operators/maybe/y0$c;,
        Lio/reactivex/rxjava3/internal/operators/maybe/y0$d;,
        Lio/reactivex/rxjava3/internal/operators/maybe/y0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:[Lio/reactivex/rxjava3/core/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/rxjava3/core/b0;)V
    .locals 0
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
            "([",
            "Lio/reactivex/rxjava3/core/b0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/y0;->b:[Lio/reactivex/rxjava3/core/b0;

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/y0;->b:[Lio/reactivex/rxjava3/core/b0;

    .line 2
    array-length v1, v0

    .line 3
    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 4
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/maybe/y0$c;

    invoke-direct {v2, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/y0$c;-><init>(I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/maybe/y0$a;

    invoke-direct {v2}, Lio/reactivex/rxjava3/internal/operators/maybe/y0$a;-><init>()V

    .line 6
    :goto_0
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/maybe/y0$b;

    invoke-direct {v3, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/y0$b;-><init>(Lorg/reactivestreams/d;ILio/reactivex/rxjava3/internal/operators/maybe/y0$d;)V

    .line 7
    invoke-interface {p1, v3}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 8
    iget-object p1, v3, Lio/reactivex/rxjava3/internal/operators/maybe/y0$b;->f:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 9
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 10
    invoke-virtual {v3}, Lio/reactivex/rxjava3/internal/operators/maybe/y0$b;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    invoke-interface {v4, v3}, Lio/reactivex/rxjava3/core/b0;->b(Lio/reactivex/rxjava3/core/y;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
