.class public final Lio/reactivex/rxjava3/internal/operators/flowable/s2;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableOnErrorNext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/s2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lorg/reactivestreams/c<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lq7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "nextSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Lq7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lorg/reactivestreams/c<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s2;->c:Lq7/o;

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/s2$a;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/s2;->c:Lq7/o;

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/s2$a;-><init>(Lorg/reactivestreams/d;Lq7/o;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method
