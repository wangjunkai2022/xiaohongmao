.class public final Lio/reactivex/rxjava3/internal/operators/flowable/l3;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableSampleTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/l3$a;,
        Lio/reactivex/rxjava3/internal/operators/flowable/l3$b;,
        Lio/reactivex/rxjava3/internal/operators/flowable/l3$c;
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
.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/rxjava3/core/o0;

.field final f:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V
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
            "period",
            "unit",
            "scheduler",
            "emitLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l3;->c:J

    .line 3
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l3;->d:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l3;->e:Lio/reactivex/rxjava3/core/o0;

    .line 5
    iput-boolean p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l3;->f:Z

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 7
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
    new-instance v1, Lio/reactivex/rxjava3/subscribers/e;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/subscribers/e;-><init>(Lorg/reactivestreams/d;)V

    .line 2
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l3;->f:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v6, Lio/reactivex/rxjava3/internal/operators/flowable/l3$a;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l3;->c:J

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l3;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l3;->e:Lio/reactivex/rxjava3/core/o0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/flowable/l3$a;-><init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-virtual {p1, v6}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v6, Lio/reactivex/rxjava3/internal/operators/flowable/l3$b;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l3;->c:J

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l3;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l3;->e:Lio/reactivex/rxjava3/core/o0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/flowable/l3$b;-><init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;)V

    invoke-virtual {p1, v6}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    :goto_0
    return-void
.end method
