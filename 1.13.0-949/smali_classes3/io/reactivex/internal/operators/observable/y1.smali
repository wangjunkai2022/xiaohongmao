.class public final Lio/reactivex/internal/operators/observable/y1;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableMergeWithCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/y1$a;
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
.field final b:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/z;Lio/reactivex/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Lio/reactivex/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/y1;->b:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/y1$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/y1$a;-><init>(Lio/reactivex/g0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    invoke-interface {p1, v0}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/y1;->b:Lio/reactivex/g;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/y1$a;->c:Lio/reactivex/internal/operators/observable/y1$a$a;

    invoke-interface {p1, v0}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    return-void
.end method
