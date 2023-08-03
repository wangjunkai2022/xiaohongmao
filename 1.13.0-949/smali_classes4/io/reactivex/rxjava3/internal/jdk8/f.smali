.class public final Lio/reactivex/rxjava3/internal/jdk8/f;
.super Lio/reactivex/rxjava3/core/m;
.source "FlowableFlatMapStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/jdk8/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/m<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lq7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lq7/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "mapper",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Lq7/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/jdk8/f;->b:Lio/reactivex/rxjava3/core/m;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/jdk8/f;->c:Lq7/o;

    .line 4
    iput p3, p0, Lio/reactivex/rxjava3/internal/jdk8/f;->d:I

    return-void
.end method

.method public static g9(Lorg/reactivestreams/d;Lq7/o;I)Lorg/reactivestreams/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downstream",
            "mapper",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/d<",
            "-TR;>;",
            "Lq7/o<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;I)",
            "Lorg/reactivestreams/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/jdk8/f$a;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/jdk8/f$a;-><init>(Lorg/reactivestreams/d;Lq7/o;I)V

    return-object v0
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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/jdk8/f;->b:Lio/reactivex/rxjava3/core/m;

    instance-of v1, v0, Lq7/s;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 2
    :try_start_0
    check-cast v0, Lq7/s;

    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/jdk8/f;->c:Lq7/o;

    invoke-interface {v1, v0}, Lq7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Stream"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/stream/Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1, v1}, Lio/reactivex/rxjava3/internal/jdk8/h;->h9(Lorg/reactivestreams/d;Ljava/util/stream/Stream;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/d;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    return-void

    .line 8
    :cond_2
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/jdk8/f;->c:Lq7/o;

    iget v2, p0, Lio/reactivex/rxjava3/internal/jdk8/f;->d:I

    invoke-static {p1, v1, v2}, Lio/reactivex/rxjava3/internal/jdk8/f;->g9(Lorg/reactivestreams/d;Lq7/o;I)Lorg/reactivestreams/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/m;->i(Lorg/reactivestreams/d;)V

    :goto_0
    return-void
.end method
