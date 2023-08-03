.class public final Lio/reactivex/internal/operators/observable/k3;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/k3$b;,
        Lio/reactivex/internal/operators/observable/k3$a;
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
.field final b:Lio/reactivex/h0;


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lio/reactivex/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/e0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/k3;->b:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/k3$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/k3$a;-><init>(Lio/reactivex/g0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/k3;->b:Lio/reactivex/h0;

    new-instance v1, Lio/reactivex/internal/operators/observable/k3$b;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/observable/k3$b;-><init>(Lio/reactivex/internal/operators/observable/k3;Lio/reactivex/internal/operators/observable/k3$a;)V

    invoke-virtual {p1, v1}, Lio/reactivex/h0;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/k3$a;->a(Lio/reactivex/disposables/c;)V

    return-void
.end method
