.class public Ls1/g;
.super Ljava/lang/Object;
.source "SimpleImageTranscoder.java"

# interfaces
.implements Ls1/c;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "SimpleImageTranscoder"


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "resizingEnabled",
            "maxBitmapSize"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Ls1/g;->a:Z

    .line 3
    iput p2, p0, Ls1/g;->b:I

    return-void
.end method

.method private static e(Lcom/facebook/imageformat/c;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0    # Lcom/facebook/imageformat/c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    if-ne p0, v0, :cond_1

    .line 3
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 4
    :cond_1
    sget-object v0, Lcom/facebook/imageformat/b;->b:Lcom/facebook/imageformat/c;

    if-ne p0, v0, :cond_2

    .line 5
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/facebook/imageformat/b;->b(Lcom/facebook/imageformat/c;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 8
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method private f(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/d;)I
    .locals 1
    .param p3    # Lcom/facebook/imagepipeline/common/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "encodedImage",
            "rotationOptions",
            "resizeOptions"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ls1/g;->a:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Ls1/g;->b:I

    .line 3
    invoke-static {p2, p3, p1, v0}, Ls1/a;->b(Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/d;Lcom/facebook/imagepipeline/image/e;I)I

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "SimpleImageTranscoder"

    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/d;)Z
    .locals 2
    .param p2    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/common/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "rotationOptions",
            "resizeOptions"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/common/e;->a()Lcom/facebook/imagepipeline/common/e;

    move-result-object p2

    .line 2
    :cond_0
    iget-boolean v0, p0, Ls1/g;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Ls1/g;->b:I

    .line 3
    invoke-static {p2, p3, p1, v0}, Ls1/a;->b(Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/d;Lcom/facebook/imagepipeline/image/e;I)I

    move-result p1

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c(Lcom/facebook/imagepipeline/image/e;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/d;Lcom/facebook/imageformat/c;Ljava/lang/Integer;)Ls1/b;
    .locals 18
    .param p3    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/imagepipeline/common/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/imageformat/c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "outputStream",
            "rotationOptions",
            "resizeOptions",
            "outputFormat",
            "quality"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "Out-Of-Memory during transcode"

    const-string v2, "SimpleImageTranscoder"

    if-nez p6, :cond_0

    const/16 v3, 0x55

    .line 1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p6

    :goto_0
    if-nez p3, :cond_1

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/common/e;->a()Lcom/facebook/imagepipeline/common/e;

    move-result-object v4

    move-object/from16 v5, p0

    goto :goto_1

    :cond_1
    move-object/from16 v5, p0

    move-object/from16 v4, p3

    :goto_1
    move-object/from16 v6, p4

    .line 3
    invoke-direct {v5, v0, v4, v6}, Ls1/g;->f(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/d;)I

    move-result v6

    .line 4
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5
    iput v6, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v8, 0x2

    .line 6
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->A()Ljava/io/InputStream;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v7, :cond_2

    const-string v0, "Couldn\'t decode the EncodedImage InputStream ! "

    .line 7
    invoke-static {v2, v0}, Lp0/a;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ls1/b;

    invoke-direct {v0, v8}, Ls1/b;-><init>(I)V

    return-object v0

    .line 9
    :cond_2
    invoke-static {v0, v4}, Ls1/e;->g(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/e;)Landroid/graphics/Matrix;

    move-result-object v16

    if-eqz v16, :cond_3

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 10
    :try_start_1
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 11
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v17, 0x0

    move-object v11, v7

    .line 12
    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v7

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v4, v7

    goto :goto_3

    :cond_3
    move-object v4, v7

    .line 13
    :goto_2
    :try_start_2
    invoke-static/range {p5 .. p5}, Ls1/g;->e(Lcom/facebook/imageformat/c;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v9, p2

    invoke-virtual {v4, v0, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 14
    new-instance v0, Ls1/b;

    const/4 v3, 0x1

    if-le v6, v3, :cond_4

    const/4 v3, 0x0

    :cond_4
    invoke-direct {v0, v3}, Ls1/b;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 16
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 17
    :goto_3
    :try_start_3
    invoke-static {v2, v1, v0}, Lp0/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    new-instance v0, Ls1/b;

    invoke-direct {v0, v8}, Ls1/b;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    .line 21
    :goto_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 22
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 23
    throw v0

    :catch_2
    move-exception v0

    .line 24
    invoke-static {v2, v1, v0}, Lp0/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    new-instance v0, Ls1/b;

    invoke-direct {v0, v8}, Ls1/b;-><init>(I)V

    return-object v0
.end method

.method public d(Lcom/facebook/imageformat/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    sget-object v0, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
