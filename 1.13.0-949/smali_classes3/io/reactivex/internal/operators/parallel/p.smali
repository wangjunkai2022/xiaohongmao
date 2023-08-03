.class public final Lio/reactivex/internal/operators/parallel/p;
.super Lio/reactivex/j;
.source "ParallelSortedJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/p$a;,
        Lio/reactivex/internal/operators/parallel/p$b;
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
.field final b:Lio/reactivex/parallel/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/a<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/p;->b:Lio/reactivex/parallel/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/p;->c:Ljava/util/Comparator;

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
    new-instance v0, Lio/reactivex/internal/operators/parallel/p$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/p;->b:Lio/reactivex/parallel/a;

    invoke-virtual {v1}, Lio/reactivex/parallel/a;->F()I

    move-result v1

    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/p;->c:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/parallel/p$b;-><init>(Lorg/reactivestreams/d;ILjava/util/Comparator;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/p;->b:Lio/reactivex/parallel/a;

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/p$b;->b:[Lio/reactivex/internal/operators/parallel/p$a;

    invoke-virtual {p1, v0}, Lio/reactivex/parallel/a;->Q([Lorg/reactivestreams/d;)V

    return-void
.end method
