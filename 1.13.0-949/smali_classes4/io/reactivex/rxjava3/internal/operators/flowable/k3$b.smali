.class final Lio/reactivex/rxjava3/internal/operators/flowable/k3$b;
.super Lio/reactivex/rxjava3/internal/operators/flowable/k3$c;
.source "FlowableSamplePublisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/k3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/k3$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final g:J = -0x2a0bdab9530de829L


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;Lorg/reactivestreams/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actual",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;",
            "Lorg/reactivestreams/c<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/k3$c;-><init>(Lorg/reactivestreams/d;Lorg/reactivestreams/c;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/k3$c;->a:Lorg/reactivestreams/d;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    return-void
.end method

.method e()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/k3$c;->c()V

    return-void
.end method
