.class public final Lio/reactivex/rxjava3/internal/operators/observable/l4;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "ObservableWindowTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/l4$d;,
        Lio/reactivex/rxjava3/internal/operators/observable/l4$b;,
        Lio/reactivex/rxjava3/internal/operators/observable/l4$c;,
        Lio/reactivex/rxjava3/internal/operators/observable/l4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/observable/a<",
        "TT;",
        "Lio/reactivex/rxjava3/core/g0<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/rxjava3/core/o0;

.field final f:J

.field final g:I

.field final h:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/g0;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;JIZ)V
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
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "JIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/l0;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->b:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->c:J

    .line 4
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->d:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->e:Lio/reactivex/rxjava3/core/o0;

    .line 6
    iput-wide p8, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->f:J

    .line 7
    iput p10, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->g:I

    .line 8
    iput-boolean p11, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->h:Z

    return-void
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
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
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->b:J

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->f:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v8, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->b:J

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->e:Lio/reactivex/rxjava3/core/o0;

    iget v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->g:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/observable/l4$c;-><init>(Lio/reactivex/rxjava3/core/n0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;I)V

    invoke-interface {v0, v8}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v11, Lio/reactivex/rxjava3/internal/operators/observable/l4$b;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->b:J

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->e:Lio/reactivex/rxjava3/core/o0;

    iget v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->g:I

    iget-wide v8, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->f:J

    iget-boolean v10, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->h:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/rxjava3/internal/operators/observable/l4$b;-><init>(Lio/reactivex/rxjava3/core/n0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;IJZ)V

    invoke-interface {v0, v11}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/l0;

    new-instance v10, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->b:J

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->c:J

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->e:Lio/reactivex/rxjava3/core/o0;

    .line 6
    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v8

    iget v9, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4;->g:I

    move-object v1, v10

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lio/reactivex/rxjava3/internal/operators/observable/l4$d;-><init>(Lio/reactivex/rxjava3/core/n0;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0$c;I)V

    .line 7
    invoke-interface {v0, v10}, Lio/reactivex/rxjava3/core/l0;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
