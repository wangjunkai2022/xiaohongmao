.class public final Lio/reactivex/internal/operators/flowable/v;
.super Lio/reactivex/j;
.source "FlowableConcatArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/v$a;
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
.field final b:[Lorg/reactivestreams/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/c<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>([Lorg/reactivestreams/c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/c<",
            "+TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/v;->b:[Lorg/reactivestreams/c;

    .line 3
    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/v;->c:Z

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/v$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/v;->b:[Lorg/reactivestreams/c;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/v;->c:Z

    invoke-direct {v0, v1, v2, p1}, Lio/reactivex/internal/operators/flowable/v$a;-><init>([Lorg/reactivestreams/c;ZLorg/reactivestreams/d;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/v$a;->onComplete()V

    return-void
.end method
