.class public final Lio/reactivex/internal/operators/parallel/o;
.super Lio/reactivex/parallel/a;
.source "ParallelRunOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/o$c;,
        Lio/reactivex/internal/operators/parallel/o$d;,
        Lio/reactivex/internal/operators/parallel/o$a;,
        Lio/reactivex/internal/operators/parallel/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/parallel/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/h0;

.field final c:I


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/a;Lio/reactivex/h0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/a<",
            "+TT;>;",
            "Lio/reactivex/h0;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/parallel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/o;->a:Lio/reactivex/parallel/a;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/o;->b:Lio/reactivex/h0;

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/parallel/o;->c:I

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/o;->a:Lio/reactivex/parallel/a;

    invoke-virtual {v0}, Lio/reactivex/parallel/a;->F()I

    move-result v0

    return v0
.end method

.method public Q([Lorg/reactivestreams/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/parallel/a;->U([Lorg/reactivestreams/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    .line 3
    new-array v1, v0, [Lorg/reactivestreams/d;

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/o;->b:Lio/reactivex/h0;

    instance-of v3, v2, Lio/reactivex/internal/schedulers/k;

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Lio/reactivex/internal/schedulers/k;

    .line 6
    new-instance v3, Lio/reactivex/internal/operators/parallel/o$b;

    invoke-direct {v3, p0, p1, v1}, Lio/reactivex/internal/operators/parallel/o$b;-><init>(Lio/reactivex/internal/operators/parallel/o;[Lorg/reactivestreams/d;[Lorg/reactivestreams/d;)V

    invoke-interface {v2, v0, v3}, Lio/reactivex/internal/schedulers/k;->a(ILio/reactivex/internal/schedulers/k$a;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    iget-object v3, p0, Lio/reactivex/internal/operators/parallel/o;->b:Lio/reactivex/h0;

    invoke-virtual {v3}, Lio/reactivex/h0;->d()Lio/reactivex/h0$c;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v1, v3}, Lio/reactivex/internal/operators/parallel/o;->V(I[Lorg/reactivestreams/d;[Lorg/reactivestreams/d;Lio/reactivex/h0$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/o;->a:Lio/reactivex/parallel/a;

    invoke-virtual {p1, v1}, Lio/reactivex/parallel/a;->Q([Lorg/reactivestreams/d;)V

    return-void
.end method

.method V(I[Lorg/reactivestreams/d;[Lorg/reactivestreams/d;Lio/reactivex/h0$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/reactivestreams/d<",
            "-TT;>;[",
            "Lorg/reactivestreams/d<",
            "TT;>;",
            "Lio/reactivex/h0$c;",
            ")V"
        }
    .end annotation

    .line 1
    aget-object p2, p2, p1

    .line 2
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/internal/operators/parallel/o;->c:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    .line 3
    instance-of v1, p2, Lo7/a;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lio/reactivex/internal/operators/parallel/o$c;

    check-cast p2, Lo7/a;

    iget v2, p0, Lio/reactivex/internal/operators/parallel/o;->c:I

    invoke-direct {v1, p2, v2, v0, p4}, Lio/reactivex/internal/operators/parallel/o$c;-><init>(Lo7/a;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/h0$c;)V

    aput-object v1, p3, p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/parallel/o$d;

    iget v2, p0, Lio/reactivex/internal/operators/parallel/o;->c:I

    invoke-direct {v1, p2, v2, v0, p4}, Lio/reactivex/internal/operators/parallel/o$d;-><init>(Lorg/reactivestreams/d;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/h0$c;)V

    aput-object v1, p3, p1

    :goto_0
    return-void
.end method
