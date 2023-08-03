.class public Lcom/facebook/imagepipeline/image/a;
.super Lcom/facebook/imagepipeline/image/c;
.source "CloseableAnimatedImage.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private d:Lcom/facebook/imagepipeline/animated/base/f;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageResult"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/image/a;-><init>(Lcom/facebook/imagepipeline/animated/base/f;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageResult",
            "isStateful"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/c;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/a;->d:Lcom/facebook/imagepipeline/animated/base/f;

    .line 4
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/image/a;->e:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->d:Lcom/facebook/imagepipeline/animated/base/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->f()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->b()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->d:Lcom/facebook/imagepipeline/animated/base/f;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/facebook/imagepipeline/image/a;->d:Lcom/facebook/imagepipeline/animated/base/f;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/image/a;->e:Z

    return v0
.end method

.method public declared-synchronized getHeight()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->d:Lcom/facebook/imagepipeline/animated/base/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->f()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidth()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->d:Lcom/facebook/imagepipeline/animated/base/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->f()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->getWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->d:Lcom/facebook/imagepipeline/animated/base/f;
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

.method public declared-synchronized k()Lcom/facebook/imagepipeline/animated/base/d;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->d:Lcom/facebook/imagepipeline/animated/base/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/f;->f()Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()Lcom/facebook/imagepipeline/animated/base/f;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/a;->d:Lcom/facebook/imagepipeline/animated/base/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
