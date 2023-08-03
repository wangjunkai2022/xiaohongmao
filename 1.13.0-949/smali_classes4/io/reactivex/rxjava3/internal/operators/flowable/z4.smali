.class public final Lio/reactivex/rxjava3/internal/operators/flowable/z4;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableWindowTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;,
        Lio/reactivex/rxjava3/internal/operators/flowable/z4$b;,
        Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/z4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;",
        "Lio/reactivex/rxjava3/core/m<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final c:J

.field final d:J

.field final e:Ljava/util/concurrent/TimeUnit;

.field final f:Lio/reactivex/rxjava3/core/o0;

.field final g:J

.field final h:I

.field final i:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;JIZ)V
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
            "maxSize",
            "bufferSize",
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
            "JIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->c:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->d:J

    .line 4
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->e:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->f:Lio/reactivex/rxjava3/core/o0;

    .line 6
    iput-wide p8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->g:J

    .line 7
    iput p10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->h:I

    .line 8
    iput-boolean p11, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->i:Z

    return-void
.end method

.method static g9(J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to emit the next window (#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") due to lack of requests. Please make sure the downstream is ready to consume windows."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downstream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->c:J

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->g:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v8, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->c:J

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->f:Lio/reactivex/rxjava3/core/o0;

    iget v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->h:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$c;-><init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;I)V

    invoke-virtual {v0, v8}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v11, Lio/reactivex/rxjava3/internal/operators/flowable/z4$b;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->c:J

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->f:Lio/reactivex/rxjava3/core/o0;

    iget v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->h:I

    iget-wide v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->g:J

    iget-boolean v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->i:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$b;-><init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;IJZ)V

    invoke-virtual {v0, v11}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v10, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->c:J

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->d:J

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->f:Lio/reactivex/rxjava3/core/o0;

    .line 6
    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v8

    iget v9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4;->h:I

    move-object v1, v10

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;-><init>(Lorg/reactivestreams/d;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0$c;I)V

    .line 7
    invoke-virtual {v0, v10}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method
