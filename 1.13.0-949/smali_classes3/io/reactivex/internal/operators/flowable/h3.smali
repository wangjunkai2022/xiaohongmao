.class public final Lio/reactivex/internal/operators/flowable/h3;
.super Lio/reactivex/j;
.source "FlowableSamplePublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/h3$a;,
        Lio/reactivex/internal/operators/flowable/h3$b;,
        Lio/reactivex/internal/operators/flowable/h3$d;,
        Lio/reactivex/internal/operators/flowable/h3$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
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

.field final c:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "*>;"
        }
    .end annotation
.end field

.field final d:Z


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;Lorg/reactivestreams/c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "TT;>;",
            "Lorg/reactivestreams/c<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h3;->b:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/h3;->c:Lorg/reactivestreams/c;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/h3;->d:Z

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/subscribers/e;

    invoke-direct {v0, p1}, Lio/reactivex/subscribers/e;-><init>(Lorg/reactivestreams/d;)V

    .line 2
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/h3;->d:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/h3;->b:Lorg/reactivestreams/c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/h3$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/h3;->c:Lorg/reactivestreams/c;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/h3$a;-><init>(Lorg/reactivestreams/d;Lorg/reactivestreams/c;)V

    invoke-interface {p1, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/h3;->b:Lorg/reactivestreams/c;

    new-instance v1, Lio/reactivex/internal/operators/flowable/h3$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/h3;->c:Lorg/reactivestreams/c;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/flowable/h3$b;-><init>(Lorg/reactivestreams/d;Lorg/reactivestreams/c;)V

    invoke-interface {p1, v1}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    :goto_0
    return-void
.end method
