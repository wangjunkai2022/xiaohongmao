.class public Lcom/facebook/imagepipeline/bitmaps/e;
.super Lcom/facebook/imagepipeline/bitmaps/f;
.source "HoneycombBitmapFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ls7/d;
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "e"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/bitmaps/b;

.field private final b:Lcom/facebook/imagepipeline/platform/d;

.field private final c:Lcom/facebook/imagepipeline/core/a;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/b;Lcom/facebook/imagepipeline/platform/d;Lcom/facebook/imagepipeline/core/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "jpegGenerator",
            "purgeableDecoder",
            "closeableReferenceFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/bitmaps/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/bitmaps/e;->a:Lcom/facebook/imagepipeline/bitmaps/b;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/bitmaps/e;->b:Lcom/facebook/imagepipeline/platform/d;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/bitmaps/e;->c:Lcom/facebook/imagepipeline/core/a;

    return-void
.end method

.method private E(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "bitmapConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/e;->c:Lcom/facebook/imagepipeline/core/a;

    .line 2
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {}, Lcom/facebook/imagepipeline/bitmaps/h;->a()Lcom/facebook/imagepipeline/bitmaps/h;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/core/a;->c(Ljava/lang/Object;Lcom/facebook/common/references/h;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public z(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "bitmapConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/bitmaps/e;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/bitmaps/e;->E(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/e;->a:Lcom/facebook/imagepipeline/bitmaps/b;

    int-to-short v1, p1

    int-to-short v2, p2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/bitmaps/b;->a(SS)Lcom/facebook/common/references/a;

    move-result-object v0

    .line 5
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/image/e;

    invoke-direct {v1, v0}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/a;)V

    .line 6
    sget-object v2, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/image/e;->q0(Lcom/facebook/imageformat/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/bitmaps/e;->b:Lcom/facebook/imagepipeline/platform/d;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v4}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result v4

    .line 9
    invoke-interface {v2, v1, p3, v3, v4}, Lcom/facebook/imagepipeline/platform/d;->d(Lcom/facebook/imagepipeline/image/e;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;I)Lcom/facebook/common/references/a;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 11
    invoke-static {v2}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 12
    iput-boolean v4, p0, Lcom/facebook/imagepipeline/bitmaps/e;->d:Z

    .line 13
    sget-object v2, Lcom/facebook/imagepipeline/bitmaps/e;->e:Ljava/lang/String;

    const-string v3, "Immutable bitmap returned by decoder"

    invoke-static {v2, v3}, Lp0/a;->w0(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/bitmaps/e;->E(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    return-object p1

    .line 17
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 18
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :try_start_4
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 21
    :try_start_5
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 22
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 23
    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 24
    throw p1
.end method
