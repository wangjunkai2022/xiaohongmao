.class public final Lio/reactivex/internal/operators/observable/d2;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableOnErrorNext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/d2$a;
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
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/e0<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Ln7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Ln7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/e0<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/d2;->b:Ln7/o;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/d2;->c:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/d2$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/d2;->b:Ln7/o;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/d2;->c:Z

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/observable/d2$a;-><init>(Lio/reactivex/g0;Ln7/o;Z)V

    .line 2
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/d2$a;->d:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-interface {p1, v1}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-interface {p1, v0}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method
