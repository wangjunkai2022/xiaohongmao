.class final Lcom/google/common/util/concurrent/k1;
.super Lcom/google/common/util/concurrent/x$a;
.source "TimeoutFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/k1$c;,
        Lcom/google/common/util/concurrent/k1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/x$a<",
        "TV;>;"
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# instance fields
.field private i:Lcom/google/common/util/concurrent/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private j:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/x$a;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/q0;

    iput-object p1, p0, Lcom/google/common/util/concurrent/k1;->i:Lcom/google/common/util/concurrent/q0;

    return-void
.end method

.method static synthetic Y(Lcom/google/common/util/concurrent/k1;)Lcom/google/common/util/concurrent/q0;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/k1;->i:Lcom/google/common/util/concurrent/q0;

    return-object p0
.end method

.method static synthetic Z(Lcom/google/common/util/concurrent/k1;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/k1;->j:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic a0(Lcom/google/common/util/concurrent/k1;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/k1;->j:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static b0(Lcom/google/common/util/concurrent/q0;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/k1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/k1;-><init>(Lcom/google/common/util/concurrent/q0;)V

    .line 2
    new-instance v1, Lcom/google/common/util/concurrent/k1$b;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/k1$b;-><init>(Lcom/google/common/util/concurrent/k1;)V

    .line 3
    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, v0, Lcom/google/common/util/concurrent/k1;->j:Ljava/util/concurrent/ScheduledFuture;

    .line 4
    invoke-static {}, Lcom/google/common/util/concurrent/x0;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected J()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/k1;->i:Lcom/google/common/util/concurrent/q0;

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/k1;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputFuture=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remaining delay=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/k1;->i:Lcom/google/common/util/concurrent/q0;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/d;->H(Ljava/util/concurrent/Future;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/k1;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/util/concurrent/k1;->i:Lcom/google/common/util/concurrent/q0;

    .line 5
    iput-object v0, p0, Lcom/google/common/util/concurrent/k1;->j:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
