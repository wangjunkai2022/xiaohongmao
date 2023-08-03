.class public Lcom/koushikdutta/async/future/MultiFuture;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "MultiFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/SimpleFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final l:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/future/u;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/future/u;-><init>(Lcom/koushikdutta/async/future/MultiFuture;)V

    iput-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->l:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/future/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Lcom/koushikdutta/async/future/Future;)V

    .line 8
    new-instance p1, Lcom/koushikdutta/async/future/u;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/u;-><init>(Lcom/koushikdutta/async/future/MultiFuture;)V

    iput-object p1, p0, Lcom/koushikdutta/async/future/MultiFuture;->l:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Exception;)V

    .line 6
    new-instance p1, Lcom/koushikdutta/async/future/u;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/u;-><init>(Lcom/koushikdutta/async/future/MultiFuture;)V

    iput-object p1, p0, Lcom/koushikdutta/async/future/MultiFuture;->l:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/koushikdutta/async/future/u;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/u;-><init>(Lcom/koushikdutta/async/future/MultiFuture;)V

    iput-object p1, p0, Lcom/koushikdutta/async/future/MultiFuture;->l:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    return-void
.end method

.method public static synthetic i0(Lcom/koushikdutta/async/future/MultiFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/future/MultiFuture;->j0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    return-void
.end method

.method private synthetic j0(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/koushikdutta/async/future/MultiFuture;->k:Ljava/util/ArrayList;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    .line 6
    invoke-interface {v1, p1, p2, p3}, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;->a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method protected Y(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;",
            "Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->k:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/MultiFuture;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p2, p0, Lcom/koushikdutta/async/future/MultiFuture;->l:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->Y(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
