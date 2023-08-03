.class public final Lio/reactivex/rxjava3/internal/operators/flowable/m4;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableThrottleLatest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/m4$a;
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
            "timeout",
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
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m4;->c:J

    .line 3
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m4;->d:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m4;->e:Lio/reactivex/rxjava3/core/o0;

    .line 5
    iput-boolean p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m4;->f:Z

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 9
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

    new-instance v8, Lio/reactivex/rxjava3/internal/operators/flowable/m4$a;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m4;->c:J

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m4;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m4;->e:Lio/reactivex/rxjava3/core/o0;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v6

    iget-boolean v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/m4;->f:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/rxjava3/internal/operators/flowable/m4$a;-><init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0$c;Z)V

    invoke-virtual {v0, v8}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method
