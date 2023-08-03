.class public final Lio/reactivex/rxjava3/internal/operators/observable/p;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableBufferTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/p$a;,
        Lio/reactivex/rxjava3/internal/operators/observable/p$c;,
        Lio/reactivex/rxjava3/internal/operators/observable/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/rxjava3/core/o0;

.field final f:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "TU;>;"
        }
    .end annotation
.end field

.field final g:I

.field final h:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/l0;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lq7/s;IZ)V
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
            "Lio/reactivex/rxjava3/core/l0<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Lq7/s<",
            "TU;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->b:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->c:J

    .line 4
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->d:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->e:Lio/reactivex/rxjava3/core/o0;

    .line 6
    iput-object p8, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->f:Lq7/s;

    .line 7
    iput p9, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->g:I

    .line 8
    iput-boolean p10, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->h:Z

    return-void
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->b:J

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v8, Lio/reactivex/rxjava3/internal/operators/observable/p$b;

    new-instance v2, Lio/reactivex/rxjava3/observers/m;

    invoke-direct {v2, p1}, Lio/reactivex/rxjava3/observers/m;-><init>(Lio/reactivex/rxjava3/core/n0;)V

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->f:Lq7/s;

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->b:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->e:Lio/reactivex/rxjava3/core/o0;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/observable/p$b;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/s;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-interface {v0, v8}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->e:Lio/reactivex/rxjava3/core/o0;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v9

    .line 4
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->b:J

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 5
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v10, Lio/reactivex/rxjava3/internal/operators/observable/p$a;

    new-instance v2, Lio/reactivex/rxjava3/observers/m;

    invoke-direct {v2, p1}, Lio/reactivex/rxjava3/observers/m;-><init>(Lio/reactivex/rxjava3/core/n0;)V

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->f:Lq7/s;

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->b:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->d:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->g:I

    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->h:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/reactivex/rxjava3/internal/operators/observable/p$a;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/s;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/rxjava3/core/o0$c;)V

    invoke-interface {v0, v10}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v10, Lio/reactivex/rxjava3/internal/operators/observable/p$c;

    new-instance v2, Lio/reactivex/rxjava3/observers/m;

    invoke-direct {v2, p1}, Lio/reactivex/rxjava3/observers/m;-><init>(Lio/reactivex/rxjava3/core/n0;)V

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->f:Lq7/s;

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->b:J

    iget-wide v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->c:J

    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/observable/p;->d:Ljava/util/concurrent/TimeUnit;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/reactivex/rxjava3/internal/operators/observable/p$c;-><init>(Lio/reactivex/rxjava3/core/n0;Lq7/s;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0$c;)V

    invoke-interface {v0, v10}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
