.class public final Lio/reactivex/rxjava3/internal/operators/flowable/f3;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableRepeatWhen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/f3$a;,
        Lio/reactivex/rxjava3/internal/operators/flowable/f3$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/f3$b;
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
.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/reactivestreams/c<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lq7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "Ljava/lang/Object;",
            ">;+",
            "Lorg/reactivestreams/c<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f3;->c:Lq7/o;

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
    new-instance v0, Lio/reactivex/rxjava3/subscribers/e;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/subscribers/e;-><init>(Lorg/reactivestreams/d;)V

    const/16 v1, 0x8

    .line 2
    invoke-static {v1}, Lio/reactivex/rxjava3/processors/h;->n9(I)Lio/reactivex/rxjava3/processors/h;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/rxjava3/processors/c;->k9()Lio/reactivex/rxjava3/processors/c;

    move-result-object v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/f3;->c:Lq7/o;

    invoke-interface {v2, v1}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "handler returned a null Publisher"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lorg/reactivestreams/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/flowable/f3$b;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    invoke-direct {v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/f3$b;-><init>(Lorg/reactivestreams/c;)V

    .line 5
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/flowable/f3$a;

    invoke-direct {v4, v0, v1, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/f3$a;-><init>(Lorg/reactivestreams/d;Lio/reactivex/rxjava3/processors/c;Lorg/reactivestreams/e;)V

    .line 6
    iput-object v4, v3, Lio/reactivex/rxjava3/internal/operators/flowable/f3$b;->d:Lio/reactivex/rxjava3/internal/operators/flowable/f3$c;

    .line 7
    invoke-interface {p1, v4}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 8
    invoke-interface {v2, v3}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/f3$b;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 11
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    return-void
.end method
