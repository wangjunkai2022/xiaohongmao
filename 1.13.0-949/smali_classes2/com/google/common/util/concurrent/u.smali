.class public final Lcom/google/common/util/concurrent/u;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/u$a;
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field private static final c:Ljava/util/logging/Logger;


# instance fields
.field private a:Lcom/google/common/util/concurrent/u$a;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private b:Z
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/u;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/google/common/util/concurrent/u;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "Runnable was null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/u;->b:Z

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/google/common/util/concurrent/u$a;

    iget-object v1, p0, Lcom/google/common/util/concurrent/u;->a:Lcom/google/common/util/concurrent/u$a;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/common/util/concurrent/u$a;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/u$a;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/u;->a:Lcom/google/common/util/concurrent/u$a;

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/u;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/u;->b:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/u;->b:Z

    .line 5
    iget-object v0, p0, Lcom/google/common/util/concurrent/u;->a:Lcom/google/common/util/concurrent/u$a;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/google/common/util/concurrent/u;->a:Lcom/google/common/util/concurrent/u$a;

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    iget-object v2, v0, Lcom/google/common/util/concurrent/u$a;->c:Lcom/google/common/util/concurrent/u$a;

    .line 9
    iput-object v1, v0, Lcom/google/common/util/concurrent/u$a;->c:Lcom/google/common/util/concurrent/u$a;

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 10
    iget-object v0, v1, Lcom/google/common/util/concurrent/u$a;->a:Ljava/lang/Runnable;

    iget-object v2, v1, Lcom/google/common/util/concurrent/u$a;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/u;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    iget-object v1, v1, Lcom/google/common/util/concurrent/u$a;->c:Lcom/google/common/util/concurrent/u$a;

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
