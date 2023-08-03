.class public final Lio/reactivex/rxjava3/internal/operators/flowable/p4;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableTimeoutTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/p4$d;,
        Lio/reactivex/rxjava3/internal/operators/flowable/p4$a;,
        Lio/reactivex/rxjava3/internal/operators/flowable/p4$b;,
        Lio/reactivex/rxjava3/internal/operators/flowable/p4$e;,
        Lio/reactivex/rxjava3/internal/operators/flowable/p4$c;
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

.field final f:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Lorg/reactivestreams/c;)V
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
            "timeout",
            "unit",
            "scheduler",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Lorg/reactivestreams/c<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p4;->c:J

    .line 3
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p4;->d:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p4;->e:Lio/reactivex/rxjava3/core/o0;

    .line 5
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p4;->f:Lorg/reactivestreams/c;

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 10
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p4;->f:Lorg/reactivestreams/c;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/p4$c;

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p4;->c:J

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p4;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p4;->e:Lio/reactivex/rxjava3/core/o0;

    invoke-virtual {v3}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/reactivex/rxjava3/internal/operators/flowable/p4$c;-><init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0$c;)V

    .line 3
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/p4$c;->c(J)V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/p4$b;

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p4;->c:J

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p4;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p4;->e:Lio/reactivex/rxjava3/core/o0;

    invoke-virtual {v3}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v8

    iget-object v9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p4;->f:Lorg/reactivestreams/c;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lio/reactivex/rxjava3/internal/operators/flowable/p4$b;-><init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0$c;Lorg/reactivestreams/c;)V

    .line 7
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/p4$b;->e(J)V

    .line 9
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    :goto_0
    return-void
.end method
