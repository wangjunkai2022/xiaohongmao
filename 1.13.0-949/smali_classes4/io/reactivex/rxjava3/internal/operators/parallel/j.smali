.class public final Lio/reactivex/rxjava3/internal/operators/parallel/j;
.super Lio/reactivex/rxjava3/core/m;
.source "ParallelJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/parallel/j$a;,
        Lio/reactivex/rxjava3/internal/operators/parallel/j$d;,
        Lio/reactivex/rxjava3/internal/operators/parallel/j$b;,
        Lio/reactivex/rxjava3/internal/operators/parallel/j$c;
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
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/parallel/a;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "prefetch",
            "delayErrors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/parallel/a<",
            "+TT;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j;->b:Lio/reactivex/rxjava3/parallel/a;

    .line 3
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j;->c:I

    .line 4
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j;->d:Z

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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j;->d:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$d;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j;->b:Lio/reactivex/rxjava3/parallel/a;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/parallel/a;->M()I

    move-result v1

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j;->c:I

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/parallel/j$d;-><init>(Lorg/reactivestreams/d;II)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$b;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j;->b:Lio/reactivex/rxjava3/parallel/a;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/parallel/a;->M()I

    move-result v1

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j;->c:I

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/parallel/j$b;-><init>(Lorg/reactivestreams/d;II)V

    .line 4
    :goto_0
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/j;->b:Lio/reactivex/rxjava3/parallel/a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/parallel/j$c;->b:[Lio/reactivex/rxjava3/internal/operators/parallel/j$a;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/parallel/a;->X([Lorg/reactivestreams/d;)V

    return-void
.end method
