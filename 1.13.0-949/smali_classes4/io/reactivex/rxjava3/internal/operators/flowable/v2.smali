.class public final Lio/reactivex/rxjava3/internal/operators/flowable/v2;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowablePublishMulticast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/v2$b;,
        Lio/reactivex/rxjava3/internal/operators/flowable/v2$a;,
        Lio/reactivex/rxjava3/internal/operators/flowable/v2$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lq7/o;IZ)V
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
            "selector",
            "prefetch",
            "delayError"
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
            "TT;>;+",
            "Lorg/reactivestreams/c<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v2;->c:Lq7/o;

    .line 3
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v2;->d:I

    .line 4
    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v2;->e:Z

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 3
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
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/v2$a;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v2;->d:I

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v2;->e:Z

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/v2$a;-><init>(IZ)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/v2;->c:Lq7/o;

    invoke-interface {v1, v0}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "selector returned a null Publisher"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lorg/reactivestreams/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/v2$c;

    invoke-direct {v2, p1, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/v2$c;-><init>(Lorg/reactivestreams/d;Lio/reactivex/rxjava3/internal/operators/flowable/v2$a;)V

    .line 4
    invoke-interface {v1, v2}, Lorg/reactivestreams/c;->i(Lorg/reactivestreams/d;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    return-void
.end method
