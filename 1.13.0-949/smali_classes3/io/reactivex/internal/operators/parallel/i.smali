.class public final Lio/reactivex/internal/operators/parallel/i;
.super Lio/reactivex/j;
.source "ParallelJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/i$a;,
        Lio/reactivex/internal/operators/parallel/i$d;,
        Lio/reactivex/internal/operators/parallel/i$b;,
        Lio/reactivex/internal/operators/parallel/i$c;
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

.field final c:I

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "+TT;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/i;->b:Lio/reactivex/parallel/a;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/parallel/i;->c:I

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/parallel/i;->d:Z

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/i;->d:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/parallel/i$d;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/i;->b:Lio/reactivex/parallel/a;

    invoke-virtual {v1}, Lio/reactivex/parallel/a;->F()I

    move-result v1

    iget v2, p0, Lio/reactivex/internal/operators/parallel/i;->c:I

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/parallel/i$d;-><init>(Lorg/reactivestreams/d;II)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/parallel/i$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/i;->b:Lio/reactivex/parallel/a;

    invoke-virtual {v1}, Lio/reactivex/parallel/a;->F()I

    move-result v1

    iget v2, p0, Lio/reactivex/internal/operators/parallel/i;->c:I

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/parallel/i$b;-><init>(Lorg/reactivestreams/d;II)V

    .line 4
    :goto_0
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/i;->b:Lio/reactivex/parallel/a;

    iget-object v0, v0, Lio/reactivex/internal/operators/parallel/i$c;->b:[Lio/reactivex/internal/operators/parallel/i$a;

    invoke-virtual {p1, v0}, Lio/reactivex/parallel/a;->Q([Lorg/reactivestreams/d;)V

    return-void
.end method
