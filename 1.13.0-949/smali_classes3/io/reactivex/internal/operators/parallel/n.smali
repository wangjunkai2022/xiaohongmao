.class public final Lio/reactivex/internal/operators/parallel/n;
.super Lio/reactivex/j;
.source "ParallelReduceFull.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/n$c;,
        Lio/reactivex/internal/operators/parallel/n$a;,
        Lio/reactivex/internal/operators/parallel/n$b;
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
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Ln7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;Ln7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "+TT;>;",
            "Ln7/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/n;->b:Lio/reactivex/parallel/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/n;->c:Ln7/c;

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
    new-instance v0, Lio/reactivex/internal/operators/parallel/n$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/n;->b:Lio/reactivex/parallel/a;

    invoke-virtual {v1}, Lio/reactivex/parallel/a;->F()I

    move-result v1

    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/n;->c:Ln7/c;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/parallel/n$b;-><init>(Lorg/reactivestreams/d;ILn7/c;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/n;->b:Lio/reactivex/parallel/a;

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/n$b;->m:[Lio/reactivex/internal/operators/parallel/n$a;

    invoke-virtual {p1, v0}, Lio/reactivex/parallel/a;->Q([Lorg/reactivestreams/d;)V

    return-void
.end method
