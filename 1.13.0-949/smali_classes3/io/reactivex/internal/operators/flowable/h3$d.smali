.class final Lio/reactivex/internal/operators/flowable/h3$d;
.super Ljava/lang/Object;
.source "FlowableSamplePublisher.java"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/h3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/h3$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/h3$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/h3$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/h3$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h3$d;->a:Lio/reactivex/internal/operators/flowable/h3$c;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h3$d;->a:Lio/reactivex/internal/operators/flowable/h3$c;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/h3$c;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h3$d;->a:Lio/reactivex/internal/operators/flowable/h3$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/h3$c;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/h3$d;->a:Lio/reactivex/internal/operators/flowable/h3$c;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/h3$c;->e()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h3$d;->a:Lio/reactivex/internal/operators/flowable/h3$c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/h3$c;->i(Lorg/reactivestreams/e;)V

    return-void
.end method
