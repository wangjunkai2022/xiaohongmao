.class public final Lio/reactivex/rxjava3/internal/operators/observable/l2;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservablePublishSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/l2$b;,
        Lio/reactivex/rxjava3/internal/operators/observable/l2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lq7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "source",
            "selector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;+",
            "Lio/reactivex/rxjava3/core/l0<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l2;->b:Lq7/o;

    return-void
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 3
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
            "Lio/reactivex/rxjava3/core/n0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/subjects/e;->G8()Lio/reactivex/rxjava3/subjects/e;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l2;->b:Lq7/o;

    invoke-interface {v1, v0}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The selector returned a null ObservableSource"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lio/reactivex/rxjava3/core/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/l2$b;

    invoke-direct {v2, p1}, Lio/reactivex/rxjava3/internal/operators/observable/l2$b;-><init>(Lio/reactivex/rxjava3/core/n0;)V

    .line 4
    invoke-interface {v1, v2}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/l2$a;

    invoke-direct {v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/observable/l2$a;-><init>(Lio/reactivex/rxjava3/subjects/e;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
