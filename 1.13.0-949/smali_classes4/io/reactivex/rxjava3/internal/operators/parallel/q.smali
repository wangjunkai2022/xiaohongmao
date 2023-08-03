.class public final Lio/reactivex/rxjava3/internal/operators/parallel/q;
.super Lio/reactivex/rxjava3/core/m;
.source "ParallelSortedJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/parallel/q$a;,
        Lio/reactivex/rxjava3/internal/operators/parallel/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/parallel/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/parallel/a<",
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
.method public constructor <init>(Lio/reactivex/rxjava3/parallel/a;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/parallel/a<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q;->b:Lio/reactivex/rxjava3/parallel/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q;->c:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 3
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
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q;->b:Lio/reactivex/rxjava3/parallel/a;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/parallel/a;->M()I

    move-result v1

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q;->c:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;-><init>(Lorg/reactivestreams/d;ILjava/util/Comparator;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/q;->b:Lio/reactivex/rxjava3/parallel/a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/parallel/q$b;->b:[Lio/reactivex/rxjava3/internal/operators/parallel/q$a;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/parallel/a;->X([Lorg/reactivestreams/d;)V

    return-void
.end method
