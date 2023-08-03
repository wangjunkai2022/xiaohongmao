.class public final Lio/reactivex/internal/operators/maybe/j1;
.super Lio/reactivex/internal/operators/maybe/a;
.source "MaybeTimeoutPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/j1$a;,
        Lio/reactivex/internal/operators/maybe/j1$c;,
        Lio/reactivex/internal/operators/maybe/j1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/w;Lorg/reactivestreams/c;Lio/reactivex/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Lorg/reactivestreams/c<",
            "TU;>;",
            "Lio/reactivex/w<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/j1;->b:Lorg/reactivestreams/c;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/j1;->c:Lio/reactivex/w;

    return-void
.end method


# virtual methods
.method protected q1(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/maybe/j1$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/j1;->c:Lio/reactivex/w;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/maybe/j1$b;-><init>(Lio/reactivex/t;Lio/reactivex/w;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/j1;->b:Lorg/reactivestreams/c;

    iget-object v1, v0, Lio/reactivex/internal/operators/maybe/j1$b;->b:Lio/reactivex/internal/operators/maybe/j1$c;

    invoke-interface {p1, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/a;->a:Lio/reactivex/w;

    invoke-interface {p1, v0}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    return-void
.end method
