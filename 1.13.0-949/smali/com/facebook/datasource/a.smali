.class public abstract Lcom/facebook/datasource/a;
.super Ljava/lang/Object;
.source "AbstractDataSource.java"

# interfaces
.implements Lcom/facebook/datasource/d;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/a$c;,
        Lcom/facebook/datasource/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/d<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static volatile h:Lcom/facebook/datasource/a$c;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private b:Lcom/facebook/datasource/a$d;
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private c:Z
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private e:Ljava/lang/Throwable;
    .annotation runtime Lr7/h;
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private f:F
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Lcom/facebook/datasource/f<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/datasource/a;->d:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/facebook/datasource/a;->e:Ljava/lang/Throwable;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/facebook/datasource/a;->f:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/facebook/datasource/a;->c:Z

    .line 6
    sget-object v0, Lcom/facebook/datasource/a$d;->a:Lcom/facebook/datasource/a$d;

    iput-object v0, p0, Lcom/facebook/datasource/a;->b:Lcom/facebook/datasource/a$d;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/datasource/a;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public static j()Lcom/facebook/datasource/a$c;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    sget-object v0, Lcom/facebook/datasource/a;->h:Lcom/facebook/datasource/a$c;

    return-object v0
.end method

.method private l()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->h()Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/facebook/datasource/a;->x()Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/facebook/datasource/a;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 4
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/datasource/f;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v4, v3, v0, v1}, Lcom/facebook/datasource/a;->k(Lcom/facebook/datasource/f;Ljava/util/concurrent/Executor;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static n(Lcom/facebook/datasource/a$c;)V
    .locals 0
    .param p0    # Lcom/facebook/datasource/a$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSourceInstrumenter"
        }
    .end annotation

    sput-object p0, Lcom/facebook/datasource/a;->h:Lcom/facebook/datasource/a$c;

    return-void
.end method

.method private declared-synchronized r(Ljava/lang/Throwable;Ljava/util/Map;)Z
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "throwable",
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/datasource/a;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/datasource/a;->b:Lcom/facebook/datasource/a$d;

    sget-object v1, Lcom/facebook/datasource/a$d;->a:Lcom/facebook/datasource/a$d;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/facebook/datasource/a$d;->c:Lcom/facebook/datasource/a$d;

    iput-object v0, p0, Lcom/facebook/datasource/a;->b:Lcom/facebook/datasource/a$d;

    .line 3
    iput-object p1, p0, Lcom/facebook/datasource/a;->e:Ljava/lang/Throwable;

    .line 4
    iput-object p2, p0, Lcom/facebook/datasource/a;->a:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 6
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized t(F)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/datasource/a;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/datasource/a;->b:Lcom/facebook/datasource/a$d;

    sget-object v2, Lcom/facebook/datasource/a$d;->a:Lcom/facebook/datasource/a$d;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/facebook/datasource/a;->f:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/facebook/datasource/a;->f:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    .line 6
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private w(Ljava/lang/Object;Z)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "isLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2
    :try_start_1
    iget-boolean v1, p0, Lcom/facebook/datasource/a;->c:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/facebook/datasource/a;->b:Lcom/facebook/datasource/a$d;

    sget-object v2, Lcom/facebook/datasource/a$d;->a:Lcom/facebook/datasource/a$d;

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    sget-object p2, Lcom/facebook/datasource/a$d;->b:Lcom/facebook/datasource/a$d;

    iput-object p2, p0, Lcom/facebook/datasource/a;->b:Lcom/facebook/datasource/a$d;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 4
    iput p2, p0, Lcom/facebook/datasource/a;->f:F

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/facebook/datasource/a;->d:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eq p2, p1, :cond_2

    .line 6
    :try_start_2
    iput-object p1, p0, Lcom/facebook/datasource/a;->d:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_0
    const/4 p2, 0x1

    .line 7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/a;->i(Ljava/lang/Object;)V

    :cond_3
    return p2

    :cond_4
    :goto_1
    const/4 p2, 0x0

    .line 9
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/a;->i(Ljava/lang/Object;)V

    :cond_5
    return p2

    :catchall_1
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 11
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p0, v0}, Lcom/facebook/datasource/a;->i(Ljava/lang/Object;)V

    .line 13
    :cond_6
    throw p1
.end method

.method private declared-synchronized x()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/datasource/a;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/a;->b:Lcom/facebook/datasource/a$d;

    sget-object v1, Lcom/facebook/datasource/a$d;->a:Lcom/facebook/datasource/a$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/datasource/a;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/facebook/datasource/a;->c:Z

    .line 5
    iget-object v1, p0, Lcom/facebook/datasource/a;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lcom/facebook/datasource/a;->d:Ljava/lang/Object;

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Lcom/facebook/datasource/a;->i(Ljava/lang/Object;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/facebook/datasource/a;->l()V

    .line 11
    :cond_2
    monitor-enter p0

    .line 12
    :try_start_1
    iget-object v1, p0, Lcom/facebook/datasource/a;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 13
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 14
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/a;->e:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Lcom/facebook/datasource/f;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dataSubscriber",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/f<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/datasource/a;->c:Z

    if-eqz v0, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/datasource/a;->b:Lcom/facebook/datasource/a$d;

    sget-object v1, Lcom/facebook/datasource/a$d;->a:Lcom/facebook/datasource/a$d;

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/facebook/datasource/a;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/datasource/a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/facebook/datasource/a;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 9
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->h()Z

    move-result v0

    invoke-direct {p0}, Lcom/facebook/datasource/a;->x()Z

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/datasource/a;->k(Lcom/facebook/datasource/f;Ljava/util/concurrent/Executor;ZZ)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/datasource/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized getProgress()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/datasource/a;->f:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/a;->b:Lcom/facebook/datasource/a$d;

    sget-object v1, Lcom/facebook/datasource/a$d;->c:Lcom/facebook/datasource/a$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected i(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/datasource/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected k(Lcom/facebook/datasource/f;Ljava/util/concurrent/Executor;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "dataSubscriber",
            "executor",
            "isFailure",
            "isCancellation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/f<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/datasource/a$a;

    invoke-direct {v0, p0, p3, p1, p4}, Lcom/facebook/datasource/a$a;-><init>(Lcom/facebook/datasource/a;ZLcom/facebook/datasource/f;Z)V

    .line 2
    invoke-static {}, Lcom/facebook/datasource/a;->j()Lcom/facebook/datasource/a$c;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p3, "AbstractDataSource_notifyDataSubscriber"

    .line 3
    invoke-interface {p1, v0, p3}, Lcom/facebook/datasource/a$c;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    .line 4
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/a;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/datasource/f;

    .line 3
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 4
    new-instance v3, Lcom/facebook/datasource/a$b;

    invoke-direct {v3, p0, v2}, Lcom/facebook/datasource/a$b;-><init>(Lcom/facebook/datasource/a;Lcom/facebook/datasource/f;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected o(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/datasource/a;->a:Ljava/util/Map;

    return-void
.end method

.method protected p(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/datasource/a;->q(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method protected q(Ljava/lang/Throwable;Ljava/util/Map;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "throwable",
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/a;->r(Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/datasource/a;->l()V

    :cond_0
    return p1
.end method

.method protected s(F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/datasource/a;->t(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->m()V

    :cond_0
    return p1
.end method

.method public u(Ljava/lang/Object;Z)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "isLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/datasource/a;->v(Ljava/lang/Object;ZLjava/util/Map;)Z

    move-result p1

    return p1
.end method

.method protected v(Ljava/lang/Object;ZLjava/util/Map;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "isLast",
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/facebook/datasource/a;->o(Ljava/util/Map;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/a;->w(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/facebook/datasource/a;->l()V

    :cond_0
    return p1
.end method
