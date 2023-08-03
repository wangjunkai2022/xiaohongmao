.class abstract Lcom/google/common/util/concurrent/a;
.super Lcom/google/common/util/concurrent/x$a;
.source "AbstractCatchingFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/a$b;,
        Lcom/google/common/util/concurrent/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        "F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/x$a<",
        "TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# instance fields
.field i:Lcom/google/common/util/concurrent/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TX;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/q0;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;TF;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/x$a;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/q0;

    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->i:Lcom/google/common/util/concurrent/q0;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->j:Ljava/lang/Class;

    .line 4
    invoke-static {p3}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->k:Ljava/lang/Object;

    return-void
.end method

.method static Y(Lcom/google/common/util/concurrent/q0;Ljava/lang/Class;Lcom/google/common/base/q;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/base/q<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/a$b;-><init>(Lcom/google/common/util/concurrent/q0;Ljava/lang/Class;Lcom/google/common/base/q;)V

    .line 2
    invoke-static {p3, v0}, Lcom/google/common/util/concurrent/x0;->p(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/d;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static Z(Lcom/google/common/util/concurrent/q0;Ljava/lang/Class;Lcom/google/common/util/concurrent/n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/n<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/a$a;-><init>(Lcom/google/common/util/concurrent/q0;Ljava/lang/Class;Lcom/google/common/util/concurrent/n;)V

    .line 2
    invoke-static {p3, v0}, Lcom/google/common/util/concurrent/x0;->p(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/d;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method protected J()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->i:Lcom/google/common/util/concurrent/q0;

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/a;->j:Ljava/lang/Class;

    .line 3
    iget-object v2, p0, Lcom/google/common/util/concurrent/a;->k:Ljava/lang/Object;

    .line 4
    invoke-super {p0}, Lcom/google/common/util/concurrent/d;->J()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputFuture=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "exceptionType=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], fallback=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v3, :cond_2

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract a0(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TX;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method

.method abstract b0(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->i:Lcom/google/common/util/concurrent/q0;

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/a;->j:Ljava/lang/Class;

    .line 3
    iget-object v2, p0, Lcom/google/common/util/concurrent/a;->k:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v1, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v5, v6

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    or-int/2addr v3, v5

    .line 4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/x$a;->isCancelled()Z

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_3

    return-void

    :cond_3
    const/4 v3, 0x0

    .line 5
    iput-object v3, p0, Lcom/google/common/util/concurrent/a;->i:Lcom/google/common/util/concurrent/q0;

    .line 6
    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/j0;->h(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    move-object v4, v3

    goto :goto_4

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_0
    move-exception v4

    .line 7
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    :goto_3
    move-object v5, v3

    :goto_4
    if-nez v4, :cond_4

    .line 8
    invoke-virtual {p0, v5}, Lcom/google/common/util/concurrent/d;->M(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_4
    invoke-static {v4, v1}, Lcom/google/common/util/concurrent/z0;->a(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/d;->O(Lcom/google/common/util/concurrent/q0;)Z

    return-void

    .line 11
    :cond_5
    :try_start_1
    invoke-virtual {p0, v2, v4}, Lcom/google/common/util/concurrent/a;->a0(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    iput-object v3, p0, Lcom/google/common/util/concurrent/a;->j:Ljava/lang/Class;

    .line 13
    iput-object v3, p0, Lcom/google/common/util/concurrent/a;->k:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->b0(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v0

    .line 15
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/d;->N(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16
    iput-object v3, p0, Lcom/google/common/util/concurrent/a;->j:Ljava/lang/Class;

    .line 17
    iput-object v3, p0, Lcom/google/common/util/concurrent/a;->k:Ljava/lang/Object;

    return-void

    :catchall_2
    move-exception v0

    .line 18
    iput-object v3, p0, Lcom/google/common/util/concurrent/a;->j:Ljava/lang/Class;

    .line 19
    iput-object v3, p0, Lcom/google/common/util/concurrent/a;->k:Ljava/lang/Object;

    .line 20
    throw v0
.end method

.method protected final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->i:Lcom/google/common/util/concurrent/q0;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/d;->H(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/util/concurrent/a;->i:Lcom/google/common/util/concurrent/q0;

    .line 3
    iput-object v0, p0, Lcom/google/common/util/concurrent/a;->j:Ljava/lang/Class;

    .line 4
    iput-object v0, p0, Lcom/google/common/util/concurrent/a;->k:Ljava/lang/Object;

    return-void
.end method
