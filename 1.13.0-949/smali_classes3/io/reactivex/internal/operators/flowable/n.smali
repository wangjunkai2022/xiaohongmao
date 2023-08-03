.class public final Lio/reactivex/internal/operators/flowable/n;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableBufferBoundary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/n$b;,
        Lio/reactivex/internal/operators/flowable/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final d:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field final e:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TOpen;+",
            "Lorg/reactivestreams/c<",
            "+TClose;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lorg/reactivestreams/c;Ln7/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lorg/reactivestreams/c<",
            "+TOpen;>;",
            "Ln7/o<",
            "-TOpen;+",
            "Lorg/reactivestreams/c<",
            "+TClose;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/n;->d:Lorg/reactivestreams/c;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/n;->e:Ln7/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/n;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/n$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/n;->d:Lorg/reactivestreams/c;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/n;->e:Ln7/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/n;->c:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/n$a;-><init>(Lorg/reactivestreams/d;Lorg/reactivestreams/c;Ln7/o;Ljava/util/concurrent/Callable;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    invoke-virtual {p1, v0}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
