.class public final Lio/reactivex/rxjava3/internal/operators/flowable/p3;
.super Lio/reactivex/rxjava3/core/m;
.source "FlowableSequenceEqual.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/p3$c;,
        Lio/reactivex/rxjava3/internal/operators/flowable/p3$a;,
        Lio/reactivex/rxjava3/internal/operators/flowable/p3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/m<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final d:Lq7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final e:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;Lorg/reactivestreams/c;Lq7/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "first",
            "second",
            "comparer",
            "prefetch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+TT;>;",
            "Lorg/reactivestreams/c<",
            "+TT;>;",
            "Lq7/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p3;->b:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p3;->c:Lorg/reactivestreams/c;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p3;->d:Lq7/d;

    .line 5
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p3;->e:I

    return-void
.end method


# virtual methods
.method public H6(Lorg/reactivestreams/d;)V
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
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/p3$a;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p3;->e:I

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p3;->d:Lq7/d;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/p3$a;-><init>(Lorg/reactivestreams/d;ILq7/d;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p3;->b:Lorg/reactivestreams/c;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/p3;->c:Lorg/reactivestreams/c;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/p3$a;->k(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)V

    return-void
.end method
