.class public final Lio/reactivex/internal/operators/flowable/x4;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableWithLatestFrom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/x4$a;,
        Lio/reactivex/internal/operators/flowable/x4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Ln7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field final d:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ln7/c;Lorg/reactivestreams/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ln7/c<",
            "-TT;-TU;+TR;>;",
            "Lorg/reactivestreams/c<",
            "+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/x4;->c:Ln7/c;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/x4;->d:Lorg/reactivestreams/c;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/subscribers/e;

    invoke-direct {v0, p1}, Lio/reactivex/subscribers/e;-><init>(Lorg/reactivestreams/d;)V

    .line 2
    new-instance p1, Lio/reactivex/internal/operators/flowable/x4$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/x4;->c:Ln7/c;

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/flowable/x4$b;-><init>(Lorg/reactivestreams/d;Ln7/c;)V

    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/subscribers/e;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x4;->d:Lorg/reactivestreams/c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/x4$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/flowable/x4$a;-><init>(Lio/reactivex/internal/operators/flowable/x4;Lio/reactivex/internal/operators/flowable/x4$b;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {v0, p1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
