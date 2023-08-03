.class public Lcom/facebook/imagepipeline/memory/b;
.super Ljava/lang/Object;
.source "BitmapCounter.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private a:I
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private b:J
    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:Lcom/facebook/common/references/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/h<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxCount",
            "maxSize"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/j;->d(Ljava/lang/Boolean;)V

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->d(Ljava/lang/Boolean;)V

    .line 4
    iput p1, p0, Lcom/facebook/imagepipeline/memory/b;->c:I

    .line 5
    iput p2, p0, Lcom/facebook/imagepipeline/memory/b;->d:I

    .line 6
    new-instance p1, Lcom/facebook/imagepipeline/memory/b$a;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/memory/b$a;-><init>(Lcom/facebook/imagepipeline/memory/b;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/b;->e:Lcom/facebook/common/references/h;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/imageutils/a;->g(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/facebook/imagepipeline/memory/b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "No bitmaps registered."

    invoke-static {v0, v3}, Lcom/facebook/common/internal/j;->e(ZLjava/lang/Object;)V

    int-to-long v3, p1

    .line 3
    iget-wide v5, p0, Lcom/facebook/imagepipeline/memory/b;->b:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v5, "Bitmap size bigger than the total registered size: %d, %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    iget-wide v7, p0, Lcom/facebook/imagepipeline/memory/b;->b:J

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v2

    .line 6
    invoke-static {v0, v5, v6}, Lcom/facebook/common/internal/j;->f(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/b;->b:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/facebook/imagepipeline/memory/b;->b:J

    .line 8
    iget p1, p0, Lcom/facebook/imagepipeline/memory/b;->a:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/facebook/imagepipeline/memory/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/b;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/b;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Lcom/facebook/common/references/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/h<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/b;->e:Lcom/facebook/common/references/h;

    return-object v0
.end method

.method public declared-synchronized f()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(Landroid/graphics/Bitmap;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/imageutils/a;->g(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/facebook/imagepipeline/memory/b;->a:I

    iget v1, p0, Lcom/facebook/imagepipeline/memory/b;->c:I

    if-ge v0, v1, :cond_1

    iget-wide v1, p0, Lcom/facebook/imagepipeline/memory/b;->b:J

    int-to-long v3, p1

    add-long v5, v1, v3

    iget p1, p0, Lcom/facebook/imagepipeline/memory/b;->d:I

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    add-int/2addr v0, p1

    .line 3
    iput v0, p0, Lcom/facebook/imagepipeline/memory/b;->a:I

    add-long/2addr v1, v3

    .line 4
    iput-wide v1, p0, Lcom/facebook/imagepipeline/memory/b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
