.class final Lio/reactivex/internal/operators/flowable/w2$a;
.super Ljava/lang/Object;
.source "FlowableReduceMaybe.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lio/reactivex/disposables/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/w2;
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
        "Ljava/lang/Object;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lio/reactivex/disposables/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/t<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ln7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:Lorg/reactivestreams/e;

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/t;Ln7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;",
            "Ln7/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w2$a;->a:Lio/reactivex/t;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/w2$a;->b:Ln7/c;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->d:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->e:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->e:Z

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->e:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w2$a;->a:Lio/reactivex/t;

    invoke-interface {v1, v0}, Lio/reactivex/t;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->a:Lio/reactivex/t;

    invoke-interface {v0}, Lio/reactivex/t;->onComplete()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/reactivex/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->e:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p1}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w2$a;->c:Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/w2$a;->b:Ln7/c;

    invoke-interface {v1, v0, p1}, Ln7/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w2$a;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->d:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 7
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/w2$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->d:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w2$a;->d:Lorg/reactivestreams/e;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w2$a;->a:Lio/reactivex/t;

    invoke-interface {v0, p0}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_0
    return-void
.end method
