.class public final Lio/reactivex/internal/operators/flowable/u3;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableSkipLastTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/u3$a;
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
.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/h0;

.field final f:I

.field final g:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/u3;->c:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/u3;->d:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/u3;->e:Lio/reactivex/h0;

    .line 5
    iput p6, p0, Lio/reactivex/internal/operators/flowable/u3;->f:I

    .line 6
    iput-boolean p7, p0, Lio/reactivex/internal/operators/flowable/u3;->g:Z

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v9, Lio/reactivex/internal/operators/flowable/u3$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/u3;->c:J

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/u3;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/u3;->e:Lio/reactivex/h0;

    iget v7, p0, Lio/reactivex/internal/operators/flowable/u3;->f:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/u3;->g:Z

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/flowable/u3$a;-><init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;IZ)V

    invoke-virtual {v0, v9}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
