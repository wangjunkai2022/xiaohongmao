.class public final Lio/reactivex/internal/operators/flowable/d4;
.super Lio/reactivex/internal/operators/flowable/a;
.source "FlowableTakeLastTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/d4$a;
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

.field final d:J

.field final e:Ljava/util/concurrent/TimeUnit;

.field final f:Lio/reactivex/h0;

.field final g:I

.field final h:Z


# direct methods
.method public constructor <init>(Lio/reactivex/j;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/d4;->c:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/d4;->d:J

    .line 4
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/d4;->e:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/internal/operators/flowable/d4;->f:Lio/reactivex/h0;

    .line 6
    iput p8, p0, Lio/reactivex/internal/operators/flowable/d4;->g:I

    .line 7
    iput-boolean p9, p0, Lio/reactivex/internal/operators/flowable/d4;->h:Z

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/j;

    new-instance v11, Lio/reactivex/internal/operators/flowable/d4$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/d4;->c:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/flowable/d4;->d:J

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/d4;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/d4;->f:Lio/reactivex/h0;

    iget v9, p0, Lio/reactivex/internal/operators/flowable/d4;->g:I

    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/d4;->h:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/flowable/d4$a;-><init>(Lorg/reactivestreams/d;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;IZ)V

    invoke-virtual {v0, v11}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
