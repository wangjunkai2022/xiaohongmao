.class public Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;
.super Ljava/lang/Object;
.source "PageRecorder.java"


# instance fields
.field private a:I

.field private b:Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/a;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;

    .line 4
    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;->a()I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;->a()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->c:I

    return v0
.end method

.method public d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->a:I

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;->b(I)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->c:I

    if-lez v1, :cond_0

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->a:I

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;->b(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;->a()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->a:I

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/b;->b(I)I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;->c:I

    return-void
.end method
