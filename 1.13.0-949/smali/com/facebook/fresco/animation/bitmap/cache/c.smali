.class public Lcom/facebook/fresco/animation/bitmap/cache/c;
.super Ljava/lang/Object;
.source "KeepLastFrameCache.java"

# interfaces
.implements Lb1/b;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final d:I = -0x1


# instance fields
.field private a:I

.field private b:Lb1/b$a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private c:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->a:I

    return-void
.end method

.method private declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->b:Lb1/b$a;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->a:I

    if-eq v2, v1, :cond_0

    .line 2
    invoke-interface {v0, p0, v2}, Lb1/b$a;->b(Lb1/b;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->c:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->c:Lcom/facebook/common/references/a;

    .line 5
    iput v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->c:Lcom/facebook/common/references/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imageutils/a;->g(Landroid/graphics/Bitmap;)I

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

.method public c(ILcom/facebook/common/references/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frameNumber",
            "bitmapReference",
            "frameType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/c;->a()V
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

.method public d(Lb1/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameCacheListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->b:Lb1/b$a;

    return-void
.end method

.method public declared-synchronized e(ILcom/facebook/common/references/a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frameNumber",
            "bitmapReference",
            "frameType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->c:Lcom/facebook/common/references/a;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->c:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->c:Lcom/facebook/common/references/a;

    invoke-static {p3}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 5
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->b:Lb1/b$a;

    if-eqz p3, :cond_1

    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 6
    invoke-interface {p3, p0, v0}, Lb1/b$a;->b(Lb1/b;I)V

    .line 7
    :cond_1
    invoke-static {p2}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->c:Lcom/facebook/common/references/a;

    .line 8
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->b:Lb1/b$a;

    if-eqz p2, :cond_2

    .line 9
    invoke-interface {p2, p0, p1}, Lb1/b$a;->a(Lb1/b;I)V

    .line 10
    :cond_2
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(I)Lcom/facebook/common/references/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->c:Lcom/facebook/common/references/a;

    invoke-static {p1}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(III)Lcom/facebook/common/references/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frameNumber",
            "width",
            "height"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->c:Lcom/facebook/common/references/a;

    invoke-static {p1}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/c;->a()V

    .line 5
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->a:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->c:Lcom/facebook/common/references/a;

    invoke-static {p1}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(I)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->a:I

    if-ne v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/c;->c:Lcom/facebook/common/references/a;

    invoke-static {p1}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
