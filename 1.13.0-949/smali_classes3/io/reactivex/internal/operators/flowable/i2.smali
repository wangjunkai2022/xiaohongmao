.class public final Lio/reactivex/internal/operators/flowable/i2;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableOnBackpressureBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/i2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:I

.field final d:Z

.field final e:Z

.field final f:Ln7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/j;IZZLn7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;IZZ",
            "Ln7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput p2, p0, Lio/reactivex/internal/operators/flowable/i2;->c:I

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/i2;->d:Z

    .line 4
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/i2;->e:Z

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/i2;->f:Ln7/a;

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v7, Lio/reactivex/internal/operators/flowable/i2$a;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/i2;->c:I

    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/i2;->d:Z

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/i2;->e:Z

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/i2;->f:Ln7/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/i2$a;-><init>(Lorg/reactivestreams/d;IZZLn7/a;)V

    invoke-virtual {v0, v7}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
