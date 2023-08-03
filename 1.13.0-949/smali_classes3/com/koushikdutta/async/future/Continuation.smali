.class public Lcom/koushikdutta/async/future/Continuation;
.super Lcom/koushikdutta/async/future/SimpleCancellable;
.source "Continuation.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;
.implements Ljava/lang/Runnable;
.implements Lcom/koushikdutta/async/future/Cancellable;


# instance fields
.field f:Lcom/koushikdutta/async/callback/CompletedCallback;

.field g:Ljava/lang/Runnable;

.field h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/koushikdutta/async/callback/ContinuationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Runnable;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->h:Ljava/util/LinkedList;

    .line 5
    iput-object p2, p0, Lcom/koushikdutta/async/future/Continuation;->g:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method private J()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/future/Continuation$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/Continuation$2;-><init>(Lcom/koushikdutta/async/future/Continuation;)V

    return-object v0
.end method

.method static synthetic j(Lcom/koushikdutta/async/future/Continuation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/koushikdutta/async/future/Continuation;->j:Z

    return p1
.end method

.method static synthetic k(Lcom/koushikdutta/async/future/Continuation;)V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/future/Continuation;->y()V

    return-void
.end method

.method private v(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/callback/ContinuationCallback;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/koushikdutta/async/future/DependentCancellable;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/koushikdutta/async/future/DependentCancellable;

    .line 3
    invoke-interface {v0, p0}, Lcom/koushikdutta/async/future/DependentCancellable;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    :cond_0
    return-object p1
.end method

.method private y()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/callback/ContinuationCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iput-boolean v1, p0, Lcom/koushikdutta/async/future/Continuation;->i:Z

    .line 5
    iput-boolean v1, p0, Lcom/koushikdutta/async/future/Continuation;->j:Z

    .line 6
    invoke-direct {p0}, Lcom/koushikdutta/async/future/Continuation;->J()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/callback/ContinuationCallback;->a(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 7
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/Continuation;->z(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_1
    iput-boolean v2, p0, Lcom/koushikdutta/async/future/Continuation;->i:Z

    goto :goto_0

    :goto_2
    iput-boolean v2, p0, Lcom/koushikdutta/async/future/Continuation;->i:Z

    throw v0

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->j:Z

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/Continuation;->z(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public D(Lcom/koushikdutta/async/future/Cancellable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->g:Ljava/lang/Runnable;

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/future/Continuation$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/future/Continuation$1;-><init>(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/future/Cancellable;)V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public G(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public H()Lcom/koushikdutta/async/future/Continuation;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation;->k:Z

    .line 3
    invoke-direct {p0}, Lcom/koushikdutta/async/future/Continuation;->y()V

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/Continuation;->A(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 2
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->H()Lcom/koushikdutta/async/future/Continuation;

    return-void
.end method

.method public cancel()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public q(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->h:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/Continuation;->v(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/callback/ContinuationCallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public r(Lcom/koushikdutta/async/future/DependentFuture;)Lcom/koushikdutta/async/future/Continuation;
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Lcom/koushikdutta/async/future/DependentCancellable;->b(Lcom/koushikdutta/async/future/Cancellable;)Z

    .line 2
    new-instance v0, Lcom/koushikdutta/async/future/Continuation$3;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/future/Continuation$3;-><init>(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/future/DependentFuture;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/future/Continuation;->q(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    return-object p0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Continuation;->H()Lcom/koushikdutta/async/future/Continuation;

    return-void
.end method

.method public s()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public u()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method public x(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->h:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/Continuation;->v(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/callback/ContinuationCallback;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method z(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation;->f:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->g(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
