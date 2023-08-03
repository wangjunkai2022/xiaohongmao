.class public final Lio/reactivex/rxjava3/internal/operators/flowable/r0;
.super Lio/reactivex/rxjava3/internal/operators/flowable/a;
.source "FlowableDoOnLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/r0$a;
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
.field private final c:Lq7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/g<",
            "-",
            "Lorg/reactivestreams/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lq7/q;

.field private final e:Lq7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lq7/g;Lq7/q;Lq7/a;)V
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
            "onSubscribe",
            "onRequest",
            "onCancel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/m<",
            "TT;>;",
            "Lq7/g<",
            "-",
            "Lorg/reactivestreams/e;",
            ">;",
            "Lq7/q;",
            "Lq7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/r0;->c:Lq7/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/r0;->d:Lq7/q;

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/r0;->e:Lq7/a;

    return-void
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/m;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/r0$a;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/r0;->c:Lq7/g;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/r0;->d:Lq7/q;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/r0;->e:Lq7/a;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/r0$a;-><init>(Lorg/reactivestreams/d;Lq7/g;Lq7/q;Lq7/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/m;->G6(Lio/reactivex/rxjava3/core/r;)V

    return-void
.end method
