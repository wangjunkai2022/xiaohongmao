.class public final Lio/reactivex/internal/operators/single/r0;
.super Lio/reactivex/i0;
.source "SingleTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/r0$b;,
        Lio/reactivex/internal/operators/single/r0$a;
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
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o0;Lorg/reactivestreams/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o0<",
            "TT;>;",
            "Lorg/reactivestreams/c<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/single/r0;->a:Lio/reactivex/o0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/single/r0;->b:Lorg/reactivestreams/c;

    return-void
.end method


# virtual methods
.method protected b1(Lio/reactivex/l0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/single/r0$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/r0$a;-><init>(Lio/reactivex/l0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/single/r0;->b:Lorg/reactivestreams/c;

    iget-object v1, v0, Lio/reactivex/internal/operators/single/r0$a;->b:Lio/reactivex/internal/operators/single/r0$b;

    invoke-interface {p1, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/single/r0;->a:Lio/reactivex/o0;

    invoke-interface {p1, v0}, Lio/reactivex/o0;->d(Lio/reactivex/l0;)V

    return-void
.end method
