.class public final Lio/reactivex/internal/operators/flowable/m3;
.super Lio/reactivex/j;
.source "FlowableSequenceEqual.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/m3$c;,
        Lio/reactivex/internal/operators/flowable/m3$a;,
        Lio/reactivex/internal/operators/flowable/m3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
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

.field final d:Ln7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final e:I


# direct methods
.method public constructor <init>(Lorg/reactivestreams/c;Lorg/reactivestreams/c;Ln7/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/c<",
            "+TT;>;",
            "Lorg/reactivestreams/c<",
            "+TT;>;",
            "Ln7/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/m3;->b:Lorg/reactivestreams/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/m3;->c:Lorg/reactivestreams/c;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/m3;->d:Ln7/d;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/flowable/m3;->e:I

    return-void
.end method


# virtual methods
.method public k6(Lorg/reactivestreams/d;)V
    .locals 3
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
    new-instance v0, Lio/reactivex/internal/operators/flowable/m3$a;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/m3;->e:I

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/m3;->d:Ln7/d;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/m3$a;-><init>(Lorg/reactivestreams/d;ILn7/d;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/m3;->b:Lorg/reactivestreams/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/m3;->c:Lorg/reactivestreams/c;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/m3$a;->k(Lorg/reactivestreams/c;Lorg/reactivestreams/c;)V

    return-void
.end method
