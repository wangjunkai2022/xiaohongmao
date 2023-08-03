.class public Lcom/tangxiaolv/telegramgallery/k;
.super Ljava/lang/Object;
.source "ImageReceiver.java"

# interfaces
.implements Lcom/tangxiaolv/telegramgallery/Utils/h$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/k$c;,
        Lcom/tangxiaolv/telegramgallery/k$b;
    }
.end annotation


# static fields
.field private static U:Landroid/graphics/PorterDuffColorFilter;

.field private static V:Landroid/graphics/Paint;


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Landroid/graphics/BitmapShader;

.field private G:Landroid/graphics/BitmapShader;

.field private H:Landroid/graphics/RectF;

.field private I:Landroid/graphics/RectF;

.field private J:Landroid/graphics/Matrix;

.field private K:F

.field private L:Z

.field private M:I

.field private N:Z

.field private O:Lcom/tangxiaolv/telegramgallery/k$b;

.field private P:F

.field private Q:J

.field private R:B

.field private S:Z

.field private T:Landroid/graphics/ColorFilter;

.field private a:Landroid/view/View;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Z

.field private e:Lcom/tangxiaolv/telegramgallery/k$c;

.field private f:Lcom/tangxiaolv/telegramgallery/TL/m;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/tangxiaolv/telegramgallery/TL/d;

.field private n:I

.field private o:Z

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v2, -0x222223

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/k;->U:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/tangxiaolv/telegramgallery/k;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->s:Z

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    .line 5
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->B:Z

    .line 6
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->H:Landroid/graphics/RectF;

    .line 7
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->I:Landroid/graphics/RectF;

    .line 8
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->J:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/k;->K:F

    .line 10
    iput-byte v0, p0, Lcom/tangxiaolv/telegramgallery/k;->R:B

    .line 11
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->a:Landroid/view/View;

    .line 12
    sget-object p1, Lcom/tangxiaolv/telegramgallery/k;->V:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lcom/tangxiaolv/telegramgallery/k;->V:Landroid/graphics/Paint;

    :cond_0
    return-void
.end method

.method private Q(Ljava/lang/String;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    if-eqz v1, :cond_3

    .line 6
    instance-of p1, v1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz p1, :cond_2

    .line 7
    check-cast v1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    .line 8
    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->D()V

    goto :goto_1

    .line 9
    :cond_2
    instance-of p1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_3

    .line 10
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->K(Ljava/lang/String;)Z

    move-result v1

    .line 12
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->W(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    if-eqz p2, :cond_4

    .line 14
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    .line 15
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    goto :goto_2

    .line 16
    :cond_4
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private b(Z)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-wide v4, p0, Lcom/tangxiaolv/telegramgallery/k;->Q:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    move-wide v2, v4

    .line 4
    :cond_0
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    long-to-float v0, v2

    const/high16 v2, 0x43160000    # 150.0f

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 5
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/k;->Q:J

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->a:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 8
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->v:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 10
    :cond_2
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    .line 1
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_24

    .line 2
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 3
    sget-object v0, Lcom/tangxiaolv/telegramgallery/k;->V:Landroid/graphics/Paint;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 6
    iget-boolean v5, v11, Lcom/tangxiaolv/telegramgallery/k;->L:Z

    if-nez v5, :cond_3

    if-eqz v2, :cond_2

    .line 7
    sget-object v0, Lcom/tangxiaolv/telegramgallery/k;->V:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2

    :cond_3
    if-nez v0, :cond_5

    .line 9
    iget-boolean v0, v11, Lcom/tangxiaolv/telegramgallery/k;->L:Z

    if-eqz v0, :cond_5

    if-eqz v2, :cond_4

    .line 10
    sget-object v0, Lcom/tangxiaolv/telegramgallery/k;->V:Landroid/graphics/Paint;

    sget-object v5, Lcom/tangxiaolv/telegramgallery/k;->U:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_2

    .line 11
    :cond_4
    sget-object v0, Lcom/tangxiaolv/telegramgallery/k;->U:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 12
    :cond_5
    :goto_2
    iget-object v0, v11, Lcom/tangxiaolv/telegramgallery/k;->T:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_7

    if-eqz v2, :cond_6

    .line 13
    sget-object v5, Lcom/tangxiaolv/telegramgallery/k;->V:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_3

    .line 14
    :cond_6
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 15
    :cond_7
    :goto_3
    instance-of v0, v3, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    const/16 v5, 0x10e

    const/16 v6, 0x5a

    if-eqz v0, :cond_a

    .line 16
    iget v0, v11, Lcom/tangxiaolv/telegramgallery/k;->M:I

    rem-int/lit16 v7, v0, 0x168

    if-eq v7, v6, :cond_9

    rem-int/lit16 v0, v0, 0x168

    if-ne v0, v5, :cond_8

    goto :goto_4

    .line 17
    :cond_8
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 18
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v7

    goto :goto_6

    .line 19
    :cond_9
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 20
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v7

    goto :goto_6

    .line 21
    :cond_a
    iget v0, v11, Lcom/tangxiaolv/telegramgallery/k;->M:I

    rem-int/lit16 v7, v0, 0x168

    if-eq v7, v6, :cond_c

    rem-int/lit16 v0, v0, 0x168

    if-ne v0, v5, :cond_b

    goto :goto_5

    .line 22
    :cond_b
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 23
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    goto :goto_6

    .line 24
    :cond_c
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 25
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    :goto_6
    int-to-float v8, v0

    .line 26
    iget v9, v11, Lcom/tangxiaolv/telegramgallery/k;->y:I

    int-to-float v9, v9

    div-float v9, v8, v9

    int-to-float v10, v7

    .line 27
    iget v13, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    int-to-float v13, v13

    div-float v13, v10, v13

    if-eqz v2, :cond_10

    .line 28
    sget-object v3, Lcom/tangxiaolv/telegramgallery/k;->V:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 29
    invoke-static {v9, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 30
    iget-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->H:Landroid/graphics/RectF;

    iget v5, v11, Lcom/tangxiaolv/telegramgallery/k;->w:I

    int-to-float v6, v5

    iget v15, v11, Lcom/tangxiaolv/telegramgallery/k;->x:I

    int-to-float v14, v15

    iget v12, v11, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v5, v12

    int-to-float v5, v5

    iget v12, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v15, v12

    int-to-float v12, v15

    invoke-virtual {v4, v6, v14, v5, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 31
    iget-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->J:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    sub-float v4, v9, v13

    .line 32
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3727c5ac    # 1.0E-5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_e

    div-float v5, v8, v13

    .line 33
    iget v6, v11, Lcom/tangxiaolv/telegramgallery/k;->y:I

    int-to-float v12, v6

    cmpl-float v12, v5, v12

    if-lez v12, :cond_d

    .line 34
    iget-object v9, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    iget v12, v11, Lcom/tangxiaolv/telegramgallery/k;->w:I

    float-to-int v5, v5

    sub-int v13, v5, v6

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v12, v13

    iget v14, v11, Lcom/tangxiaolv/telegramgallery/k;->x:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v12, v5

    iget v5, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v5, v14

    invoke-virtual {v9, v13, v14, v12, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 35
    :cond_d
    iget-object v5, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    iget v12, v11, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v13, v11, Lcom/tangxiaolv/telegramgallery/k;->x:I

    div-float v9, v10, v9

    float-to-int v9, v9

    iget v14, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    sub-int v15, v9, v14

    div-int/lit8 v15, v15, 0x2

    sub-int v15, v13, v15

    add-int/2addr v6, v12

    add-int/2addr v9, v14

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v13, v9

    invoke-virtual {v5, v12, v15, v6, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 36
    :cond_e
    iget-object v5, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    iget v6, v11, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v9, v11, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v12, v11, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v12, v6

    iget v13, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v13, v9

    invoke-virtual {v5, v6, v9, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    :goto_7
    iget-boolean v5, v11, Lcom/tangxiaolv/telegramgallery/k;->B:Z

    if-eqz v5, :cond_25

    .line 38
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3727c5ac    # 1.0E-5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    .line 39
    iget v4, v11, Lcom/tangxiaolv/telegramgallery/k;->y:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 40
    iget v5, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 41
    iget-object v5, v11, Lcom/tangxiaolv/telegramgallery/k;->I:Landroid/graphics/RectF;

    sub-int v6, v0, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-int v8, v7, v3

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    int-to-float v3, v7

    invoke-virtual {v5, v6, v8, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 42
    iget-object v0, v11, Lcom/tangxiaolv/telegramgallery/k;->J:Landroid/graphics/Matrix;

    iget-object v3, v11, Lcom/tangxiaolv/telegramgallery/k;->I:Landroid/graphics/RectF;

    iget-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->H:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_8

    .line 43
    :cond_f
    iget-object v0, v11, Lcom/tangxiaolv/telegramgallery/k;->I:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 44
    iget-object v0, v11, Lcom/tangxiaolv/telegramgallery/k;->J:Landroid/graphics/Matrix;

    iget-object v3, v11, Lcom/tangxiaolv/telegramgallery/k;->I:Landroid/graphics/RectF;

    iget-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->H:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 45
    :goto_8
    iget-object v0, v11, Lcom/tangxiaolv/telegramgallery/k;->J:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 46
    sget-object v0, Lcom/tangxiaolv/telegramgallery/k;->V:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    iget-object v0, v11, Lcom/tangxiaolv/telegramgallery/k;->H:Landroid/graphics/RectF;

    iget v1, v11, Lcom/tangxiaolv/telegramgallery/k;->E:I

    int-to-float v2, v1

    int-to-float v1, v1

    sget-object v3, Lcom/tangxiaolv/telegramgallery/k;->V:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    invoke-virtual {v12, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 48
    :cond_10
    iget-boolean v0, v11, Lcom/tangxiaolv/telegramgallery/k;->C:Z

    if-eqz v0, :cond_13

    .line 49
    invoke-static {v9, v13}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float/2addr v8, v0

    float-to-int v2, v8

    div-float/2addr v10, v0

    float-to-int v0, v10

    .line 51
    iget-object v5, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    iget v6, v11, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v7, v11, Lcom/tangxiaolv/telegramgallery/k;->y:I

    sub-int v8, v7, v2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    iget v9, v11, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v10, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    sub-int v13, v10, v0

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v9

    add-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-virtual {v5, v8, v13, v6, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    iget-object v0, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 53
    :try_start_0
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 54
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 55
    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-ne v3, v1, :cond_11

    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 56
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v1

    iget-object v2, v11, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/e;->c0(Ljava/lang/String;)V

    .line 57
    iput-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    goto :goto_9

    .line 58
    :cond_11
    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-ne v3, v1, :cond_12

    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 59
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v1

    iget-object v2, v11, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/e;->c0(Ljava/lang/String;)V

    .line 60
    iput-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    .line 61
    :cond_12
    :goto_9
    iget-object v2, v11, Lcom/tangxiaolv/telegramgallery/k;->f:Lcom/tangxiaolv/telegramgallery/TL/m;

    iget-object v3, v11, Lcom/tangxiaolv/telegramgallery/k;->i:Ljava/lang/String;

    iget-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->j:Ljava/lang/String;

    iget-object v5, v11, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    iget-object v6, v11, Lcom/tangxiaolv/telegramgallery/k;->m:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget-object v7, v11, Lcom/tangxiaolv/telegramgallery/k;->k:Ljava/lang/String;

    iget v8, v11, Lcom/tangxiaolv/telegramgallery/k;->n:I

    iget-object v9, v11, Lcom/tangxiaolv/telegramgallery/k;->l:Ljava/lang/String;

    iget-boolean v10, v11, Lcom/tangxiaolv/telegramgallery/k;->o:Z

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/tangxiaolv/telegramgallery/k;->c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_16

    :cond_13
    sub-float v0, v9, v13

    .line 64
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1c

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    iget v0, v11, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v2, v11, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v7, v11, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v7, v0

    iget v14, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v14, v2

    invoke-virtual {v12, v0, v2, v7, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 67
    iget v0, v11, Lcom/tangxiaolv/telegramgallery/k;->M:I

    rem-int/lit16 v2, v0, 0x168

    if-eqz v2, :cond_15

    .line 68
    iget-boolean v2, v11, Lcom/tangxiaolv/telegramgallery/k;->N:Z

    if-eqz v2, :cond_14

    int-to-float v0, v0

    .line 69
    iget v2, v11, Lcom/tangxiaolv/telegramgallery/k;->y:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v7, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v12, v0, v2, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_b

    :cond_14
    int-to-float v0, v0

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v12, v0, v2, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_15
    :goto_b
    div-float/2addr v8, v13

    .line 71
    iget v0, v11, Lcom/tangxiaolv/telegramgallery/k;->y:I

    int-to-float v2, v0

    cmpl-float v2, v8, v2

    if-lez v2, :cond_16

    float-to-int v2, v8

    .line 72
    iget-object v7, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    iget v8, v11, Lcom/tangxiaolv/telegramgallery/k;->w:I

    sub-int v9, v2, v0

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v8, v9

    iget v10, v11, Lcom/tangxiaolv/telegramgallery/k;->x:I

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v8, v2

    iget v0, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v0, v10

    invoke-virtual {v7, v9, v10, v8, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_c

    :cond_16
    div-float/2addr v10, v9

    float-to-int v2, v10

    .line 73
    iget-object v7, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    iget v8, v11, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v9, v11, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v10, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    sub-int v13, v2, v10

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v9, v13

    add-int/2addr v0, v8

    add-int/2addr v2, v10

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v9, v2

    invoke-virtual {v7, v8, v13, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    :goto_c
    iget v0, v11, Lcom/tangxiaolv/telegramgallery/k;->M:I

    rem-int/lit16 v2, v0, 0x168

    if-eq v2, v6, :cond_18

    rem-int/lit16 v0, v0, 0x168

    if-ne v0, v5, :cond_17

    goto :goto_d

    .line 75
    :cond_17
    iget-object v0, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_e

    .line 76
    :cond_18
    :goto_d
    iget-object v0, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v2, v5

    div-int/lit8 v6, v6, 0x2

    .line 77
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v8, v7, v0

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v5

    .line 78
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v7

    .line 79
    div-int/lit8 v0, v0, 0x2

    sub-int v5, v2, v8

    sub-int v7, v0, v6

    add-int/2addr v2, v8

    add-int/2addr v0, v6

    .line 80
    invoke-virtual {v3, v5, v7, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 81
    :goto_e
    iget-boolean v0, v11, Lcom/tangxiaolv/telegramgallery/k;->B:Z

    if-eqz v0, :cond_1b

    .line 82
    :try_start_1
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 83
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    :catch_1
    move-exception v0

    .line 84
    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-ne v3, v1, :cond_19

    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 85
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v1

    iget-object v2, v11, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/e;->c0(Ljava/lang/String;)V

    .line 86
    iput-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    goto :goto_f

    .line 87
    :cond_19
    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-ne v3, v1, :cond_1a

    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 88
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v1

    iget-object v2, v11, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/e;->c0(Ljava/lang/String;)V

    .line 89
    iput-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    .line 90
    :cond_1a
    :goto_f
    iget-object v2, v11, Lcom/tangxiaolv/telegramgallery/k;->f:Lcom/tangxiaolv/telegramgallery/TL/m;

    iget-object v3, v11, Lcom/tangxiaolv/telegramgallery/k;->i:Ljava/lang/String;

    iget-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->j:Ljava/lang/String;

    iget-object v5, v11, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    iget-object v6, v11, Lcom/tangxiaolv/telegramgallery/k;->m:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget-object v7, v11, Lcom/tangxiaolv/telegramgallery/k;->k:Ljava/lang/String;

    iget v8, v11, Lcom/tangxiaolv/telegramgallery/k;->n:I

    iget-object v9, v11, Lcom/tangxiaolv/telegramgallery/k;->l:Ljava/lang/String;

    iget-boolean v10, v11, Lcom/tangxiaolv/telegramgallery/k;->o:Z

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/tangxiaolv/telegramgallery/k;->c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    :cond_1b
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_16

    .line 93
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    iget v0, v11, Lcom/tangxiaolv/telegramgallery/k;->M:I

    rem-int/lit16 v2, v0, 0x168

    if-eqz v2, :cond_1e

    .line 95
    iget-boolean v2, v11, Lcom/tangxiaolv/telegramgallery/k;->N:Z

    if-eqz v2, :cond_1d

    int-to-float v0, v0

    .line 96
    iget v2, v11, Lcom/tangxiaolv/telegramgallery/k;->y:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v7, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v12, v0, v2, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_11

    :cond_1d
    int-to-float v0, v0

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v12, v0, v2, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 98
    :cond_1e
    :goto_11
    iget-object v0, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    iget v2, v11, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v7, v11, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v8, v11, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v8, v2

    iget v9, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v9, v7

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    iget v0, v11, Lcom/tangxiaolv/telegramgallery/k;->M:I

    rem-int/lit16 v2, v0, 0x168

    if-eq v2, v6, :cond_20

    rem-int/lit16 v0, v0, 0x168

    if-ne v0, v5, :cond_1f

    goto :goto_12

    .line 100
    :cond_1f
    iget-object v0, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_13

    .line 101
    :cond_20
    :goto_12
    iget-object v0, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v2, v5

    div-int/lit8 v6, v6, 0x2

    .line 102
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v8, v7, v0

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v5

    .line 103
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v7

    .line 104
    div-int/lit8 v0, v0, 0x2

    sub-int v5, v2, v8

    sub-int v7, v0, v6

    add-int/2addr v2, v8

    add-int/2addr v0, v6

    .line 105
    invoke-virtual {v3, v5, v7, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 106
    :goto_13
    iget-boolean v0, v11, Lcom/tangxiaolv/telegramgallery/k;->B:Z

    if-eqz v0, :cond_23

    .line 107
    :try_start_2
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 108
    invoke-virtual {v3, v12}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_15

    :catch_2
    move-exception v0

    .line 109
    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-ne v3, v1, :cond_21

    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 110
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v1

    iget-object v2, v11, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/e;->c0(Ljava/lang/String;)V

    .line 111
    iput-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    goto :goto_14

    .line 112
    :cond_21
    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-ne v3, v1, :cond_22

    iget-object v1, v11, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 113
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v1

    iget-object v2, v11, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/e;->c0(Ljava/lang/String;)V

    .line 114
    iput-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    .line 115
    :cond_22
    :goto_14
    iget-object v2, v11, Lcom/tangxiaolv/telegramgallery/k;->f:Lcom/tangxiaolv/telegramgallery/TL/m;

    iget-object v3, v11, Lcom/tangxiaolv/telegramgallery/k;->i:Ljava/lang/String;

    iget-object v4, v11, Lcom/tangxiaolv/telegramgallery/k;->j:Ljava/lang/String;

    iget-object v5, v11, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    iget-object v6, v11, Lcom/tangxiaolv/telegramgallery/k;->m:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget-object v7, v11, Lcom/tangxiaolv/telegramgallery/k;->k:Ljava/lang/String;

    iget v8, v11, Lcom/tangxiaolv/telegramgallery/k;->n:I

    iget-object v9, v11, Lcom/tangxiaolv/telegramgallery/k;->l:Ljava/lang/String;

    iget-boolean v10, v11, Lcom/tangxiaolv/telegramgallery/k;->o:Z

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/tangxiaolv/telegramgallery/k;->c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    :cond_23
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_16

    .line 118
    :cond_24
    iget-object v2, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    iget v3, v11, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v4, v11, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v5, v11, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v5, v3

    iget v6, v11, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    iget-object v2, v11, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 120
    iget-boolean v2, v11, Lcom/tangxiaolv/telegramgallery/k;->B:Z

    if-eqz v2, :cond_25

    .line 121
    :try_start_3
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 122
    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_16

    :catch_3
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    :goto_16
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->n:I

    return v0
.end method

.method public B(Z)Ljava/lang/Integer;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->c:Ljava/lang/Integer;

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->b:Ljava/lang/Integer;

    return-object p1
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->k:Ljava/lang/String;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    return-object v0
.end method

.method public E()Lcom/tangxiaolv/telegramgallery/TL/d;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->m:Lcom/tangxiaolv/telegramgallery/TL/d;

    return-object v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->B:Z

    return v0
.end method

.method public G()Z
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public H()Z
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->s:Z

    return v0
.end method

.method public J()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    .line 2
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->D:Z

    return v0
.end method

.method public L(FF)Z
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->w:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/k;->x:I

    int-to-float v0, p1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->t:Z

    return v0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->u:Z

    return v0
.end method

.method public O()Z
    .locals 11

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v1, Lcom/tangxiaolv/telegramgallery/Utils/h;->r:I

    invoke-virtual {v0, p0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/h;->a(Ljava/lang/Object;I)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->e:Lcom/tangxiaolv/telegramgallery/k$c;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/k$c;->a:Lcom/tangxiaolv/telegramgallery/TL/m;

    if-nez v2, :cond_0

    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/k$c;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/k$c;->e:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/k$c;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/k$c;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/k$c;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/k$c;->d:Landroid/graphics/drawable/Drawable;

    iget-object v6, v0, Lcom/tangxiaolv/telegramgallery/k$c;->e:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/k$c;->f:Ljava/lang/String;

    iget v8, v0, Lcom/tangxiaolv/telegramgallery/k$c;->g:I

    iget-object v9, v0, Lcom/tangxiaolv/telegramgallery/k$c;->i:Ljava/lang/String;

    iget-boolean v10, v0, Lcom/tangxiaolv/telegramgallery/k$c;->h:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/tangxiaolv/telegramgallery/k;->c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->f:Lcom/tangxiaolv/telegramgallery/TL/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->m:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->e:Lcom/tangxiaolv/telegramgallery/k$c;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/tangxiaolv/telegramgallery/k$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tangxiaolv/telegramgallery/k$c;-><init>(Lcom/tangxiaolv/telegramgallery/k;Lcom/tangxiaolv/telegramgallery/k$a;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->e:Lcom/tangxiaolv/telegramgallery/k$c;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->e:Lcom/tangxiaolv/telegramgallery/k$c;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->f:Lcom/tangxiaolv/telegramgallery/TL/m;

    iput-object v1, v0, Lcom/tangxiaolv/telegramgallery/k$c;->a:Lcom/tangxiaolv/telegramgallery/TL/m;

    .line 5
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/tangxiaolv/telegramgallery/k$c;->b:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/tangxiaolv/telegramgallery/k$c;->c:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/tangxiaolv/telegramgallery/k$c;->d:Landroid/graphics/drawable/Drawable;

    .line 8
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->m:Lcom/tangxiaolv/telegramgallery/TL/d;

    iput-object v1, v0, Lcom/tangxiaolv/telegramgallery/k$c;->e:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 9
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/tangxiaolv/telegramgallery/k$c;->f:Ljava/lang/String;

    .line 10
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->n:I

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/k$c;->g:I

    .line 11
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/tangxiaolv/telegramgallery/k$c;->i:Ljava/lang/String;

    .line 12
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/k;->o:Z

    iput-boolean v1, v0, Lcom/tangxiaolv/telegramgallery/k$c;->h:Z

    .line 13
    :cond_2
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v1, Lcom/tangxiaolv/telegramgallery/Utils/h;->r:I

    invoke-virtual {v0, p0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/h;->f(Ljava/lang/Object;I)V

    .line 14
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/k;->c()V

    return-void
.end method

.method public R(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/k;->s:Z

    return-void
.end method

.method public S(F)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/k;->K:F

    return-void
.end method

.method public T(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/k;->C:Z

    return-void
.end method

.method public U(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->T:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public V(B)V
    .locals 0

    iput-byte p1, p0, Lcom/tangxiaolv/telegramgallery/k;->R:B

    return-void
.end method

.method public W(Lcom/tangxiaolv/telegramgallery/k$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->O:Lcom/tangxiaolv/telegramgallery/k$b;

    return-void
.end method

.method public X(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/k;->D:Z

    return-void
.end method

.method public Y(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Z)V
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/tangxiaolv/telegramgallery/k;->c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public Z(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/tangxiaolv/telegramgallery/k;->c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->F(Lcom/tangxiaolv/telegramgallery/k;I)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->d:Z

    return-void
.end method

.method public a0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/tangxiaolv/telegramgallery/k;->c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public b0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/tangxiaolv/telegramgallery/k;->c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/tangxiaolv/telegramgallery/k;->Q(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v0, v2}, Lcom/tangxiaolv/telegramgallery/k;->Q(Ljava/lang/String;Z)V

    .line 3
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->t:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v2, Lcom/tangxiaolv/telegramgallery/Utils/h;->v:I

    invoke-virtual {v0, p0, v2}, Lcom/tangxiaolv/telegramgallery/Utils/h;->f(Ljava/lang/Object;I)V

    .line 5
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->F(Lcom/tangxiaolv/telegramgallery/k;I)V

    :cond_0
    return-void
.end method

.method public c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    .line 1
    iget-object v8, v0, Lcom/tangxiaolv/telegramgallery/k;->e:Lcom/tangxiaolv/telegramgallery/k$c;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 2
    iput-object v9, v8, Lcom/tangxiaolv/telegramgallery/k$c;->a:Lcom/tangxiaolv/telegramgallery/TL/m;

    .line 3
    iput-object v9, v8, Lcom/tangxiaolv/telegramgallery/k$c;->b:Ljava/lang/String;

    .line 4
    iput-object v9, v8, Lcom/tangxiaolv/telegramgallery/k$c;->e:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 5
    iput-object v9, v8, Lcom/tangxiaolv/telegramgallery/k$c;->d:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v1, :cond_9

    .line 6
    instance-of v12, v1, Lcom/tangxiaolv/telegramgallery/TL/d$b;

    if-nez v12, :cond_9

    instance-of v12, v1, Lcom/tangxiaolv/telegramgallery/TL/d$a;

    if-nez v12, :cond_9

    .line 7
    :cond_2
    invoke-direct {v0, v9, v11}, Lcom/tangxiaolv/telegramgallery/k;->Q(Ljava/lang/String;Z)V

    .line 8
    invoke-direct {v0, v9, v10}, Lcom/tangxiaolv/telegramgallery/k;->Q(Ljava/lang/String;Z)V

    .line 9
    iput-object v9, v0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    .line 10
    iput-object v7, v0, Lcom/tangxiaolv/telegramgallery/k;->l:Ljava/lang/String;

    .line 11
    iput-object v9, v0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    .line 12
    iput-object v9, v0, Lcom/tangxiaolv/telegramgallery/k;->k:Ljava/lang/String;

    .line 13
    iput-object v9, v0, Lcom/tangxiaolv/telegramgallery/k;->f:Lcom/tangxiaolv/telegramgallery/TL/m;

    .line 14
    iput-object v9, v0, Lcom/tangxiaolv/telegramgallery/k;->i:Ljava/lang/String;

    .line 15
    iput-object v9, v0, Lcom/tangxiaolv/telegramgallery/k;->j:Ljava/lang/String;

    .line 16
    iput-boolean v11, v0, Lcom/tangxiaolv/telegramgallery/k;->o:Z

    .line 17
    iput-object v4, v0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    .line 18
    iput v8, v0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    .line 19
    iput-object v9, v0, Lcom/tangxiaolv/telegramgallery/k;->m:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 20
    iput v11, v0, Lcom/tangxiaolv/telegramgallery/k;->n:I

    .line 21
    iput-object v9, v0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v9, v0, Lcom/tangxiaolv/telegramgallery/k;->F:Landroid/graphics/BitmapShader;

    .line 23
    iput-object v9, v0, Lcom/tangxiaolv/telegramgallery/k;->G:Landroid/graphics/BitmapShader;

    .line 24
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v1

    invoke-virtual {v1, v0, v11}, Lcom/tangxiaolv/telegramgallery/Utils/e;->F(Lcom/tangxiaolv/telegramgallery/k;I)V

    .line 25
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/k;->a:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 26
    iget-boolean v2, v0, Lcom/tangxiaolv/telegramgallery/k;->v:Z

    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 28
    :cond_3
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v3, v0, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v4, v2

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 29
    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/k;->O:Lcom/tangxiaolv/telegramgallery/k$b;

    if-eqz v1, :cond_8

    .line 30
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6

    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    invoke-interface {v1, v0, v3, v10}, Lcom/tangxiaolv/telegramgallery/k$b;->a(Lcom/tangxiaolv/telegramgallery/k;ZZ)V

    :cond_8
    return-void

    .line 31
    :cond_9
    instance-of v12, v5, Lcom/tangxiaolv/telegramgallery/TL/d$b;

    if-nez v12, :cond_a

    move-object v5, v9

    :cond_a
    const-string v12, "_"

    if-eqz v1, :cond_c

    .line 32
    instance-of v13, v1, Lcom/tangxiaolv/telegramgallery/TL/d;

    if-eqz v13, :cond_b

    .line 33
    move-object v13, v1

    check-cast v13, Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 34
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v13, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v13, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_d

    .line 35
    invoke-static/range {p2 .. p2}, Lcom/tangxiaolv/telegramgallery/Utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v8, 0x0

    :goto_5
    const-string v9, "@"

    if-eqz v8, :cond_e

    if-eqz v3, :cond_e

    .line 36
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 37
    :cond_e
    iget-object v13, v0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    if-eqz v13, :cond_13

    if-eqz v8, :cond_13

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 38
    iget-object v13, v0, Lcom/tangxiaolv/telegramgallery/k;->O:Lcom/tangxiaolv/telegramgallery/k$b;

    if-eqz v13, :cond_12

    .line 39
    iget-object v14, v0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_10

    iget-object v15, v0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_10

    iget-object v15, v0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_f

    goto :goto_6

    :cond_f
    const/4 v15, 0x0

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v15, 0x1

    :goto_7
    if-nez v14, :cond_11

    const/4 v14, 0x1

    goto :goto_8

    :cond_11
    const/4 v14, 0x0

    :goto_8
    invoke-interface {v13, v0, v15, v14}, Lcom/tangxiaolv/telegramgallery/k$b;->a(Lcom/tangxiaolv/telegramgallery/k;ZZ)V

    .line 40
    :cond_12
    iget-boolean v13, v0, Lcom/tangxiaolv/telegramgallery/k;->d:Z

    if-nez v13, :cond_13

    iget-boolean v13, v0, Lcom/tangxiaolv/telegramgallery/k;->D:Z

    if-nez v13, :cond_13

    return-void

    :cond_13
    if-eqz v5, :cond_14

    .line 41
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v5, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz v6, :cond_15

    .line 42
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    :cond_14
    const/4 v12, 0x0

    .line 43
    :cond_15
    :goto_9
    invoke-direct {v0, v8, v11}, Lcom/tangxiaolv/telegramgallery/k;->Q(Ljava/lang/String;Z)V

    .line 44
    invoke-direct {v0, v12, v10}, Lcom/tangxiaolv/telegramgallery/k;->Q(Ljava/lang/String;Z)V

    .line 45
    iput-object v12, v0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    .line 46
    iput-object v8, v0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    .line 47
    iput-object v7, v0, Lcom/tangxiaolv/telegramgallery/k;->l:Ljava/lang/String;

    .line 48
    iput-object v1, v0, Lcom/tangxiaolv/telegramgallery/k;->f:Lcom/tangxiaolv/telegramgallery/TL/m;

    .line 49
    iput-object v2, v0, Lcom/tangxiaolv/telegramgallery/k;->i:Ljava/lang/String;

    .line 50
    iput-object v3, v0, Lcom/tangxiaolv/telegramgallery/k;->j:Ljava/lang/String;

    .line 51
    iput-object v6, v0, Lcom/tangxiaolv/telegramgallery/k;->k:Ljava/lang/String;

    move/from16 v1, p7

    .line 52
    iput v1, v0, Lcom/tangxiaolv/telegramgallery/k;->n:I

    move/from16 v1, p9

    .line 53
    iput-boolean v1, v0, Lcom/tangxiaolv/telegramgallery/k;->o:Z

    .line 54
    iput-object v5, v0, Lcom/tangxiaolv/telegramgallery/k;->m:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 55
    iput-object v4, v0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 56
    iput-object v1, v0, Lcom/tangxiaolv/telegramgallery/k;->F:Landroid/graphics/BitmapShader;

    .line 57
    iput-object v1, v0, Lcom/tangxiaolv/telegramgallery/k;->G:Landroid/graphics/BitmapShader;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 58
    iput v1, v0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    .line 59
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/k;->O:Lcom/tangxiaolv/telegramgallery/k$b;

    if-eqz v1, :cond_19

    .line 60
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_17

    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_17

    if-eqz v4, :cond_16

    goto :goto_a

    :cond_16
    const/4 v3, 0x0

    goto :goto_b

    :cond_17
    :goto_a
    const/4 v3, 0x1

    :goto_b
    if-nez v2, :cond_18

    goto :goto_c

    :cond_18
    const/4 v10, 0x0

    :goto_c
    invoke-interface {v1, v0, v3, v10}, Lcom/tangxiaolv/telegramgallery/k$b;->a(Lcom/tangxiaolv/telegramgallery/k;ZZ)V

    .line 61
    :cond_19
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->Y(Lcom/tangxiaolv/telegramgallery/k;)V

    .line 62
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/k;->a:Landroid/view/View;

    if-eqz v1, :cond_1b

    .line 63
    iget-boolean v2, v0, Lcom/tangxiaolv/telegramgallery/k;->v:Z

    if-eqz v2, :cond_1a

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_d

    .line 65
    :cond_1a
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v3, v0, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v4, v0, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v4, v2

    iget v5, v0, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    :cond_1b
    :goto_d
    return-void
.end method

.method public d(Landroid/graphics/Canvas;)Z
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    .line 2
    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->A()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/k;->D:Z

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    instance-of v5, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_2

    :goto_1
    const/4 v5, 0x1

    goto :goto_3

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-eqz v2, :cond_d

    .line 6
    iget-byte v6, p0, Lcom/tangxiaolv/telegramgallery/k;->R:B

    const/high16 v7, 0x437f0000    # 255.0f

    if-eqz v6, :cond_a

    .line 7
    iget-boolean v6, p0, Lcom/tangxiaolv/telegramgallery/k;->S:Z

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    .line 8
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/k;->K:F

    mul-float v4, v4, v7

    float-to-int v4, v4

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/k;->G:Landroid/graphics/BitmapShader;

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/tangxiaolv/telegramgallery/k;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    goto :goto_8

    :cond_4
    if-eqz v6, :cond_8

    .line 9
    iget v6, p0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_8

    .line 10
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-ne v2, v6, :cond_6

    .line 11
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_5

    :goto_4
    move-object v4, v6

    goto :goto_5

    .line 12
    :cond_5
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    goto :goto_4

    .line 13
    :cond_6
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-ne v2, v6, :cond_7

    .line 14
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz v4, :cond_8

    .line 15
    iget v6, p0, Lcom/tangxiaolv/telegramgallery/k;->K:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    iget-object v8, p0, Lcom/tangxiaolv/telegramgallery/k;->G:Landroid/graphics/BitmapShader;

    invoke-direct {p0, p1, v4, v6, v8}, Lcom/tangxiaolv/telegramgallery/k;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    .line 16
    :cond_8
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/k;->K:F

    iget v6, p0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    mul-float v4, v4, v6

    mul-float v4, v4, v7

    float-to-int v4, v4

    if-eqz v5, :cond_9

    .line 17
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/k;->G:Landroid/graphics/BitmapShader;

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/k;->F:Landroid/graphics/BitmapShader;

    .line 18
    :goto_6
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/tangxiaolv/telegramgallery/k;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    goto :goto_8

    .line 19
    :cond_a
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/k;->K:F

    mul-float v4, v4, v7

    float-to-int v4, v4

    if-eqz v5, :cond_b

    .line 20
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/k;->G:Landroid/graphics/BitmapShader;

    goto :goto_7

    :cond_b
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/k;->F:Landroid/graphics/BitmapShader;

    .line 21
    :goto_7
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/tangxiaolv/telegramgallery/k;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    :goto_8
    if-eqz v1, :cond_c

    .line 22
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/k;->S:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_9

    :cond_c
    const/4 p1, 0x0

    :goto_9
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/k;->b(Z)V

    return v3

    .line 23
    :cond_d
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e

    const/16 v5, 0xff

    .line 24
    invoke-direct {p0, p1, v2, v5, v4}, Lcom/tangxiaolv/telegramgallery/k;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    .line 25
    invoke-direct {p0, v1}, Lcom/tangxiaolv/telegramgallery/k;->b(Z)V

    return v3

    .line 26
    :cond_e
    invoke-direct {p0, v1}, Lcom/tangxiaolv/telegramgallery/k;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return v0
.end method

.method public d0(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 10

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p5

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/tangxiaolv/telegramgallery/k;->c0(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public e0(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/k;->f0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public f()Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;
    .locals 2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f0(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->F(Lcom/tangxiaolv/telegramgallery/k;I)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/tangxiaolv/telegramgallery/k;->Q(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, v0, v2}, Lcom/tangxiaolv/telegramgallery/k;->Q(Ljava/lang/String;Z)V

    .line 4
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    .line 5
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->m:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 6
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->l:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->k:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->f:Lcom/tangxiaolv/telegramgallery/TL/m;

    .line 12
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->i:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->j:Ljava/lang/String;

    .line 14
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/k;->n:I

    .line 15
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/k;->o:Z

    .line 16
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->F:Landroid/graphics/BitmapShader;

    .line 17
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->G:Landroid/graphics/BitmapShader;

    .line 18
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/k;->e:Lcom/tangxiaolv/telegramgallery/k$c;

    if-eqz v3, :cond_0

    .line 19
    iput-object v0, v3, Lcom/tangxiaolv/telegramgallery/k$c;->a:Lcom/tangxiaolv/telegramgallery/TL/m;

    .line 20
    iput-object v0, v3, Lcom/tangxiaolv/telegramgallery/k$c;->b:Ljava/lang/String;

    .line 21
    iput-object v0, v3, Lcom/tangxiaolv/telegramgallery/k$c;->e:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 22
    iput-object v0, v3, Lcom/tangxiaolv/telegramgallery/k$c;->d:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    .line 24
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->O:Lcom/tangxiaolv/telegramgallery/k$b;

    if-eqz v0, :cond_3

    .line 25
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-interface {v0, p0, v1, v2}, Lcom/tangxiaolv/telegramgallery/k$b;->a(Lcom/tangxiaolv/telegramgallery/k;ZZ)V

    .line 26
    :cond_3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->a:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 27
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->v:Z

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 29
    :cond_4
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    :cond_5
    :goto_0
    return-void
.end method

.method public g()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->z()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->z()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 6
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 8
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    .line 10
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public g0(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    if-nez p2, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-nez p3, :cond_e

    .line 1
    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    if-eqz p3, :cond_d

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_4

    .line 2
    :cond_1
    instance-of p2, p1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-nez p2, :cond_2

    .line 3
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object p3

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    invoke-virtual {p3, v5}, Lcom/tangxiaolv/telegramgallery/Utils/e;->V(Ljava/lang/String;)V

    .line 4
    :cond_2
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    .line 5
    iget p3, p0, Lcom/tangxiaolv/telegramgallery/k;->E:I

    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    .line 6
    move-object v2, p1

    check-cast v2, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-virtual {v2, p3}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->H(I)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    .line 8
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, p3, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/k;->F:Landroid/graphics/BitmapShader;

    goto :goto_0

    .line 9
    :cond_4
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/k;->F:Landroid/graphics/BitmapShader;

    :goto_0
    if-nez p4, :cond_9

    .line 10
    iget-boolean p3, p0, Lcom/tangxiaolv/telegramgallery/k;->D:Z

    if-nez p3, :cond_9

    .line 11
    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_6

    :cond_5
    iget p3, p0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    cmpl-float p3, p3, v3

    if-nez p3, :cond_a

    .line 12
    :cond_6
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/tangxiaolv/telegramgallery/k;->Q:J

    .line 14
    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_7

    goto :goto_1

    :cond_7
    const/4 p3, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 p3, 0x1

    :goto_2
    iput-boolean p3, p0, Lcom/tangxiaolv/telegramgallery/k;->S:Z

    goto :goto_3

    .line 15
    :cond_9
    iput v3, p0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    :cond_a
    :goto_3
    if-eqz p2, :cond_b

    .line 16
    check-cast p1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    .line 17
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/k;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->G(Landroid/view/View;)V

    .line 18
    iget-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/k;->s:Z

    if-eqz p2, :cond_b

    .line 19
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->start()V

    .line 20
    :cond_b
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->a:Landroid/view/View;

    if-eqz p1, :cond_18

    .line 21
    iget-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/k;->v:Z

    if-eqz p2, :cond_c

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_9

    .line 23
    :cond_c
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget p3, p0, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget p4, p0, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr p4, p2

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_9

    :cond_d
    :goto_4
    return v0

    .line 24
    :cond_e
    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_18

    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_10

    instance-of v5, p3, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v5, :cond_f

    check-cast p3, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    .line 25
    invoke-virtual {p3}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->A()Z

    move-result p3

    if-eqz p3, :cond_10

    :cond_f
    iget-boolean p3, p0, Lcom/tangxiaolv/telegramgallery/k;->D:Z

    if-eqz p3, :cond_18

    .line 26
    :cond_10
    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    if-eqz p3, :cond_17

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_8

    .line 27
    :cond_11
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object p2

    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/tangxiaolv/telegramgallery/Utils/e;->V(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    .line 29
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/k;->E:I

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_13

    .line 30
    instance-of p3, p1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz p3, :cond_12

    .line 31
    check-cast p1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->H(I)V

    goto :goto_5

    .line 32
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 33
    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object p3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, p3, p3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/k;->G:Landroid/graphics/BitmapShader;

    goto :goto_5

    .line 34
    :cond_13
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/k;->G:Landroid/graphics/BitmapShader;

    :goto_5
    if-nez p4, :cond_15

    .line 35
    iget-byte p1, p0, Lcom/tangxiaolv/telegramgallery/k;->R:B

    const/4 p2, 0x2

    if-eq p1, p2, :cond_15

    .line 36
    iput v1, p0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tangxiaolv/telegramgallery/k;->Q:J

    .line 38
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_6

    :cond_14
    const/4 p1, 0x0

    :goto_6
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/k;->S:Z

    goto :goto_7

    .line 39
    :cond_15
    iput v3, p0, Lcom/tangxiaolv/telegramgallery/k;->P:F

    .line 40
    :goto_7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    instance-of p1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->a:Landroid/view/View;

    if-eqz p1, :cond_18

    .line 41
    iget-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/k;->v:Z

    if-eqz p2, :cond_16

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_9

    .line 43
    :cond_16
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget p3, p0, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget p4, p0, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr p4, p2

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_9

    :cond_17
    :goto_8
    return v0

    .line 44
    :cond_18
    :goto_9
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->O:Lcom/tangxiaolv/telegramgallery/k$b;

    if-eqz p1, :cond_1c

    .line 45
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1a

    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_1a

    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_19

    goto :goto_a

    :cond_19
    const/4 p3, 0x0

    goto :goto_b

    :cond_1a
    :goto_a
    const/4 p3, 0x1

    :goto_b
    if-nez p2, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    invoke-interface {p1, p0, p3, v0}, Lcom/tangxiaolv/telegramgallery/k$b;->a(Lcom/tangxiaolv/telegramgallery/k;ZZ)V

    :cond_1c
    return v4

    :cond_1d
    :goto_c
    return v0
.end method

.method public varargs h(I[Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->v:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_4

    .line 2
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->T()Lcom/tangxiaolv/telegramgallery/Utils/e;

    move-result-object p1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->V(Ljava/lang/String;)V

    .line 6
    :cond_0
    aget-object p1, p2, v1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->q:Landroid/graphics/drawable/Drawable;

    .line 7
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/k;->E:I

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1

    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_1

    instance-of p2, p1, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-nez p2, :cond_1

    .line 8
    move-object p2, p1

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 9
    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/k;->G:Landroid/graphics/BitmapShader;

    goto :goto_0

    .line 10
    :cond_1
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->G:Landroid/graphics/BitmapShader;

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    instance-of p1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_2

    .line 12
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->a:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 14
    iget-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/k;->v:Z

    if-eqz p2, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 16
    :cond_3
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v2, v0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_1

    .line 17
    :cond_4
    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->r:I

    if-ne p1, v0, :cond_8

    .line 18
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    .line 21
    aget-object v0, p2, v1

    check-cast v0, Lcom/tangxiaolv/telegramgallery/TL/d;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->f:Lcom/tangxiaolv/telegramgallery/TL/m;

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    .line 24
    aget-object v0, p2, v1

    check-cast v0, Lcom/tangxiaolv/telegramgallery/TL/d;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->m:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->e:Lcom/tangxiaolv/telegramgallery/k$c;

    if-eqz v0, :cond_8

    .line 26
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    .line 28
    aget-object v0, p2, v1

    check-cast v0, Lcom/tangxiaolv/telegramgallery/TL/d;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->f:Lcom/tangxiaolv/telegramgallery/TL/m;

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 30
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->h:Ljava/lang/String;

    .line 31
    aget-object p1, p2, v1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/TL/d;

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->m:Lcom/tangxiaolv/telegramgallery/TL/d;

    :cond_8
    :goto_1
    return-void
.end method

.method public h0(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/k;->w:I

    .line 2
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/k;->x:I

    .line 3
    iput p3, p0, Lcom/tangxiaolv/telegramgallery/k;->y:I

    .line 4
    iput p4, p0, Lcom/tangxiaolv/telegramgallery/k;->z:I

    return-void
.end method

.method public i()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    const/16 v2, 0xb4

    if-eqz v1, :cond_2

    .line 2
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->M:I

    rem-int/lit16 v3, v1, 0x168

    if-eqz v3, :cond_1

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_1
    return v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v1, :cond_5

    .line 5
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->M:I

    rem-int/lit16 v3, v1, 0x168

    if-eqz v3, :cond_4

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_3
    return v0

    .line 7
    :cond_5
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/k;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->M:I

    rem-int/lit16 v3, v1, 0x168

    if-eqz v3, :cond_7

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_6

    goto :goto_4

    .line 9
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_5

    .line 10
    :cond_7
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_5
    return v0
.end method

.method public i0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/k;->v:Z

    return-void
.end method

.method public j()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    const/16 v2, 0xb4

    if-eqz v1, :cond_2

    .line 2
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->M:I

    rem-int/lit16 v3, v1, 0x168

    if-eqz v3, :cond_1

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_1
    return v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->r:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v1, :cond_5

    .line 5
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->M:I

    rem-int/lit16 v3, v1, 0x168

    if-eqz v3, :cond_4

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_3
    return v0

    .line 7
    :cond_5
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/k;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->M:I

    rem-int/lit16 v3, v1, 0x168

    if-eqz v3, :cond_7

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_6

    goto :goto_4

    .line 9
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_5

    .line 10
    :cond_7
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_5
    return v0
.end method

.method public j0(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/k;->t:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object p1

    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->v:I

    invoke-virtual {p1, p0, v0}, Lcom/tangxiaolv/telegramgallery/Utils/h;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object p1

    sget v0, Lcom/tangxiaolv/telegramgallery/Utils/h;->v:I

    invoke-virtual {p1, p0, v0}, Lcom/tangxiaolv/telegramgallery/Utils/h;->f(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->o:Z

    return v0
.end method

.method public k0(IZ)V
    .locals 1

    :goto_0
    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v0, 0x168

    if-le p1, v0, :cond_1

    add-int/lit16 p1, p1, -0x168

    goto :goto_1

    .line 1
    :cond_1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/k;->M:I

    .line 2
    iput-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/k;->N:Z

    return-void
.end method

.method public l()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->A:Landroid/graphics/Rect;

    return-object v0
.end method

.method public l0(Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->a:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    .line 4
    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->G(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/k;->L:Z

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n0(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/k;->E:I

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method public o0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/k;->u:Z

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->z:I

    return v0
.end method

.method public p0(Ljava/lang/Integer;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->b:Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public q()Lcom/tangxiaolv/telegramgallery/TL/m;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->f:Lcom/tangxiaolv/telegramgallery/TL/m;

    return-object v0
.end method

.method public q0(ZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->B:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/k;->B:Z

    if-eqz p2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/k;->a:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 4
    iget-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/k;->v:Z

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 6
    :cond_1
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v2, v0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->y:I

    return v0
.end method

.method public r0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->start()V

    :cond_0
    return-void
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->w:I

    return v0
.end method

.method public s0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->p:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public t()I
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->w:I

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->x:I

    return v0
.end method

.method public v()I
    .locals 2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->x:I

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/k;->z:I

    add-int/2addr v0, v1

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->M:I

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/k;->L:Z

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/k;->E:I

    return v0
.end method
