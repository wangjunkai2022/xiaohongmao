.class public final Lio/reactivex/rxjava3/internal/operators/flowable/q0;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/q0$a;,
        Lio/reactivex/rxjava3/internal/operators/flowable/q0$b;
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
.field final c:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final d:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lq7/a;

.field final f:Lq7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lq7/g;Lq7/g;Lq7/a;Lq7/a;)V
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
            "onNext",
            "onError",
            "onComplete",
            "onAfterTerminate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Lq7/g<",
            "-TT;>;",
            "Lq7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lq7/a;",
            "Lq7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q0;->c:Lq7/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q0;->d:Lq7/g;

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q0;->e:Lq7/a;

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q0;->f:Lq7/a;

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 8
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
    instance-of v0, p1, Lio/reactivex/rxjava3/internal/fuseable/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/q0$a;

    move-object v2, p1

    check-cast v2, Lio/reactivex/rxjava3/internal/fuseable/c;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q0;->c:Lq7/g;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q0;->d:Lq7/g;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q0;->e:Lq7/a;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q0;->f:Lq7/a;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/q0$a;-><init>(Lio/reactivex/rxjava3/internal/fuseable/c;Lq7/g;Lq7/g;Lq7/a;Lq7/a;)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/q0$b;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q0;->c:Lq7/g;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q0;->d:Lq7/g;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q0;->e:Lq7/a;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q0;->f:Lq7/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/operators/flowable/q0$b;-><init>(Lorg/reactivestreams/d;Lq7/g;Lq7/g;Lq7/a;Lq7/a;)V

    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    :goto_0
    return-void
.end method
