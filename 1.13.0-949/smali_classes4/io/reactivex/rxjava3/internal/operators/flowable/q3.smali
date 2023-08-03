.class public final Lio/reactivex/rxjava3/internal/operators/flowable/q3;
.super Lio/reactivex/rxjava3/core/p0;
.source "FlowableSequenceEqualSingle.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/q3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/p0<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/rxjava3/internal/fuseable/d<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/c<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lq7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final d:I


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
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/p0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q3;->a:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q3;->b:Lorg/reactivestreams/c;

    .line 4
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q3;->c:Lq7/d;

    .line 5
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q3;->d:I

    return-void
.end method


# virtual methods
.method public M1(Lio/reactivex/rxjava3/core/s0;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/s0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/q3$a;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q3;->d:I

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q3;->c:Lq7/d;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/q3$a;-><init>(Lio/reactivex/rxjava3/core/s0;ILq7/d;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/s0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q3;->a:Lorg/reactivestreams/c;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q3;->b:Lorg/reactivestreams/c;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/q3$a;->d(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)V

    return-void
.end method

.method public c()Lio/reactivex/rxjava3/core/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/p3;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q3;->a:Lorg/reactivestreams/c;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q3;->b:Lorg/reactivestreams/c;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q3;->c:Lq7/d;

    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/q3;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/p3;-><init>(Lorg/reactivestreams/c;Lorg/reactivestreams/c;Lq7/d;I)V

    invoke-static {v0}, Lio/reactivex/rxjava3/plugins/a;->P(Lio/reactivex/rxjava3/core/m;)Lio/reactivex/rxjava3/core/m;

    move-result-object v0

    return-object v0
.end method
