.class public final Lio/reactivex/internal/operators/observable/v2;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableRetryWhen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/v2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-",
            "Lio/reactivex/z<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lio/reactivex/e0<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Ln7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Ln7/o<",
            "-",
            "Lio/reactivex/z<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lio/reactivex/e0<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/v2;->b:Ln7/o;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/subjects/e;->i()Lio/reactivex/subjects/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/i;->g()Lio/reactivex/subjects/i;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/v2;->b:Ln7/o;

    invoke-interface {v1, v0}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The handler returned a null ObservableSource"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v2, Lio/reactivex/internal/operators/observable/v2$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/observable/v2$a;-><init>(Lio/reactivex/g0;Lio/reactivex/subjects/i;Lio/reactivex/e0;)V

    .line 4
    invoke-interface {p1, v2}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 5
    iget-object p1, v2, Lio/reactivex/internal/operators/observable/v2$a;->e:Lio/reactivex/internal/operators/observable/v2$a$a;

    invoke-interface {v1, p1}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    .line 6
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/v2$a;->d()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/g0;)V

    return-void
.end method
