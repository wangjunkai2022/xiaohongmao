.class Lcom/google/common/util/concurrent/l1;
.super Lcom/google/common/util/concurrent/x$a;
.source "TrustedListenableFutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/l1$a;,
        Lcom/google/common/util/concurrent/l1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/x$a<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# instance fields
.field private volatile i:Lcom/google/common/util/concurrent/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/o0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/common/util/concurrent/x$a;-><init>()V

    .line 4
    new-instance v0, Lcom/google/common/util/concurrent/l1$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/l1$a;-><init>(Lcom/google/common/util/concurrent/l1;Lcom/google/common/util/concurrent/m;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/l1;->i:Lcom/google/common/util/concurrent/o0;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/x$a;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/l1$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/l1$b;-><init>(Lcom/google/common/util/concurrent/l1;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/l1;->i:Lcom/google/common/util/concurrent/o0;

    return-void
.end method

.method static Y(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/l1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/m<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/l1<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/l1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/l1;-><init>(Lcom/google/common/util/concurrent/m;)V

    return-object v0
.end method

.method static Z(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/l1;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/google/common/util/concurrent/l1<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/l1;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/l1;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static a0(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/l1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/l1<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/l1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/l1;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method protected J()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/l1;->i:Lcom/google/common/util/concurrent/o0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/common/util/concurrent/d;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/l1;->i:Lcom/google/common/util/concurrent/o0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/o0;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/util/concurrent/l1;->i:Lcom/google/common/util/concurrent/o0;

    return-void
.end method

.method protected s()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/util/concurrent/d;->s()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/d;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/l1;->i:Lcom/google/common/util/concurrent/o0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/o0;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/common/util/concurrent/l1;->i:Lcom/google/common/util/concurrent/o0;

    return-void
.end method
