.class final Lcom/google/common/util/concurrent/c1;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/c1$b;,
        Lcom/google/common/util/concurrent/c1$c;
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field private static final f:Ljava/util/logging/Logger;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/Deque;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "queue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/common/util/concurrent/c1$c;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "queue"
    .end annotation
.end field

.field private d:J
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "queue"
    .end annotation
.end field

.field private final e:Lcom/google/common/util/concurrent/c1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/c1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/c1;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/c1;->b:Ljava/util/Deque;

    .line 3
    sget-object v0, Lcom/google/common/util/concurrent/c1$c;->a:Lcom/google/common/util/concurrent/c1$c;

    iput-object v0, p0, Lcom/google/common/util/concurrent/c1;->c:Lcom/google/common/util/concurrent/c1$c;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/google/common/util/concurrent/c1;->d:J

    .line 5
    new-instance v0, Lcom/google/common/util/concurrent/c1$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/c1$b;-><init>(Lcom/google/common/util/concurrent/c1;Lcom/google/common/util/concurrent/c1$a;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/c1;->e:Lcom/google/common/util/concurrent/c1$b;

    .line 6
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/c1;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/c1;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/c1;->b:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/util/concurrent/c1;)Lcom/google/common/util/concurrent/c1$c;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/c1;->c:Lcom/google/common/util/concurrent/c1$c;

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/util/concurrent/c1;Lcom/google/common/util/concurrent/c1$c;)Lcom/google/common/util/concurrent/c1$c;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/c1;->c:Lcom/google/common/util/concurrent/c1$c;

    return-object p1
.end method

.method static synthetic d(Lcom/google/common/util/concurrent/c1;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/common/util/concurrent/c1;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/util/concurrent/c1;->d:J

    return-wide v0
.end method

.method static synthetic e()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/c1;->f:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/c1;->b:Ljava/util/Deque;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/c1;->c:Lcom/google/common/util/concurrent/c1$c;

    sget-object v2, Lcom/google/common/util/concurrent/c1$c;->d:Lcom/google/common/util/concurrent/c1$c;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/google/common/util/concurrent/c1$c;->c:Lcom/google/common/util/concurrent/c1$c;

    if-ne v1, v2, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    iget-wide v3, p0, Lcom/google/common/util/concurrent/c1;->d:J

    .line 5
    new-instance v1, Lcom/google/common/util/concurrent/c1$a;

    invoke-direct {v1, p0, p1}, Lcom/google/common/util/concurrent/c1$a;-><init>(Lcom/google/common/util/concurrent/c1;Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Lcom/google/common/util/concurrent/c1;->b:Ljava/util/Deque;

    invoke-interface {p1, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object p1, Lcom/google/common/util/concurrent/c1$c;->b:Lcom/google/common/util/concurrent/c1$c;

    iput-object p1, p0, Lcom/google/common/util/concurrent/c1;->c:Lcom/google/common/util/concurrent/c1$c;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 9
    :try_start_1
    iget-object v6, p0, Lcom/google/common/util/concurrent/c1;->a:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/google/common/util/concurrent/c1;->e:Lcom/google/common/util/concurrent/c1$b;

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    iget-object v1, p0, Lcom/google/common/util/concurrent/c1;->c:Lcom/google/common/util/concurrent/c1$c;

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 11
    :cond_2
    iget-object v6, p0, Lcom/google/common/util/concurrent/c1;->b:Ljava/util/Deque;

    monitor-enter v6

    .line 12
    :try_start_2
    iget-wide v0, p0, Lcom/google/common/util/concurrent/c1;->d:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget-object v0, p0, Lcom/google/common/util/concurrent/c1;->c:Lcom/google/common/util/concurrent/c1$c;

    if-ne v0, p1, :cond_3

    .line 13
    iput-object v2, p0, Lcom/google/common/util/concurrent/c1;->c:Lcom/google/common/util/concurrent/c1$c;

    .line 14
    :cond_3
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15
    :goto_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/c1;->b:Ljava/util/Deque;

    monitor-enter v2

    .line 16
    :try_start_3
    iget-object v3, p0, Lcom/google/common/util/concurrent/c1;->c:Lcom/google/common/util/concurrent/c1$c;

    sget-object v4, Lcom/google/common/util/concurrent/c1$c;->a:Lcom/google/common/util/concurrent/c1$c;

    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/google/common/util/concurrent/c1$c;->b:Lcom/google/common/util/concurrent/c1$c;

    if-ne v3, v4, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/google/common/util/concurrent/c1;->b:Ljava/util/Deque;

    .line 17
    invoke-interface {v3, v1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 18
    :goto_2
    instance-of v1, p1, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    .line 19
    monitor-exit v2

    return-void

    .line 20
    :cond_6
    throw p1

    :catchall_1
    move-exception p1

    .line 21
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 22
    :cond_7
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/google/common/util/concurrent/c1;->b:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
