.class Lcom/facebook/datasource/g$b;
.super Lcom/facebook/datasource/a;
.source "FirstAvailableDataSourceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/g$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/datasource/a<",
        "TT;>;"
    }
.end annotation

.annotation build Ls7/d;
.end annotation


# instance fields
.field private i:I

.field private j:Lcom/facebook/datasource/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private k:Lcom/facebook/datasource/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field final synthetic l:Lcom/facebook/datasource/g;


# direct methods
.method public constructor <init>(Lcom/facebook/datasource/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/datasource/g$b;->l:Lcom/facebook/datasource/g;

    invoke-direct {p0}, Lcom/facebook/datasource/a;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/facebook/datasource/g$b;->i:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/facebook/datasource/g$b;->j:Lcom/facebook/datasource/d;

    .line 4
    iput-object p1, p0, Lcom/facebook/datasource/g$b;->k:Lcom/facebook/datasource/d;

    .line 5
    invoke-direct {p0}, Lcom/facebook/datasource/g$b;->I()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No data source supplier or supplier returned null."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/facebook/datasource/a;->p(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized A(Lcom/facebook/datasource/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "TT;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/datasource/g$b;->j:Lcom/facebook/datasource/d;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/facebook/datasource/g$b;->j:Lcom/facebook/datasource/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 3
    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private B(Lcom/facebook/datasource/d;)V
    .locals 0
    .param p1    # Lcom/facebook/datasource/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/facebook/datasource/d;->close()Z

    :cond_0
    return-void
.end method

.method private declared-synchronized C()Lcom/facebook/datasource/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/g$b;->k:Lcom/facebook/datasource/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized D()Lcom/facebook/common/internal/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/datasource/g$b;->i:I

    iget-object v1, p0, Lcom/facebook/datasource/g$b;->l:Lcom/facebook/datasource/g;

    invoke-static {v1}, Lcom/facebook/datasource/g;->a(Lcom/facebook/datasource/g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/datasource/g$b;->l:Lcom/facebook/datasource/g;

    invoke-static {v0}, Lcom/facebook/datasource/g;->a(Lcom/facebook/datasource/g;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/facebook/datasource/g$b;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/datasource/g$b;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/internal/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private E(Lcom/facebook/datasource/d;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataSource",
            "isFinished"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/g$b;->j:Lcom/facebook/datasource/d;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/datasource/g$b;->k:Lcom/facebook/datasource/d;

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/facebook/datasource/g$b;->k:Lcom/facebook/datasource/d;

    .line 4
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0, v0}, Lcom/facebook/datasource/g$b;->B(Lcom/facebook/datasource/d;)V

    return-void

    .line 6
    :cond_3
    :goto_2
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private F(Lcom/facebook/datasource/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/datasource/g$b;->A(Lcom/facebook/datasource/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/facebook/datasource/g$b;->C()Lcom/facebook/datasource/d;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/datasource/g$b;->B(Lcom/facebook/datasource/d;)V

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/facebook/datasource/g$b;->I()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/facebook/datasource/d;->e()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/datasource/d;->getExtras()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/facebook/datasource/a;->q(Ljava/lang/Throwable;Ljava/util/Map;)Z

    :cond_2
    return-void
.end method

.method private G(Lcom/facebook/datasource/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/d;->b()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/datasource/g$b;->E(Lcom/facebook/datasource/d;Z)V

    .line 2
    invoke-direct {p0}, Lcom/facebook/datasource/g$b;->C()Lcom/facebook/datasource/d;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1}, Lcom/facebook/datasource/d;->b()Z

    move-result v1

    invoke-interface {p1}, Lcom/facebook/datasource/d;->getExtras()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/datasource/a;->v(Ljava/lang/Object;ZLjava/util/Map;)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized H(Lcom/facebook/datasource/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d<",
            "TT;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return p1

    .line 3
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/facebook/datasource/g$b;->j:Lcom/facebook/datasource/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private I()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/facebook/datasource/g$b;->D()Lcom/facebook/common/internal/m;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/datasource/d;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/datasource/g$b;->H(Lcom/facebook/datasource/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 4
    new-instance v2, Lcom/facebook/datasource/g$b$a;

    invoke-direct {v2, p0, v1}, Lcom/facebook/datasource/g$b$a;-><init>(Lcom/facebook/datasource/g$b;Lcom/facebook/datasource/g$a;)V

    invoke-static {}, Lcom/facebook/common/executors/a;->a()Lcom/facebook/common/executors/a;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/facebook/datasource/d;->f(Lcom/facebook/datasource/f;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x1

    return v0

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/datasource/g$b;->B(Lcom/facebook/datasource/d;)V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic y(Lcom/facebook/datasource/g$b;Lcom/facebook/datasource/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/datasource/g$b;->F(Lcom/facebook/datasource/d;)V

    return-void
.end method

.method static synthetic z(Lcom/facebook/datasource/g$b;Lcom/facebook/datasource/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/datasource/g$b;->G(Lcom/facebook/datasource/d;)V

    return-void
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

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/datasource/g$b;->C()Lcom/facebook/datasource/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/facebook/datasource/d;->a()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

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
    invoke-super {p0}, Lcom/facebook/datasource/a;->close()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/datasource/g$b;->j:Lcom/facebook/datasource/d;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/facebook/datasource/g$b;->j:Lcom/facebook/datasource/d;

    .line 6
    iget-object v2, p0, Lcom/facebook/datasource/g$b;->k:Lcom/facebook/datasource/d;

    .line 7
    iput-object v1, p0, Lcom/facebook/datasource/g$b;->k:Lcom/facebook/datasource/d;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-direct {p0, v2}, Lcom/facebook/datasource/g$b;->B(Lcom/facebook/datasource/d;)V

    .line 10
    invoke-direct {p0, v0}, Lcom/facebook/datasource/g$b;->B(Lcom/facebook/datasource/d;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/datasource/g$b;->C()Lcom/facebook/datasource/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/facebook/datasource/d;->d()Z

    move-result v0
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
