.class public final Lio/reactivex/rxjava3/internal/operators/flowable/m;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/m$b;,
        Lio/reactivex/rxjava3/internal/operators/flowable/m$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;TC;>;"
    }
.end annotation


# instance fields
.field final c:I

.field final d:I

.field final e:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;IILq7/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "size",
            "skip",
            "bufferSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;II",
            "Lq7/s<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m;->c:I

    .line 3
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m;->d:I

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m;->e:Lq7/s;

    return-void
.end method


# virtual methods
.method public H6(Lorg/reactivestreams/d;)V
    .locals 5
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
            "-TC;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m;->c:I

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m;->d:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/m$a;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m;->e:Lq7/s;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/m$a;-><init>(Lorg/reactivestreams/d;ILq7/s;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/m$c;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m;->c:I

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m;->d:I

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m;->e:Lq7/s;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/m$c;-><init>(Lorg/reactivestreams/d;IILq7/s;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m;->c:I

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m;->d:I

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m;->e:Lq7/s;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/m$b;-><init>(Lorg/reactivestreams/d;IILq7/s;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    :goto_0
    return-void
.end method
