.class public final Lio/reactivex/internal/operators/maybe/d1;
.super Lio/reactivex/internal/operators/maybe/a;
.source "MaybeSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/d1$a;,
        Lio/reactivex/internal/operators/maybe/d1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/h0;


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lio/reactivex/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/d1;->b:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method protected q1(Lio/reactivex/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/d1$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/d1$a;-><init>(Lio/reactivex/t;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, v0, Lio/reactivex/internal/operators/maybe/d1$a;->a:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/d1;->b:Lio/reactivex/h0;

    new-instance v2, Lio/reactivex/internal/operators/maybe/d1$b;

    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/a;->a:Lio/reactivex/w;

    invoke-direct {v2, v0, v3}, Lio/reactivex/internal/operators/maybe/d1$b;-><init>(Lio/reactivex/t;Lio/reactivex/w;)V

    invoke-virtual {v1, v2}, Lio/reactivex/h0;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/c;)Z

    return-void
.end method
