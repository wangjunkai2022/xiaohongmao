.class public final Lio/reactivex/internal/operators/observable/t;
.super Lio/reactivex/i0;
.source "ObservableCollectSingle.java"

# interfaces
.implements Lo7/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TU;>;",
        "Lo7/d<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TU;>;"
        }
    .end annotation
.end field

.field final c:Ln7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/b<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Ljava/util/concurrent/Callable;Ln7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "Ln7/b<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/t;->a:Lio/reactivex/e0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/t;->b:Ljava/util/concurrent/Callable;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/t;->c:Ln7/b;

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/s;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/t;->a:Lio/reactivex/e0;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/t;->b:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/t;->c:Ln7/b;

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/observable/s;-><init>(Lio/reactivex/e0;Ljava/util/concurrent/Callable;Ln7/b;)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method protected b1(Lio/reactivex/l0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initialSupplier returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/t;->a:Lio/reactivex/e0;

    new-instance v2, Lio/reactivex/internal/operators/observable/t$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/t;->c:Ln7/b;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/observable/t$a;-><init>(Lio/reactivex/l0;Ljava/lang/Object;Ln7/b;)V

    invoke-interface {v1, v2}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/l0;)V

    return-void
.end method
