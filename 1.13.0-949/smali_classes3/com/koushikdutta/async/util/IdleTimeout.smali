.class public Lcom/koushikdutta/async/util/IdleTimeout;
.super Lcom/koushikdutta/async/util/TimeoutBase;
.source "IdleTimeout.java"


# instance fields
.field c:Ljava/lang/Runnable;

.field d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/util/TimeoutBase;-><init>(Landroid/os/Handler;J)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/util/TimeoutBase;-><init>(Lcom/koushikdutta/async/AsyncServer;J)V

    return-void
.end method

.method public static synthetic c(Lcom/koushikdutta/async/util/IdleTimeout;)V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/util/IdleTimeout;->e()V

    return-void
.end method

.method private synthetic e()V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/util/TimeoutBase;->a:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    iget-object v1, p0, Lcom/koushikdutta/async/util/IdleTimeout;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->b(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/util/TimeoutBase;->a:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    new-instance v1, Lcom/koushikdutta/async/util/a;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/util/a;-><init>(Lcom/koushikdutta/async/util/IdleTimeout;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/util/TimeoutBase;->a:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    iget-object v1, p0, Lcom/koushikdutta/async/util/IdleTimeout;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/util/TimeoutBase;->a:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    iget-object v1, p0, Lcom/koushikdutta/async/util/IdleTimeout;->c:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/koushikdutta/async/util/TimeoutBase;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/util/IdleTimeout;->d:Ljava/lang/Object;

    return-void
.end method

.method public g(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/util/IdleTimeout;->c:Ljava/lang/Runnable;

    return-void
.end method
