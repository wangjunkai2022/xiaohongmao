.class Lcom/facebook/datasource/h$a;
.super Lcom/facebook/datasource/a;
.source "IncreasingQualityDataSourceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/h$a$a;
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
.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/datasource/d<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .annotation build Ls7/a;
        value = "IncreasingQualityDataSource.this"
    .end annotation
.end field

.field private j:I
    .annotation build Ls7/a;
        value = "IncreasingQualityDataSource.this"
    .end annotation
.end field

.field private k:I

.field private l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private m:Ljava/lang/Throwable;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private n:Ljava/util/Map;
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

.field final synthetic o:Lcom/facebook/datasource/h;


# direct methods
.method public constructor <init>(Lcom/facebook/datasource/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/datasource/h$a;->o:Lcom/facebook/datasource/h;

    invoke-direct {p0}, Lcom/facebook/datasource/a;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/datasource/h;->a(Lcom/facebook/datasource/h;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/facebook/datasource/h$a;->B()V

    :cond_0
    return-void
.end method

.method private A(Lcom/facebook/datasource/d;)V
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

.method private B()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/h$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/h$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/datasource/h$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    iget-object v0, p0, Lcom/facebook/datasource/h$a;->o:Lcom/facebook/datasource/h;

    invoke-static {v0}, Lcom/facebook/datasource/h;->b(Lcom/facebook/datasource/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6
    iput v0, p0, Lcom/facebook/datasource/h$a;->k:I

    .line 7
    iput v0, p0, Lcom/facebook/datasource/h$a;->j:I

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/facebook/datasource/h$a;->i:Ljava/util/ArrayList;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    iget-object v2, p0, Lcom/facebook/datasource/h$a;->o:Lcom/facebook/datasource/h;

    invoke-static {v2}, Lcom/facebook/datasource/h;->b(Lcom/facebook/datasource/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/internal/m;

    invoke-interface {v2}, Lcom/facebook/common/internal/m;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/datasource/d;

    .line 10
    iget-object v3, p0, Lcom/facebook/datasource/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v3, Lcom/facebook/datasource/h$a$a;

    invoke-direct {v3, p0, v1}, Lcom/facebook/datasource/h$a$a;-><init>(Lcom/facebook/datasource/h$a;I)V

    invoke-static {}, Lcom/facebook/common/executors/a;->a()Lcom/facebook/common/executors/a;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/datasource/d;->f(Lcom/facebook/datasource/f;Ljava/util/concurrent/Executor;)V

    .line 12
    invoke-interface {v2}, Lcom/facebook/datasource/d;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized C(I)Lcom/facebook/datasource/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/h$a;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/datasource/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/facebook/datasource/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized D(I)Lcom/facebook/datasource/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/datasource/h$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/datasource/h$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/datasource/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized E()Lcom/facebook/datasource/d;
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
    iget v0, p0, Lcom/facebook/datasource/h$a;->j:I

    invoke-direct {p0, v0}, Lcom/facebook/datasource/h$a;->D(I)Lcom/facebook/datasource/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/h$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/facebook/datasource/h$a;->k:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/datasource/h$a;->m:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/facebook/datasource/h$a;->n:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/datasource/a;->q(Ljava/lang/Throwable;Ljava/util/Map;)Z

    :cond_0
    return-void
.end method

.method private G(ILcom/facebook/datasource/d;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "dataSource",
            "isFinished"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/d<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/facebook/datasource/h$a;->j:I

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/datasource/h$a;->D(I)Lcom/facebook/datasource/d;

    move-result-object v1

    if-ne p2, v1, :cond_4

    iget p2, p0, Lcom/facebook/datasource/h$a;->j:I

    if-ne p1, p2, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/facebook/datasource/h$a;->E()Lcom/facebook/datasource/d;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/facebook/datasource/h$a;->j:I

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    iput p1, p0, Lcom/facebook/datasource/h$a;->j:I

    .line 6
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-le v0, p1, :cond_3

    .line 7
    invoke-direct {p0, v0}, Lcom/facebook/datasource/h$a;->C(I)Lcom/facebook/datasource/d;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/facebook/datasource/h$a;->A(Lcom/facebook/datasource/d;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    return-void

    .line 8
    :cond_4
    :goto_3
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private H(ILcom/facebook/datasource/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/h$a;->J(ILcom/facebook/datasource/d;)Lcom/facebook/datasource/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/datasource/h$a;->A(Lcom/facebook/datasource/d;)V

    if-nez p1, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/facebook/datasource/d;->e()Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/datasource/h$a;->m:Ljava/lang/Throwable;

    .line 3
    invoke-interface {p2}, Lcom/facebook/datasource/d;->getExtras()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/datasource/h$a;->n:Ljava/util/Map;

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/facebook/datasource/h$a;->F()V

    return-void
.end method

.method private I(ILcom/facebook/datasource/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/datasource/d;->b()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/datasource/h$a;->G(ILcom/facebook/datasource/d;Z)V

    .line 2
    invoke-direct {p0}, Lcom/facebook/datasource/h$a;->E()Lcom/facebook/datasource/d;

    move-result-object v0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-interface {p2}, Lcom/facebook/datasource/d;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Lcom/facebook/datasource/d;->getExtras()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/datasource/a;->v(Ljava/lang/Object;ZLjava/util/Map;)Z

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/facebook/datasource/h$a;->F()V

    return-void
.end method

.method private declared-synchronized J(ILcom/facebook/datasource/d;)Lcom/facebook/datasource/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/datasource/d<",
            "TT;>;)",
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/datasource/h$a;->E()Lcom/facebook/datasource/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/datasource/h$a;->D(I)Lcom/facebook/datasource/d;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/datasource/h$a;->C(I)Lcom/facebook/datasource/d;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic y(Lcom/facebook/datasource/h$a;ILcom/facebook/datasource/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/h$a;->I(ILcom/facebook/datasource/d;)V

    return-void
.end method

.method static synthetic z(Lcom/facebook/datasource/h$a;ILcom/facebook/datasource/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/datasource/h$a;->H(ILcom/facebook/datasource/d;)V

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
    iget-object v0, p0, Lcom/facebook/datasource/h$a;->o:Lcom/facebook/datasource/h;

    invoke-static {v0}, Lcom/facebook/datasource/h;->a(Lcom/facebook/datasource/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/datasource/h$a;->B()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/facebook/datasource/h$a;->E()Lcom/facebook/datasource/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/facebook/datasource/d;->a()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
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
    iget-object v0, p0, Lcom/facebook/datasource/h$a;->o:Lcom/facebook/datasource/h;

    invoke-static {v0}, Lcom/facebook/datasource/h;->a(Lcom/facebook/datasource/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/datasource/h$a;->B()V

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-super {p0}, Lcom/facebook/datasource/a;->close()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/facebook/datasource/h$a;->i:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lcom/facebook/datasource/h$a;->i:Ljava/util/ArrayList;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/datasource/d;

    invoke-direct {p0, v2}, Lcom/facebook/datasource/h$a;->A(Lcom/facebook/datasource/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
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
    iget-object v0, p0, Lcom/facebook/datasource/h$a;->o:Lcom/facebook/datasource/h;

    invoke-static {v0}, Lcom/facebook/datasource/h;->a(Lcom/facebook/datasource/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/datasource/h$a;->B()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/facebook/datasource/h$a;->E()Lcom/facebook/datasource/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/facebook/datasource/d;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
