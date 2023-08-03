.class public final Lio/reactivex/rxjava3/internal/operators/flowable/w4;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableWindowBoundary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/w4$a;,
        Lio/reactivex/rxjava3/internal/operators/flowable/w4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/rxjava3/core/m<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final c:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TB;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lorg/reactivestreams/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "other",
            "capacityHint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Lorg/reactivestreams/c<",
            "TB;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w4;->c:Lorg/reactivestreams/c;

    .line 3
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w4;->d:I

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
            "subscriber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/w4$b;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w4;->d:I

    invoke-direct {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/w4$b;-><init>(Lorg/reactivestreams/d;I)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/w4$b;->d()V

    .line 4
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/w4;->c:Lorg/reactivestreams/c;

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/w4$b;->c:Lio/reactivex/rxjava3/internal/operators/flowable/w4$a;

    invoke-interface {p1, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method
