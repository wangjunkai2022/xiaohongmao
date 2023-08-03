.class public final Lio/reactivex/internal/operators/flowable/x3;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/x3$a;
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
.field final c:Lio/reactivex/h0;

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/h0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/h0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/x3;->c:Lio/reactivex/h0;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/x3;->d:Z

    return-void
.end method


# virtual methods
.method public k6(Lorg/reactivestreams/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/x3;->c:Lio/reactivex/h0;

    invoke-virtual {v0}, Lio/reactivex/h0;->d()Lio/reactivex/h0$c;

    move-result-object v0

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/flowable/x3$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/x3;->d:Z

    invoke-direct {v1, p1, v0, v2, v3}, Lio/reactivex/internal/operators/flowable/x3$a;-><init>(Lorg/reactivestreams/d;Lio/reactivex/h0$c;Lorg/reactivestreams/c;Z)V

    .line 3
    invoke-interface {p1, v1}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/h0$c;->b(Ljava/lang/Runnable;)Lio/reactivex/disposables/c;

    return-void
.end method
