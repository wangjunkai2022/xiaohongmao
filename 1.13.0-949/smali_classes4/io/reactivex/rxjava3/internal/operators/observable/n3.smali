.class public final Lio/reactivex/rxjava3/internal/operators/observable/n3;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/n3$b;,
        Lio/reactivex/rxjava3/internal/operators/observable/n3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/core/o0;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;Lio/reactivex/rxjava3/core/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "scheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/n3;->b:Lio/reactivex/rxjava3/core/o0;

    return-void
.end method


# virtual methods
.method public d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/n3$a;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/n3$a;-><init>(Lio/reactivex/rxjava3/core/n0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n3;->b:Lio/reactivex/rxjava3/core/o0;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/n3$b;

    invoke-direct {v1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/n3$b;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/n3;Lio/reactivex/rxjava3/internal/operators/observable/n3$a;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/o0;->f(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/n3$a;->a(Lio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method
