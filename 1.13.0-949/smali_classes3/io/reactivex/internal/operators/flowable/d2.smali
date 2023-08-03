.class public final Lio/reactivex/internal/operators/flowable/d2;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableMergeWithCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/d2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/d2;->c:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/d2$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/d2$a;-><init>(Lorg/reactivestreams/d;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/d2;->c:Lio/reactivex/g;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/d2$a;->c:Lio/reactivex/internal/operators/flowable/d2$a$a;

    invoke-interface {p1, v0}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    return-void
.end method
