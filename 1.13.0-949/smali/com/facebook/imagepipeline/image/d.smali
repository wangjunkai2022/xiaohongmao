.class public Lcom/facebook/imagepipeline/image/d;
.super Lcom/facebook/imagepipeline/image/b;
.source "CloseableStaticBitmap.java"

# interfaces
.implements Lcom/facebook/common/references/d;


# annotations
.annotation build Ls7/d;
.end annotation


# instance fields
.field private d:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field

.field private volatile e:Landroid/graphics/Bitmap;

.field private final f:Lcom/facebook/imagepipeline/image/j;

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/h;Lcom/facebook/imagepipeline/image/j;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "resourceReleaser",
            "qualityInfo",
            "rotationAngle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/common/references/h<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/image/j;",
            "I)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/image/d;-><init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/h;Lcom/facebook/imagepipeline/image/j;II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/facebook/common/references/h;Lcom/facebook/imagepipeline/image/j;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "resourceReleaser",
            "qualityInfo",
            "rotationAngle",
            "exifOrientation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/common/references/h<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/image/j;",
            "II)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/b;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/facebook/imagepipeline/image/d;->e:Landroid/graphics/Bitmap;

    .line 4
    iget-object p1, p0, Lcom/facebook/imagepipeline/image/d;->e:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/common/references/h;

    invoke-static {p1, p2}, Lcom/facebook/common/references/a;->G(Ljava/lang/Object;Lcom/facebook/common/references/h;)Lcom/facebook/common/references/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/image/d;->d:Lcom/facebook/common/references/a;

    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/image/d;->f:Lcom/facebook/imagepipeline/image/j;

    .line 6
    iput p4, p0, Lcom/facebook/imagepipeline/image/d;->g:I

    .line 7
    iput p5, p0, Lcom/facebook/imagepipeline/image/d;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/image/j;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmapReference",
            "qualityInfo",
            "rotationAngle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/image/j;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/image/d;-><init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/image/j;II)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/image/j;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmapReference",
            "qualityInfo",
            "rotationAngle",
            "exifOrientation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/facebook/imagepipeline/image/j;",
            "II)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/b;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->d()Lcom/facebook/common/references/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/references/a;

    iput-object p1, p0, Lcom/facebook/imagepipeline/image/d;->d:Lcom/facebook/common/references/a;

    .line 11
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/facebook/imagepipeline/image/d;->e:Landroid/graphics/Bitmap;

    .line 12
    iput-object p2, p0, Lcom/facebook/imagepipeline/image/d;->f:Lcom/facebook/imagepipeline/image/j;

    .line 13
    iput p3, p0, Lcom/facebook/imagepipeline/image/d;->g:I

    .line 14
    iput p4, p0, Lcom/facebook/imagepipeline/image/d;->h:I

    return-void
.end method

.method private declared-synchronized r()Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/d;->d:Lcom/facebook/common/references/a;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/facebook/imagepipeline/image/d;->d:Lcom/facebook/common/references/a;

    .line 3
    iput-object v1, p0, Lcom/facebook/imagepipeline/image/d;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static s(Landroid/graphics/Bitmap;)I
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static y(Landroid/graphics/Bitmap;)I
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/image/d;->h:I

    return v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/image/d;->g:I

    return v0
.end method

.method public a()Lcom/facebook/imagepipeline/image/j;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/d;->f:Lcom/facebook/imagepipeline/image/j;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/d;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imageutils/a;->g(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/d;->r()Lcom/facebook/common/references/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/image/d;->g:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/facebook/imagepipeline/image/d;->h:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/d;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imagepipeline/image/d;->s(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/d;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imagepipeline/image/d;->y(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/image/d;->g:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/facebook/imagepipeline/image/d;->h:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/d;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imagepipeline/image/d;->y(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/d;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/facebook/imagepipeline/image/d;->s(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/d;->d:Lcom/facebook/common/references/a;
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

.method public k()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/d;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public declared-synchronized p()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/d;->d:Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

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

.method public declared-synchronized q()Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/d;->d:Lcom/facebook/common/references/a;

    const-string v1, "Cannot convert a closed static bitmap"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/j;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/d;->r()Lcom/facebook/common/references/a;

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
