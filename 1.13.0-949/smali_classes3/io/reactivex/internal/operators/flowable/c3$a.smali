.class final Lio/reactivex/internal/operators/flowable/c3$a;
.super Lio/reactivex/internal/operators/flowable/c3$c;
.source "FlowableRepeatWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/c3;
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
        "Lio/reactivex/internal/operators/flowable/c3$c<",
        "TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final o:J = -0x2531bbef65964705L


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lio/reactivex/processors/c;Lorg/reactivestreams/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;",
            "Lio/reactivex/processors/c<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/reactivestreams/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/internal/operators/flowable/c3$c;-><init>(Lorg/reactivestreams/d;Lio/reactivex/processors/c;Lorg/reactivestreams/e;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/c3$c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/c3$c;->l:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/c3$c;->j:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
