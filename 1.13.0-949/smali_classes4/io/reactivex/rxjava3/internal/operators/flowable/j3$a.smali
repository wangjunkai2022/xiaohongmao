.class final Lio/reactivex/rxjava3/internal/operators/flowable/j3$a;
.super Lio/reactivex/rxjava3/internal/operators/flowable/f3$c;
.source "FlowableRetryWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/f3$c<",
        "TT;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final o:J = -0x2531bbef65964705L


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lio/reactivex/rxjava3/processors/c;Lorg/reactivestreams/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "actual",
            "processor",
            "receiver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;",
            "Lio/reactivex/rxjava3/processors/c<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lorg/reactivestreams/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/flowable/f3$c;-><init>(Lorg/reactivestreams/d;Lio/reactivex/rxjava3/processors/c;Lorg/reactivestreams/e;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f3$c;->l:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f3$c;->j:Lorg/reactivestreams/d;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/f3$c;->e(Ljava/lang/Object;)V

    return-void
.end method
