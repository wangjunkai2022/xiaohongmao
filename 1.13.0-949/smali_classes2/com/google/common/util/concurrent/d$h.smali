.class final Lcom/google/common/util/concurrent/d$h;
.super Lcom/google/common/util/concurrent/d$b;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/d$b;-><init>(Lcom/google/common/util/concurrent/d$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/util/concurrent/d$h;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/d;Lcom/google/common/util/concurrent/d$e;Lcom/google/common/util/concurrent/d$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/d<",
            "*>;",
            "Lcom/google/common/util/concurrent/d$e;",
            "Lcom/google/common/util/concurrent/d$e;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/d;->k(Lcom/google/common/util/concurrent/d;)Lcom/google/common/util/concurrent/d$e;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 3
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/d;->q(Lcom/google/common/util/concurrent/d;Lcom/google/common/util/concurrent/d$e;)Lcom/google/common/util/concurrent/d$e;

    const/4 p2, 0x1

    .line 4
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 5
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method b(Lcom/google/common/util/concurrent/d;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/d<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/d;->e(Lcom/google/common/util/concurrent/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 3
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/d;->f(Lcom/google/common/util/concurrent/d;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 4
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 5
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method c(Lcom/google/common/util/concurrent/d;Lcom/google/common/util/concurrent/d$l;Lcom/google/common/util/concurrent/d$l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/d<",
            "*>;",
            "Lcom/google/common/util/concurrent/d$l;",
            "Lcom/google/common/util/concurrent/d$l;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/d;->i(Lcom/google/common/util/concurrent/d;)Lcom/google/common/util/concurrent/d$l;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 3
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/d;->j(Lcom/google/common/util/concurrent/d;Lcom/google/common/util/concurrent/d$l;)Lcom/google/common/util/concurrent/d$l;

    const/4 p2, 0x1

    .line 4
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 5
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method d(Lcom/google/common/util/concurrent/d$l;Lcom/google/common/util/concurrent/d$l;)V
    .locals 0

    iput-object p2, p1, Lcom/google/common/util/concurrent/d$l;->b:Lcom/google/common/util/concurrent/d$l;

    return-void
.end method

.method e(Lcom/google/common/util/concurrent/d$l;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/common/util/concurrent/d$l;->a:Ljava/lang/Thread;

    return-void
.end method
