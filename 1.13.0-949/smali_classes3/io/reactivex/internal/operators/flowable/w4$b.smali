.class final Lio/reactivex/internal/operators/flowable/w4$b;
.super Lio/reactivex/internal/subscribers/h;
.source "FlowableWindowTimed.java"

# interfaces
.implements Lio/reactivex/o;
.implements Lorg/reactivestreams/e;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/w4;
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
        "Lio/reactivex/internal/subscribers/h<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/j<",
        "TT;>;>;",
        "Lio/reactivex/o<",
        "TT;>;",
        "Lorg/reactivestreams/e;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final y2:Ljava/lang/Object;


# instance fields
.field final T1:Lio/reactivex/h0;

.field final V1:I

.field b2:Lorg/reactivestreams/e;

.field g2:Lio/reactivex/processors/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field final p2:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final x1:J

.field volatile x2:Z

.field final y1:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/w4$b;->y2:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/reactivestreams/d;JLjava/util/concurrent/TimeUnit;Lio/reactivex/h0;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/h0;",
            "I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/a;

    invoke-direct {v0}, Lio/reactivex/internal/queue/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/subscribers/h;-><init>(Lorg/reactivestreams/d;Lo7/n;)V

    .line 2
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w4$b;->p2:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/w4$b;->x1:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/w4$b;->y1:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/w4$b;->T1:Lio/reactivex/h0;

    .line 6
    iput p6, p0, Lio/reactivex/internal/operators/flowable/w4$b;->V1:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->b1:Z

    return-void
.end method

.method n()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->W:Lo7/n;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/subscribers/h;->V:Lorg/reactivestreams/d;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/w4$b;->g2:Lio/reactivex/processors/h;

    const/4 v3, 0x1

    .line 4
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/w4$b;->x2:Z

    .line 5
    iget-boolean v5, p0, Lio/reactivex/internal/subscribers/h;->g1:Z

    .line 6
    invoke-interface {v0}, Lo7/n;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    if-eqz v6, :cond_1

    .line 7
    sget-object v5, Lio/reactivex/internal/operators/flowable/w4$b;->y2:Ljava/lang/Object;

    if-ne v6, v5, :cond_3

    .line 8
    :cond_1
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/w4$b;->g2:Lio/reactivex/processors/h;

    .line 9
    invoke-interface {v0}, Lo7/o;->clear()V

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->p1:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v2, v0}, Lio/reactivex/processors/h;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v2}, Lio/reactivex/processors/h;->onComplete()V

    .line 13
    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w4$b;->p2:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    return-void

    :cond_3
    if-nez v6, :cond_4

    neg-int v3, v3

    .line 14
    invoke-virtual {p0, v3}, Lio/reactivex/internal/subscribers/h;->a(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 15
    :cond_4
    sget-object v5, Lio/reactivex/internal/operators/flowable/w4$b;->y2:Ljava/lang/Object;

    if-ne v6, v5, :cond_7

    .line 16
    invoke-virtual {v2}, Lio/reactivex/processors/h;->onComplete()V

    if-nez v4, :cond_6

    .line 17
    iget v2, p0, Lio/reactivex/internal/operators/flowable/w4$b;->V1:I

    invoke-static {v2}, Lio/reactivex/processors/h;->T8(I)Lio/reactivex/processors/h;

    move-result-object v2

    .line 18
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/w4$b;->g2:Lio/reactivex/processors/h;

    .line 19
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->e()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-eqz v6, :cond_5

    .line 20
    invoke-interface {v1, v2}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    const-wide/16 v4, 0x1

    .line 21
    invoke-virtual {p0, v4, v5}, Lio/reactivex/internal/subscribers/h;->i(J)J

    goto :goto_0

    .line 22
    :cond_5
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/w4$b;->g2:Lio/reactivex/processors/h;

    .line 23
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->W:Lo7/n;

    invoke-interface {v0}, Lo7/o;->clear()V

    .line 24
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w4$b;->b2:Lorg/reactivestreams/e;

    invoke-interface {v0}, Lorg/reactivestreams/e;->cancel()V

    .line 25
    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Could not deliver first window due to lack of requests."

    invoke-direct {v0, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    .line 26
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w4$b;->p2:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    return-void

    .line 27
    :cond_6
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/w4$b;->b2:Lorg/reactivestreams/e;

    invoke-interface {v4}, Lorg/reactivestreams/e;->cancel()V

    goto :goto_0

    .line 28
    :cond_7
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/processors/h;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->g1:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w4$b;->n()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->V:Lorg/reactivestreams/d;

    invoke-interface {v0}, Lorg/reactivestreams/d;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/subscribers/h;->p1:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->g1:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w4$b;->n()V

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->V:Lorg/reactivestreams/d;

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w4$b;->x2:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w4$b;->g2:Lio/reactivex/processors/h;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/h;->onNext(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/h;->a(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->W:Lo7/n;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lo7/o;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w4$b;->n()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w4$b;->b2:Lorg/reactivestreams/e;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/e;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/w4$b;->b2:Lorg/reactivestreams/e;

    .line 3
    iget v0, p0, Lio/reactivex/internal/operators/flowable/w4$b;->V1:I

    invoke-static {v0}, Lio/reactivex/processors/h;->T8(I)Lio/reactivex/processors/h;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/w4$b;->g2:Lio/reactivex/processors/h;

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->V:Lorg/reactivestreams/d;

    .line 5
    invoke-interface {v0, p0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 7
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/w4$b;->g2:Lio/reactivex/processors/h;

    invoke-interface {v0, v3}, Lorg/reactivestreams/d;->onNext(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/subscribers/h;->i(J)J

    .line 9
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->b1:Z

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/w4$b;->p2:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/w4$b;->T1:Lio/reactivex/h0;

    iget-wide v9, p0, Lio/reactivex/internal/operators/flowable/w4$b;->x1:J

    iget-object v11, p0, Lio/reactivex/internal/operators/flowable/w4$b;->y1:Ljava/util/concurrent/TimeUnit;

    move-object v6, p0

    move-wide v7, v9

    invoke-virtual/range {v5 .. v11}, Lio/reactivex/h0;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p1, v3, v4}, Lorg/reactivestreams/e;->request(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lio/reactivex/internal/subscribers/h;->b1:Z

    .line 13
    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    .line 14
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not deliver first window due to lack of requests."

    invoke-direct {p1, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/subscribers/h;->m(J)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/h;->b1:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/w4$b;->x2:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/h;->W:Lo7/n;

    sget-object v1, Lio/reactivex/internal/operators/flowable/w4$b;->y2:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo7/o;->offer(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/subscribers/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/w4$b;->n()V

    :cond_1
    return-void
.end method
