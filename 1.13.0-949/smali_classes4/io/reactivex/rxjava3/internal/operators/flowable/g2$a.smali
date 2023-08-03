.class final Lio/reactivex/rxjava3/internal/operators/flowable/g2$a;
.super Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;
.source "FlowableMaterialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/g2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber<",
        "TT;",
        "Lio/reactivex/rxjava3/core/d0<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final h:J = -0x33ea157c2cf0a1deL


# direct methods
.method constructor <init>(Lorg/reactivestreams/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downstream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/rxjava3/core/d0<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;-><init>(Lorg/reactivestreams/d;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    check-cast p1, Lio/reactivex/rxjava3/core/d0;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g2$a;->c(Lio/reactivex/rxjava3/core/d0;)V

    return-void
.end method

.method protected c(Lio/reactivex/rxjava3/core/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/d0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/d0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/d0;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    invoke-static {}, Lio/reactivex/rxjava3/core/d0;->a()Lio/reactivex/rxjava3/core/d0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/d0;->b(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/d0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->d:J

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/SinglePostCompleteSubscriber;->a:Lorg/reactivestreams/d;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/d0;->c(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/d0;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    return-void
.end method
