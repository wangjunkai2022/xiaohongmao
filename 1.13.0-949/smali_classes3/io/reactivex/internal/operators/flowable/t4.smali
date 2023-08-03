.class public final Lio/reactivex/internal/operators/flowable/t4;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableWindowBoundary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/t4$a;,
        Lio/reactivex/internal/operators/flowable/t4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/j<",
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
.method public constructor <init>(Lio/reactivex/j;Lorg/reactivestreams/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lorg/reactivestreams/c<",
            "TB;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/t4;->c:Lorg/reactivestreams/c;

    .line 3
    iput p3, p0, Lio/reactivex/internal/operators/flowable/t4;->d:I

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/t4$b;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/t4;->d:I

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/t4$b;-><init>(Lorg/reactivestreams/d;I)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/t4$b;->d()V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/t4;->c:Lorg/reactivestreams/c;

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/t4$b;->c:Lio/reactivex/internal/operators/flowable/t4$a;

    invoke-interface {p1, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
