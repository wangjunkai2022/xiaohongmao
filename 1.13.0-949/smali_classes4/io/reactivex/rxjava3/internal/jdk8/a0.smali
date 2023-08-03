.class public final Lio/reactivex/rxjava3/internal/jdk8/a0;
.super Lio/reactivex/rxjava3/core/m;
.source "ParallelCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/jdk8/a0$c;,
        Lio/reactivex/rxjava3/internal/jdk8/a0$a;,
        Lio/reactivex/rxjava3/internal/jdk8/a0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/m<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/parallel/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/parallel/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "TT;TA;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/parallel/a;Ljava/util/stream/Collector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "collector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/parallel/a<",
            "+TT;>;",
            "Ljava/util/stream/Collector<",
            "TT;TA;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/a0;->b:Lio/reactivex/rxjava3/parallel/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/jdk8/a0;->c:Ljava/util/stream/Collector;

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
    :try_start_0
    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/a0$b;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/jdk8/a0;->b:Lio/reactivex/rxjava3/parallel/a;

    invoke-virtual {v1}, Lio/reactivex/rxjava3/parallel/a;->M()I

    move-result v1

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/jdk8/a0;->c:Ljava/util/stream/Collector;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/jdk8/a0$b;-><init>(Lorg/reactivestreams/d;ILjava/util/stream/Collector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/a0;->b:Lio/reactivex/rxjava3/parallel/a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/jdk8/a0$b;->m:[Lio/reactivex/rxjava3/internal/jdk8/a0$a;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/parallel/a;->X([Lorg/reactivestreams/d;)V

    return-void

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    return-void
.end method
