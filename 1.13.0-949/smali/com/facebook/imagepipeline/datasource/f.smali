.class public Lcom/facebook/imagepipeline/datasource/f;
.super Lcom/facebook/datasource/a;
.source "ListDataSource.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/datasource/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/a<",
        "Ljava/util/List<",
        "Lcom/facebook/common/references/a<",
        "TT;>;>;>;"
    }
.end annotation


# instance fields
.field private final i:[Lcom/facebook/datasource/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private j:I
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field


# direct methods
.method protected constructor <init>([Lcom/facebook/datasource/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/datasource/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/datasource/f;->i:[Lcom/facebook/datasource/d;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/facebook/imagepipeline/datasource/f;->j:I

    return-void
.end method

.method static synthetic A(Lcom/facebook/imagepipeline/datasource/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/f;->H()V

    return-void
.end method

.method static synthetic B(Lcom/facebook/imagepipeline/datasource/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/f;->I()V

    return-void
.end method

.method public static varargs C([Lcom/facebook/datasource/d;)Lcom/facebook/imagepipeline/datasource/f;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;)",
            "Lcom/facebook/imagepipeline/datasource/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/j;->o(Z)V

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/datasource/f;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/datasource/f;-><init>([Lcom/facebook/datasource/d;)V

    .line 4
    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    .line 5
    new-instance v4, Lcom/facebook/imagepipeline/datasource/f$b;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/facebook/imagepipeline/datasource/f$b;-><init>(Lcom/facebook/imagepipeline/datasource/f;Lcom/facebook/imagepipeline/datasource/f$a;)V

    .line 6
    invoke-static {}, Lcom/facebook/common/executors/a;->a()Lcom/facebook/common/executors/a;

    move-result-object v5

    .line 7
    invoke-interface {v3, v4, v5}, Lcom/facebook/datasource/d;->f(Lcom/facebook/datasource/f;Ljava/util/concurrent/Executor;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private declared-synchronized E()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/datasource/f;->j:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/imagepipeline/datasource/f;->j:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/datasource/f;->i:[Lcom/facebook/datasource/d;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private F()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/datasource/a;->p(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private G(Lcom/facebook/datasource/d;)V
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
            "Lcom/facebook/common/references/a<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/d;->e()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Unknown failure cause"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/a;->p(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/f;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0, v1}, Lcom/facebook/datasource/a;->v(Ljava/lang/Object;ZLjava/util/Map;)Z

    :cond_0
    return-void
.end method

.method private I()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/f;->i:[Lcom/facebook/datasource/d;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    invoke-interface {v4}, Lcom/facebook/datasource/d;->getProgress()F

    move-result v4

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/f;->i:[Lcom/facebook/datasource/d;

    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/facebook/datasource/a;->s(F)Z

    return-void
.end method

.method static synthetic y(Lcom/facebook/imagepipeline/datasource/f;Lcom/facebook/datasource/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/datasource/f;->G(Lcom/facebook/datasource/d;)V

    return-void
.end method

.method static synthetic z(Lcom/facebook/imagepipeline/datasource/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/f;->F()V

    return-void
.end method


# virtual methods
.method public declared-synchronized D()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/f;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/f;->i:[Lcom/facebook/datasource/d;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/f;->i:[Lcom/facebook/datasource/d;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 5
    invoke-interface {v4}, Lcom/facebook/datasource/d;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/f;->D()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public close()Z
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/facebook/datasource/a;->close()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/datasource/f;->i:[Lcom/facebook/datasource/d;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 3
    invoke-interface {v3}, Lcom/facebook/datasource/d;->close()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized d()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/datasource/a;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/datasource/f;->j:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/datasource/f;->i:[Lcom/facebook/datasource/d;

    array-length v1, v1
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
