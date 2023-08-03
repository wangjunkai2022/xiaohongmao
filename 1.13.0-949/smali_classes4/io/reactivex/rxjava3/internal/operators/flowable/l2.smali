.class public final Lio/reactivex/rxjava3/internal/operators/flowable/l2;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/l2$b;,
        Lio/reactivex/rxjava3/internal/operators/flowable/l2$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/l2$a;
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
.field final c:Lio/reactivex/rxjava3/core/o0;

.field final d:Z

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/o0;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "scheduler",
            "delayError",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/o0;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l2;->c:Lio/reactivex/rxjava3/core/o0;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l2;->d:Z

    .line 4
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l2;->e:I

    return-void
.end method


# virtual methods
.method public H6(Lorg/reactivestreams/d;)V
    .locals 5
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l2;->c:Lio/reactivex/rxjava3/core/o0;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/o0;->d()Lio/reactivex/rxjava3/core/o0$c;

    move-result-object v0

    .line 2
    instance-of v1, p1, Lio/reactivex/rxjava3/internal/fuseable/c;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/l2$b;

    check-cast p1, Lio/reactivex/rxjava3/internal/fuseable/c;

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l2;->d:Z

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l2;->e:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/l2$b;-><init>(Lio/reactivex/rxjava3/internal/fuseable/c;Lio/reactivex/rxjava3/core/o0$c;ZI)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/l2$c;

    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l2;->d:Z

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/l2;->e:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/l2$c;-><init>(Lorg/reactivestreams/d;Lio/reactivex/rxjava3/core/o0$c;ZI)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    :goto_0
    return-void
.end method
