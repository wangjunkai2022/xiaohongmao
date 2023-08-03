.class public final Lio/reactivex/internal/operators/flowable/b2;
.super Lio/reactivex/j;
.source "FlowableMapPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final b:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;Ln7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b2;->b:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/b2;->c:Ln7/o;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b2;->b:Lorg/reactivestreams/c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/z1$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/b2;->c:Ln7/o;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/z1$b;-><init>(Lorg/reactivestreams/d;Ln7/o;)V

    invoke-interface {v0, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    return-void
.end method
