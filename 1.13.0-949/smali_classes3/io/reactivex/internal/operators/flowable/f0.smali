.class public final Lio/reactivex/internal/operators/flowable/f0;
.super Lio/reactivex/j;
.source "FlowableCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/f0$f;,
        Lio/reactivex/internal/operators/flowable/f0$c;,
        Lio/reactivex/internal/operators/flowable/f0$e;,
        Lio/reactivex/internal/operators/flowable/f0$d;,
        Lio/reactivex/internal/operators/flowable/f0$h;,
        Lio/reactivex/internal/operators/flowable/f0$g;,
        Lio/reactivex/internal/operators/flowable/f0$b;,
        Lio/reactivex/internal/operators/flowable/f0$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/BackpressureStrategy;


# direct methods
.method public constructor <init>(Lio/reactivex/m;Lio/reactivex/BackpressureStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/m<",
            "TT;>;",
            "Lio/reactivex/BackpressureStrategy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/f0;->b:Lio/reactivex/m;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/f0;->c:Lio/reactivex/BackpressureStrategy;

    return-void
.end method


# virtual methods
.method public k6(Lorg/reactivestreams/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/operators/flowable/f0$a;->a:[I

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/f0;->c:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/flowable/f0$c;

    invoke-static {}, Lio/reactivex/j;->Y()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/f0$c;-><init>(Lorg/reactivestreams/d;I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/f0$f;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/f0$f;-><init>(Lorg/reactivestreams/d;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/f0$d;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/f0$d;-><init>(Lorg/reactivestreams/d;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lio/reactivex/internal/operators/flowable/f0$e;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/f0$e;-><init>(Lorg/reactivestreams/d;)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Lio/reactivex/internal/operators/flowable/f0$g;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/f0$g;-><init>(Lorg/reactivestreams/d;)V

    .line 7
    :goto_0
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 8
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/f0;->b:Lio/reactivex/m;

    invoke-interface {p1, v0}, Lio/reactivex/m;->a(Lio/reactivex/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/f0$b;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
