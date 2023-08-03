.class public Lcom/koushikdutta/async/util/ThrottleTimeout;
.super Lcom/koushikdutta/async/util/TimeoutBase;
.source "ThrottleTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/util/TimeoutBase;"
    }
.end annotation


# instance fields
.field c:Lcom/koushikdutta/async/callback/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/callback/ValueCallback<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field e:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

.field f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Handler;JLcom/koushikdutta/async/callback/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J",
            "Lcom/koushikdutta/async/callback/ValueCallback<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/util/TimeoutBase;-><init>(Landroid/os/Handler;J)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->d:Ljava/util/ArrayList;

    .line 7
    sget-object p1, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;->Collect:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->e:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    .line 8
    iput-object p4, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->c:Lcom/koushikdutta/async/callback/ValueCallback;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;JLcom/koushikdutta/async/callback/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/AsyncServer;",
            "J",
            "Lcom/koushikdutta/async/callback/ValueCallback<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/util/TimeoutBase;-><init>(Lcom/koushikdutta/async/AsyncServer;J)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->d:Ljava/util/ArrayList;

    .line 3
    sget-object p1, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;->Collect:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->e:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    .line 4
    iput-object p4, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->c:Lcom/koushikdutta/async/callback/ValueCallback;

    return-void
.end method

.method public static synthetic c(Lcom/koushikdutta/async/util/ThrottleTimeout;)V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/util/ThrottleTimeout;->g()V

    return-void
.end method

.method public static synthetic d(Lcom/koushikdutta/async/util/ThrottleTimeout;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/util/ThrottleTimeout;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->e:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    sget-object v0, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;->Collect:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/util/TimeoutBase;->a:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    iget-object v0, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->f:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/util/TimeoutBase;->a:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    new-instance v0, Lcom/koushikdutta/async/util/b;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/b;-><init>(Lcom/koushikdutta/async/util/ThrottleTimeout;)V

    iget-wide v1, p0, Lcom/koushikdutta/async/util/TimeoutBase;->b:J

    invoke-interface {p1, v0, v1, v2}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->f:Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->f:Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/koushikdutta/async/util/ThrottleTimeout;->g()V

    .line 7
    iget-object p1, p0, Lcom/koushikdutta/async/util/TimeoutBase;->a:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    new-instance v0, Lcom/koushikdutta/async/util/b;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/b;-><init>(Lcom/koushikdutta/async/util/ThrottleTimeout;)V

    iget-wide v1, p0, Lcom/koushikdutta/async/util/TimeoutBase;->b:J

    invoke-interface {p1, v0, v1, v2}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->f:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->f:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->c:Lcom/koushikdutta/async/callback/ValueCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/callback/ValueCallback;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized f(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/TimeoutBase;->a:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    new-instance v1, Lcom/koushikdutta/async/util/c;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/util/c;-><init>(Lcom/koushikdutta/async/util/ThrottleTimeout;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h(Lcom/koushikdutta/async/callback/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/callback/ValueCallback<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->c:Lcom/koushikdutta/async/callback/ValueCallback;

    return-void
.end method

.method public i(Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/util/ThrottleTimeout;->e:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    return-void
.end method
