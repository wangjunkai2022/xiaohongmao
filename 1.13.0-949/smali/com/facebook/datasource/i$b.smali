.class Lcom/facebook/datasource/i$b;
.super Lcom/facebook/datasource/a;
.source "RetainingDataSourceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/i$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private i:Lcom/facebook/datasource/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .annotation build Ls7/a;
        value = "RetainingDataSource.this"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/datasource/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/datasource/i$b;->i:Lcom/facebook/datasource/d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/datasource/i$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/facebook/datasource/i$b;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/facebook/datasource/i$b;Lcom/facebook/datasource/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/datasource/i$b;->E(Lcom/facebook/datasource/d;)V

    return-void
.end method

.method private static B(Lcom/facebook/datasource/d;)V
    .locals 0
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/datasource/d<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/facebook/datasource/d;->close()Z

    :cond_0
    return-void
.end method

.method private C()V
    .locals 0

    return-void
.end method

.method private D(Lcom/facebook/datasource/d;)V
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
    iget-object v0, p0, Lcom/facebook/datasource/i$b;->i:Lcom/facebook/datasource/d;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-interface {p1}, Lcom/facebook/datasource/d;->getExtras()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/datasource/a;->v(Ljava/lang/Object;ZLjava/util/Map;)Z

    :cond_0
    return-void
.end method

.method private E(Lcom/facebook/datasource/d;)V
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
    iget-object v0, p0, Lcom/facebook/datasource/i$b;->i:Lcom/facebook/datasource/d;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/datasource/d;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/facebook/datasource/a;->s(F)Z

    :cond_0
    return-void
.end method

.method static synthetic y(Lcom/facebook/datasource/i$b;Lcom/facebook/datasource/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/datasource/i$b;->D(Lcom/facebook/datasource/d;)V

    return-void
.end method

.method static synthetic z(Lcom/facebook/datasource/i$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/datasource/i$b;->C()V

    return-void
.end method


# virtual methods
.method public F(Lcom/facebook/common/internal/m;)V
    .locals 3
    .param p1    # Lcom/facebook/common/internal/m;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/datasource/d<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/datasource/d;

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 3
    :goto_0
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {p1}, Lcom/facebook/datasource/i$b;->B(Lcom/facebook/datasource/d;)V

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/facebook/datasource/i$b;->i:Lcom/facebook/datasource/d;

    .line 8
    iput-object p1, p0, Lcom/facebook/datasource/i$b;->i:Lcom/facebook/datasource/d;

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 10
    new-instance v2, Lcom/facebook/datasource/i$b$a;

    invoke-direct {v2, p0, v0}, Lcom/facebook/datasource/i$b$a;-><init>(Lcom/facebook/datasource/i$b;Lcom/facebook/datasource/i$a;)V

    invoke-static {}, Lcom/facebook/common/executors/a;->a()Lcom/facebook/common/executors/a;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/facebook/datasource/d;->f(Lcom/facebook/datasource/f;Ljava/util/concurrent/Executor;)V

    .line 11
    :cond_3
    invoke-static {v1}, Lcom/facebook/datasource/i$b;->B(Lcom/facebook/datasource/d;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

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
    iget-object v0, p0, Lcom/facebook/datasource/i$b;->i:Lcom/facebook/datasource/d;

    if-eqz v0, :cond_0

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
    .locals 2

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
    iget-object v0, p0, Lcom/facebook/datasource/i$b;->i:Lcom/facebook/datasource/d;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/facebook/datasource/i$b;->i:Lcom/facebook/datasource/d;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v0}, Lcom/facebook/datasource/i$b;->B(Lcom/facebook/datasource/d;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/i$b;->i:Lcom/facebook/datasource/d;

    if-eqz v0, :cond_0

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

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
