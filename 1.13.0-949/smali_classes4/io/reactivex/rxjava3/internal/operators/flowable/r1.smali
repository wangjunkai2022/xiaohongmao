.class public final Lio/reactivex/rxjava3/internal/operators/flowable/r1;
.super Lio/reactivex/rxjava3/core/m;
.source "FlowableGenerate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/r1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lq7/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/s<",
            "TS;>;"
        }
    .end annotation
.end field

.field final c:Lq7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/c<",
            "TS;",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field final d:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq7/s;Lq7/c;Lq7/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stateSupplier",
            "generator",
            "disposeState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/s<",
            "TS;>;",
            "Lq7/c<",
            "TS;",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;TS;>;",
            "Lq7/g<",
            "-TS;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/r1;->b:Lq7/s;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/r1;->c:Lq7/c;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/r1;->d:Lq7/g;

    return-void
.end method


# virtual methods
.method public H6(Lorg/reactivestreams/d;)V
    .locals 4
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
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/r1;->b:Lq7/s;

    invoke-interface {v0}, Lq7/s;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/r1$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/r1;->c:Lq7/c;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/r1;->d:Lq7/g;

    invoke-direct {v1, p1, v2, v3, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/r1$a;-><init>(Lorg/reactivestreams/d;Lq7/c;Lq7/g;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/d;)V

    return-void
.end method
