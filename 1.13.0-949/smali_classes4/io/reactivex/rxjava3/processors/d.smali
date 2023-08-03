.class public final Lio/reactivex/rxjava3/processors/d;
.super Lio/reactivex/rxjava3/processors/c;
.source "MulticastProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/processors/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/processors/c<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lp7/a;
    value = .enum Lio/reactivex/rxjava3/annotations/BackpressureKind;->FULL:Lio/reactivex/rxjava3/annotations/BackpressureKind;
.end annotation

.annotation runtime Lp7/g;
    value = "none"
.end annotation


# static fields
.field static final m:[Lio/reactivex/rxjava3/processors/d$a;

.field static final n:[Lio/reactivex/rxjava3/processors/d$a;


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/e;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/rxjava3/processors/d$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final e:I

.field final f:I

.field final g:Z

.field volatile h:Lio/reactivex/rxjava3/internal/fuseable/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/fuseable/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile i:Z

.field volatile j:Ljava/lang/Throwable;

.field k:I

.field l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/rxjava3/processors/d$a;

    .line 1
    sput-object v1, Lio/reactivex/rxjava3/processors/d;->m:[Lio/reactivex/rxjava3/processors/d$a;

    new-array v0, v0, [Lio/reactivex/rxjava3/processors/d$a;

    .line 2
    sput-object v0, Lio/reactivex/rxjava3/processors/d;->n:[Lio/reactivex/rxjava3/processors/d$a;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "refCount"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/processors/c;-><init>()V

    .line 2
    iput p1, p0, Lio/reactivex/rxjava3/processors/d;->e:I

    shr-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    .line 3
    iput p1, p0, Lio/reactivex/rxjava3/processors/d;->f:I

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/processors/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/processors/d;->m:[Lio/reactivex/rxjava3/processors/d$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/processors/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/processors/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    iput-boolean p2, p0, Lio/reactivex/rxjava3/processors/d;->g:Z

    return-void
.end method

.method public static m9()Lio/reactivex/rxjava3/processors/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/rxjava3/processors/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/processors/d;

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/processors/d;-><init>(IZ)V

    return-object v0
.end method

.method public static n9(I)Lio/reactivex/rxjava3/processors/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/rxjava3/processors/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/processors/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/processors/d;-><init>(IZ)V

    return-object v0
.end method

.method public static o9(IZ)Lio/reactivex/rxjava3/processors/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "refCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IZ)",
            "Lio/reactivex/rxjava3/processors/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p0, v0}, Lio/reactivex/rxjava3/internal/functions/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/processors/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/processors/d;-><init>(IZ)V

    return-object v0
.end method

.method public static p9(Z)Lio/reactivex/rxjava3/processors/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lio/reactivex/rxjava3/processors/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/processors/d;

    invoke-static {}, Lio/reactivex/rxjava3/core/m;->V()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lio/reactivex/rxjava3/processors/d;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method protected H6(Lorg/reactivestreams/d;)V
    .locals 5
    .param p1    # Lorg/reactivestreams/d;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/processors/d$a;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/processors/d$a;-><init>(Lorg/reactivestreams/d;Lio/reactivex/rxjava3/processors/d;)V

    .line 2
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onSubscribe(Lorg/reactivestreams/e;)V

    .line 3
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/processors/d;->l9(Lio/reactivex/rxjava3/processors/d$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/processors/d;->s9(Lio/reactivex/rxjava3/processors/d$a;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/d;->q9()V

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/d;->i:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/d;->j:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {p1, v0}, Lorg/reactivestreams/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_2
    invoke-interface {p1}, Lorg/reactivestreams/d;->onComplete()V

    :goto_0
    return-void
.end method

.method public g9()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/d;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/d;->j:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public h9()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/d;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/d;->j:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i9()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/d$a;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j9()Z
    .locals 1
    .annotation runtime Lp7/c;
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/d;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/d;->j:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method l9(Lio/reactivex/rxjava3/processors/d$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/processors/d$a<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/d$a;

    .line 2
    sget-object v1, Lio/reactivex/rxjava3/processors/d;->n:[Lio/reactivex/rxjava3/processors/d$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    .line 3
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 4
    new-array v3, v3, [Lio/reactivex/rxjava3/processors/d$a;

    .line 5
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    aput-object p1, v3, v1

    .line 7
    iget-object v1, p0, Lio/reactivex/rxjava3/processors/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/rxjava3/processors/d;->i:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/d;->q9()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    const-string v0, "onError called with a null Throwable."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/g;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/d;->i:Z

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/processors/d;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/processors/d;->i:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/d;->q9()V

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/d;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lio/reactivex/rxjava3/processors/d;->l:I

    if-nez v0, :cond_1

    const-string v0, "onNext called with a null value."

    .line 3
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/g;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/d;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/reactivex/rxjava3/processors/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 6
    new-instance p1, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    invoke-direct {p1}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/processors/d;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/d;->q9()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/e;)V
    .locals 3
    .param p1    # Lorg/reactivestreams/e;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Lio/reactivex/rxjava3/internal/fuseable/n;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lio/reactivex/rxjava3/internal/fuseable/n;

    const/4 v1, 0x3

    .line 4
    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/internal/fuseable/m;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    iput v1, p0, Lio/reactivex/rxjava3/processors/d;->l:I

    .line 6
    iput-object v0, p0, Lio/reactivex/rxjava3/processors/d;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 7
    iput-boolean v2, p0, Lio/reactivex/rxjava3/processors/d;->i:Z

    .line 8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/d;->q9()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9
    iput v1, p0, Lio/reactivex/rxjava3/processors/d;->l:I

    .line 10
    iput-object v0, p0, Lio/reactivex/rxjava3/processors/d;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 11
    iget v0, p0, Lio/reactivex/rxjava3/processors/d;->e:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/rxjava3/processors/d;->e:I

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/rxjava3/processors/d;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    .line 13
    iget v0, p0, Lio/reactivex/rxjava3/processors/d;->e:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/e;->request(J)V

    :cond_2
    return-void
.end method

.method q9()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lio/reactivex/rxjava3/processors/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v1, Lio/reactivex/rxjava3/processors/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iget v0, v1, Lio/reactivex/rxjava3/processors/d;->k:I

    .line 4
    iget v3, v1, Lio/reactivex/rxjava3/processors/d;->f:I

    .line 5
    iget v4, v1, Lio/reactivex/rxjava3/processors/d;->l:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 6
    :cond_1
    :goto_0
    iget-object v7, v1, Lio/reactivex/rxjava3/processors/d;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    if-eqz v7, :cond_14

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lio/reactivex/rxjava3/processors/d$a;

    .line 8
    array-length v9, v8

    if-eqz v9, :cond_14

    .line 9
    array-length v9, v8

    const-wide/16 v10, -0x1

    move-wide v14, v10

    const/4 v13, 0x0

    :goto_1
    const-wide/16 v16, 0x0

    if-ge v13, v9, :cond_4

    aget-object v12, v8, v13

    .line 10
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    cmp-long v20, v18, v16

    if-ltz v20, :cond_3

    cmp-long v16, v14, v10

    if-nez v16, :cond_2

    .line 11
    iget-wide v14, v12, Lio/reactivex/rxjava3/processors/d$a;->c:J

    sub-long v14, v18, v14

    goto :goto_2

    .line 12
    :cond_2
    iget-wide v10, v12, Lio/reactivex/rxjava3/processors/d$a;->c:J

    sub-long v10, v18, v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v10, -0x1

    goto :goto_1

    :cond_4
    move v9, v0

    :cond_5
    :goto_3
    cmp-long v10, v14, v16

    if-lez v10, :cond_e

    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/d$a;

    .line 14
    sget-object v11, Lio/reactivex/rxjava3/processors/d;->n:[Lio/reactivex/rxjava3/processors/d$a;

    if-ne v0, v11, :cond_6

    .line 15
    invoke-interface {v7}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    return-void

    :cond_6
    if-eq v8, v0, :cond_7

    goto/16 :goto_a

    .line 16
    :cond_7
    iget-boolean v0, v1, Lio/reactivex/rxjava3/processors/d;->i:Z

    .line 17
    :try_start_0
    invoke-interface {v7}, Lio/reactivex/rxjava3/internal/fuseable/q;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v11, v0

    .line 18
    invoke-static {v11}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 19
    iget-object v0, v1, Lio/reactivex/rxjava3/processors/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 v0, 0x0

    .line 20
    iput-object v11, v1, Lio/reactivex/rxjava3/processors/d;->j:Ljava/lang/Throwable;

    .line 21
    iput-boolean v5, v1, Lio/reactivex/rxjava3/processors/d;->i:Z

    move-object v11, v0

    const/4 v0, 0x1

    :goto_4
    if-nez v11, :cond_8

    const/4 v12, 0x1

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    :goto_5
    if-eqz v0, :cond_b

    if-eqz v12, :cond_b

    .line 22
    iget-object v0, v1, Lio/reactivex/rxjava3/processors/d;->j:Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    .line 23
    sget-object v3, Lio/reactivex/rxjava3/processors/d;->n:[Lio/reactivex/rxjava3/processors/d$a;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/rxjava3/processors/d$a;

    array-length v3, v2

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v3, :cond_a

    aget-object v4, v2, v12

    .line 24
    invoke-virtual {v4, v0}, Lio/reactivex/rxjava3/processors/d$a;->b(Ljava/lang/Throwable;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 25
    :cond_9
    sget-object v0, Lio/reactivex/rxjava3/processors/d;->n:[Lio/reactivex/rxjava3/processors/d$a;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/d$a;

    array-length v2, v0

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v2, :cond_a

    aget-object v3, v0, v12

    .line 26
    invoke-virtual {v3}, Lio/reactivex/rxjava3/processors/d$a;->a()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_a
    return-void

    :cond_b
    if-eqz v12, :cond_c

    goto :goto_9

    .line 27
    :cond_c
    array-length v0, v8

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v0, :cond_d

    aget-object v12, v8, v10

    .line 28
    invoke-virtual {v12, v11}, Lio/reactivex/rxjava3/processors/d$a;->c(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_d
    const-wide/16 v10, 0x1

    sub-long/2addr v14, v10

    if-eq v4, v5, :cond_5

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v3, :cond_5

    .line 29
    iget-object v0, v1, Lio/reactivex/rxjava3/processors/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/e;

    int-to-long v9, v3

    invoke-interface {v0, v9, v10}, Lorg/reactivestreams/e;->request(J)V

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_e
    :goto_9
    if-nez v10, :cond_13

    .line 30
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/d$a;

    .line 31
    sget-object v10, Lio/reactivex/rxjava3/processors/d;->n:[Lio/reactivex/rxjava3/processors/d$a;

    if-ne v0, v10, :cond_f

    .line 32
    invoke-interface {v7}, Lio/reactivex/rxjava3/internal/fuseable/q;->clear()V

    return-void

    :cond_f
    if-eq v8, v0, :cond_10

    :goto_a
    move v0, v9

    goto/16 :goto_0

    .line 33
    :cond_10
    iget-boolean v0, v1, Lio/reactivex/rxjava3/processors/d;->i:Z

    if-eqz v0, :cond_13

    invoke-interface {v7}, Lio/reactivex/rxjava3/internal/fuseable/q;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 34
    iget-object v0, v1, Lio/reactivex/rxjava3/processors/d;->j:Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    .line 35
    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/reactivex/rxjava3/processors/d$a;

    array-length v3, v2

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v3, :cond_12

    aget-object v4, v2, v12

    .line 36
    invoke-virtual {v4, v0}, Lio/reactivex/rxjava3/processors/d$a;->b(Ljava/lang/Throwable;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 37
    :cond_11
    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/d$a;

    array-length v2, v0

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v2, :cond_12

    aget-object v3, v0, v12

    .line 38
    invoke-virtual {v3}, Lio/reactivex/rxjava3/processors/d$a;->a()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_12
    return-void

    :cond_13
    move v0, v9

    .line 39
    :cond_14
    iput v0, v1, Lio/reactivex/rxjava3/processors/d;->k:I

    .line 40
    iget-object v7, v1, Lio/reactivex/rxjava3/processors/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v6, v6

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public r9(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
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
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    const-string v0, "offer called with a null value."

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/g;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/d;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p0, Lio/reactivex/rxjava3/processors/d;->l:I

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/d;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/internal/fuseable/q;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/d;->q9()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "offer() should not be called in fusion mode!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method s9(Lio/reactivex/rxjava3/processors/d$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/processors/d$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/processors/d$a;

    .line 2
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 3
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    .line 4
    iget-boolean v1, p0, Lio/reactivex/rxjava3/processors/d;->g:Z

    if-eqz v1, :cond_5

    .line 5
    iget-object v1, p0, Lio/reactivex/rxjava3/processors/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/rxjava3/processors/d;->n:[Lio/reactivex/rxjava3/processors/d$a;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lio/reactivex/rxjava3/processors/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 7
    iput-boolean v4, p0, Lio/reactivex/rxjava3/processors/d;->i:Z

    goto :goto_2

    .line 8
    :cond_5
    iget-object v1, p0, Lio/reactivex/rxjava3/processors/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/rxjava3/processors/d;->m:[Lio/reactivex/rxjava3/processors/d$a;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v1, -0x1

    .line 9
    new-array v5, v5, [Lio/reactivex/rxjava3/processors/d$a;

    .line 10
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 11
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v1, p0, Lio/reactivex/rxjava3/processors/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    return-void
.end method

.method public t9()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;

    iget v1, p0, Lio/reactivex/rxjava3/processors/d;->e:I

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/rxjava3/processors/d;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    :cond_0
    return-void
.end method

.method public u9()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/b;

    iget v1, p0, Lio/reactivex/rxjava3/processors/d;->e:I

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/queue/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/rxjava3/processors/d;->h:Lio/reactivex/rxjava3/internal/fuseable/q;

    :cond_0
    return-void
.end method
