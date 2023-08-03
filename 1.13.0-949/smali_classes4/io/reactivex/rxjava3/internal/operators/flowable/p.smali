.class public final Lio/reactivex/rxjava3/internal/operators/flowable/p;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableBufferTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/p$a;,
        Lio/reactivex/rxjava3/internal/operators/flowable/p$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final c:J

.field final d:J

.field final e:Ljava/util/concurrent/TimeUnit;

.field final f:Lio/reactivex/rxjava3/core/o0;

.field final g:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "TU;>;"
        }
    .end annotation
.end field

.field final h:I

.field final i:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lq7/s;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "timespan",
            "timeskip",
            "unit",
            "scheduler",
            "bufferSupplier",
            "maxSize",
            "restartTimerOnMaxSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Lq7/s<",
            "TU;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->c:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->d:J

    .line 4
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->e:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->f:Lio/reactivex/rxjava3/core/o0;

    .line 6
    iput-object p8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->g:Lq7/s;

    .line 7
    iput p9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->h:I

    .line 8
    iput-boolean p10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->i:Z

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 11
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
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->c:J

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v8, Lio/reactivex/rxjava3/internal/operators/flowable/p$b;

    new-instance v2, Lio/reactivex/rxjava3/subscribers/e;

    invoke-direct {v2, p1}, Lio/reactivex/rxjava3/subscribers/e;-><init>(Lorg/reactivestreams/d;)V

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->g:Lq7/s;

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->c:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->f:Lio/reactivex/rxjava3/core/o0;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/flowable/p$b;-><init>(Lorg/reactivestreams/d;Lq7/s;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-virtual {v0, v8}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->f:Lio/reactivex/rxjava3/core/o0;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v9

    .line 4
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->c:J

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v10, Lio/reactivex/rxjava3/internal/operators/flowable/p$a;

    new-instance v2, Lio/reactivex/rxjava3/subscribers/e;

    invoke-direct {v2, p1}, Lio/reactivex/rxjava3/subscribers/e;-><init>(Lorg/reactivestreams/d;)V

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->g:Lq7/s;

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->c:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->e:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->h:I

    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->i:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/reactivex/rxjava3/internal/operators/flowable/p$a;-><init>(Lorg/reactivestreams/d;Lq7/s;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/rxjava3/core/o0$c;)V

    invoke-virtual {v0, v10}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v10, Lio/reactivex/rxjava3/internal/operators/flowable/p$c;

    new-instance v2, Lio/reactivex/rxjava3/subscribers/e;

    invoke-direct {v2, p1}, Lio/reactivex/rxjava3/subscribers/e;-><init>(Lorg/reactivestreams/d;)V

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->g:Lq7/s;

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->c:J

    iget-wide v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->d:J

    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/reactivex/rxjava3/internal/operators/flowable/p$c;-><init>(Lorg/reactivestreams/d;Lq7/s;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0$c;)V

    invoke-virtual {v0, v10}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method
