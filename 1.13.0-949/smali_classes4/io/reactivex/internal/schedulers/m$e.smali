.class final Lio/reactivex/internal/schedulers/m$e;
.super Lio/reactivex/h0$c;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lio/reactivex/processors/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/c<",
            "Lio/reactivex/internal/schedulers/m$f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lio/reactivex/h0$c;


# direct methods
.method constructor <init>(Lio/reactivex/processors/c;Lio/reactivex/h0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/c<",
            "Lio/reactivex/internal/schedulers/m$f;",
            ">;",
            "Lio/reactivex/h0$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/h0$c;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/m$e;->b:Lio/reactivex/processors/c;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/schedulers/m$e;->c:Lio/reactivex/h0$c;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/m$e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)Lio/reactivex/disposables/c;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation build Lm7/e;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/m$c;

    invoke-direct {v0, p1}, Lio/reactivex/internal/schedulers/m$c;-><init>(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/schedulers/m$e;->b:Lio/reactivex/processors/c;

    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation build Lm7/e;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/m$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/reactivex/internal/schedulers/m$b;-><init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/schedulers/m$e;->b:Lio/reactivex/processors/c;

    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    return-object v0
.end method

.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/m$e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/schedulers/m$e;->b:Lio/reactivex/processors/c;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/schedulers/m$e;->c:Lio/reactivex/h0$c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/schedulers/m$e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
