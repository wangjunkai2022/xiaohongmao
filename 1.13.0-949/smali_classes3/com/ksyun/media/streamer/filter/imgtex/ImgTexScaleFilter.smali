.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;
.source "ImgTexScaleFilter.java"


# static fields
.field public static final SCALING_MODE_BEST_FIT:I = 0x1

.field public static final SCALING_MODE_CENTER_CROP:I = 0x2

.field public static final SCALING_MODE_FULL_FILL:I = 0x0

.field private static final a:Ljava/lang/String; = "ImgTexScaleFilter"


# instance fields
.field private b:I

.field private c:Ljava/nio/FloatBuffer;

.field private d:Ljava/nio/FloatBuffer;

.field private e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

.field private f:Lcom/ksyun/media/streamer/framework/ImgTexFormat;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getVertexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->c:Ljava/nio/FloatBuffer;

    .line 3
    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getTexCoordsBuf()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->d:Ljava/nio/FloatBuffer;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->b:I

    return-void
.end method

.method private a(Landroid/graphics/RectF;)Ljava/nio/FloatBuffer;
    .locals 9

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 10
    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    const/high16 v4, -0x40800000    # -1.0f

    add-float/2addr v3, v4

    const/4 v5, 0x0

    aput v3, v0, v5

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    mul-float v5, v3, v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    const/4 v7, 0x1

    aput v5, v0, v7

    iget v5, p1, Landroid/graphics/RectF;->right:F

    mul-float v7, v5, v2

    add-float/2addr v7, v4

    const/4 v8, 0x2

    aput v7, v0, v8

    mul-float v3, v3, v2

    sub-float v3, v6, v3

    const/4 v7, 0x3

    aput v3, v0, v7

    mul-float v1, v1, v2

    add-float/2addr v1, v4

    const/4 v3, 0x4

    aput v1, v0, v3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    mul-float v1, p1, v2

    sub-float v1, v6, v1

    const/4 v3, 0x5

    aput v1, v0, v3

    mul-float v5, v5, v2

    add-float/2addr v5, v4

    const/4 v1, 0x6

    aput v5, v0, v1

    mul-float p1, p1, v2

    sub-float/2addr v6, p1

    const/4 p1, 0x7

    aput v6, v0, p1

    .line 11
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    if-eqz v0, :cond_5

    iget v1, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    if-eqz v1, :cond_5

    iget v0, v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    if-eqz v0, :cond_5

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    if-eqz v2, :cond_5

    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    int-to-float p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3
    iget v4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->b:I

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_2

    cmpl-float v4, v2, p1

    if-lez v4, :cond_1

    div-float v4, p1, v2

    sub-float v4, v3, v4

    div-float/2addr v4, v6

    move v5, v4

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    div-float v4, v2, p1

    sub-float v4, v3, v4

    div-float/2addr v4, v6

    const/4 v5, 0x0

    .line 4
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sar="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " dar="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " cropX="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " cropY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ImgTexScaleFilter"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v7, Landroid/graphics/RectF;

    iget v9, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v4

    iget v10, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v5

    iget v11, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v5

    invoke-direct {v7, v9, v10, v11, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rectF="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 7
    :cond_2
    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->a(Landroid/graphics/RectF;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->c:Ljava/nio/FloatBuffer;

    .line 8
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->b:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    cmpl-float v0, v2, p1

    if-lez v0, :cond_3

    div-float/2addr p1, v2

    sub-float/2addr v3, p1

    div-float/2addr v3, v6

    move v1, v3

    goto :goto_1

    :cond_3
    div-float/2addr v2, p1

    sub-float/2addr v3, v2

    div-float/2addr v3, v6

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 9
    :goto_2
    invoke-static {v1, v3}, Lcom/ksyun/media/streamer/util/gles/TexTransformUtil;->getCropTexCoordsBuf(FF)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->d:Ljava/nio/FloatBuffer;

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgTexFormat;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-object v0
.end method

.method protected getTexCoords()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->d:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method protected getVertexCoords()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->c:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public onFormatChanged(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->f:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->a(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V

    return-void
.end method

.method public setScalingMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->b:I

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->f:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->a(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V

    :cond_0
    return-void
.end method

.method public setTargetSize(II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/ksyun/media/streamer/framework/ImgTexFormat;-><init>(III)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->e:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->f:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexScaleFilter;->a(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V

    :cond_0
    return-void
.end method
