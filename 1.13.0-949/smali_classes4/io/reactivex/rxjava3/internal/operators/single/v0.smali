.class public final Lio/reactivex/rxjava3/internal/operators/single/v0;
.super Lio/reactivex/rxjava3/core/p0;
.source "SingleSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/single/v0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/rxjava3/core/o0;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/v0;Lio/reactivex/rxjava3/core/o0;)V
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
            "Lio/reactivex/rxjava3/core/v0<",
            "+TT;>;",
            "Lio/reactivex/rxjava3/core/o0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/v0;->a:Lio/reactivex/rxjava3/core/v0;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/v0;->b:Lio/reactivex/rxjava3/core/o0;

    return-void
.end method


# virtual methods
.method protected M1(Lio/reactivex/rxjava3/core/s0;)V
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
            "Lio/reactivex/rxjava3/core/s0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/v0$a;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/single/v0;->a:Lio/reactivex/rxjava3/core/v0;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/single/v0$a;-><init>(Lio/reactivex/rxjava3/core/s0;Lio/reactivex/rxjava3/core/v0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/s0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/v0;->b:Lio/reactivex/rxjava3/core/o0;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/o0;->f(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/f;

    move-result-object p1

    .line 4
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/single/v0$a;->b:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/f;)Z

    return-void
.end method
