.class public final Lio/reactivex/rxjava3/internal/operators/flowable/m2;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableOnBackpressureBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/m2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:I

.field final d:Z

.field final e:Z

.field final f:Lq7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;IZZLq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "bufferSize",
            "unbounded",
            "delayError",
            "onOverflow"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;IZZ",
            "Lq7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m2;->c:I

    .line 3
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m2;->d:Z

    .line 4
    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m2;->e:Z

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m2;->f:Lq7/a;

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 8
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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/m2$a;

    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m2;->c:I

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m2;->d:Z

    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m2;->e:Z

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m2;->f:Lq7/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/m2$a;-><init>(Lorg/reactivestreams/d;IZZLq7/a;)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method
