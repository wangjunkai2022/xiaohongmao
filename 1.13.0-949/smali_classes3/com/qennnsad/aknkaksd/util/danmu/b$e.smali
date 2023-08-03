.class Lcom/qennnsad/aknkaksd/util/danmu/b$e;
.super Lmaster/flame/danmaku/danmaku/model/android/j;
.source "FlyGiftControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/danmu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final c:Landroid/graphics/Paint;

.field private d:I

.field final synthetic e:Lcom/qennnsad/aknkaksd/util/danmu/b;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/util/danmu/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/j;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->c:Landroid/graphics/Paint;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/util/danmu/b;Lcom/qennnsad/aknkaksd/util/danmu/b$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/util/danmu/b$e;-><init>(Lcom/qennnsad/aknkaksd/util/danmu/b;)V

    return-void
.end method


# virtual methods
.method public e(Lmaster/flame/danmaku/danmaku/model/d;Landroid/text/TextPaint;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    .line 1
    iget-object v2, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    .line 2
    iget-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/b;->a:Lmaster/flame/danmaku/danmaku/model/android/b$a;

    move/from16 v3, p3

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v1, v3}, Lmaster/flame/danmaku/danmaku/model/android/b$a;->a(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    .line 4
    :cond_0
    iget-object v10, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    if-eqz v10, :cond_4

    .line 5
    new-instance v13, Landroid/text/StaticLayout;

    iget-object v2, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-static {v2, v12}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-int v5, v2

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 6
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x0

    .line 7
    invoke-interface {v10, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 8
    iget-object v6, v0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-static {v4, v12}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    invoke-static {v6, v4}, Lcom/qennnsad/aknkaksd/util/danmu/b;->b(Lcom/qennnsad/aknkaksd/util/danmu/b;F)F

    .line 9
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x1

    add-int/2addr v2, v14

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, ":"

    .line 10
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v15, v6, 0x1

    .line 11
    invoke-virtual {v2, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    move-object v11, v3

    goto :goto_0

    :cond_1
    move-object v11, v2

    .line 14
    :goto_0
    new-instance v16, Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-static {v4, v12}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-int v7, v2

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/16 v17, 0x1

    move-object/from16 v2, v16

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p2

    move-object/from16 p3, v11

    move/from16 v11, v17

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 15
    new-instance v17, Landroid/text/StaticLayout;

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v3, p3

    invoke-static {v3, v12}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-int v7, v2

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v11, 0x1

    move-object/from16 v2, v17

    move v4, v15

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 16
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 17
    iput-boolean v14, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 18
    iget-object v3, v0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/util/danmu/b;->c(Lcom/qennnsad/aknkaksd/util/danmu/b;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080179

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 19
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 20
    invoke-virtual/range {v16 .. v16}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 21
    invoke-virtual/range {v16 .. v16}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/util/danmu/b;->a(Lcom/qennnsad/aknkaksd/util/danmu/b;)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/util/danmu/b;->d(Lcom/qennnsad/aknkaksd/util/danmu/b;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/util/danmu/b;->a(Lcom/qennnsad/aknkaksd/util/danmu/b;)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/util/danmu/b;->d(Lcom/qennnsad/aknkaksd/util/danmu/b;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 23
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    int-to-float v2, v3

    iput v2, v1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    .line 24
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v13}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    return-void

    :cond_3
    move/from16 v3, p3

    .line 25
    :cond_4
    invoke-super/range {p0 .. p3}, Lmaster/flame/danmaku/danmaku/model/android/j;->e(Lmaster/flame/danmaku/danmaku/model/d;Landroid/text/TextPaint;Z)V

    return-void
.end method

.method public i(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->D:Z

    const/high16 v2, 0x26000000

    if-nez v0, :cond_0

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->B:I

    if-ne v3, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->B:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    :goto_0
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->D:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/danmu/b;->c(Lcom/qennnsad/aknkaksd/util/danmu/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080179

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, v0, p3, p4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 10
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 11
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 12
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/danmu/b;->c(Lcom/qennnsad/aknkaksd/util/danmu/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 13
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->d:I

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42200000    # 40.0f

    add-float/2addr v1, p3

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/util/danmu/b;->d(Lcom/qennnsad/aknkaksd/util/danmu/b;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p4

    iget v3, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->d:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    add-float/2addr p3, v3

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    .line 15
    invoke-static {v3}, Lcom/qennnsad/aknkaksd/util/danmu/b;->d(Lcom/qennnsad/aknkaksd/util/danmu/b;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p3, v3

    const/high16 v3, 0x40c00000    # 6.0f

    add-float/2addr p3, v3

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float/2addr p4, p1

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    .line 16
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/danmu/b;->d(Lcom/qennnsad/aknkaksd/util/danmu/b;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p4, p1

    add-float/2addr p4, v3

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    .line 17
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/danmu/b;->e(Lcom/qennnsad/aknkaksd/util/danmu/b;)I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-static {p3}, Lcom/qennnsad/aknkaksd/util/danmu/b;->e(Lcom/qennnsad/aknkaksd/util/danmu/b;)I

    move-result p3

    int-to-float p3, p3

    iget-object p4, p0, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->c:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public j(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public k(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 1
    iget-object v0, v1, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iget v0, v8, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->d:I

    int-to-float v0, v0

    add-float v5, p5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-super/range {v0 .. v7}, Lmaster/flame/danmaku/danmaku/model/android/j;->k(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    return-void

    .line 3
    :cond_0
    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/StaticLayout;

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;

    .line 6
    iget v0, v1, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    and-int/lit8 v5, v0, 0x1

    const/4 v7, 0x0

    const/16 v17, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_3

    if-nez v2, :cond_7

    :cond_3
    if-eqz v9, :cond_4

    and-int/lit8 v0, v0, -0x3

    .line 7
    iput v0, v1, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    goto :goto_2

    .line 8
    :cond_4
    iget-object v0, v8, Lmaster/flame/danmaku/danmaku/model/android/b;->a:Lmaster/flame/danmaku/danmaku/model/android/b$a;

    if-eqz v0, :cond_5

    move/from16 v9, p7

    .line 9
    invoke-virtual {v0, v1, v9}, Lmaster/flame/danmaku/danmaku/model/android/b$a;->a(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    .line 10
    :cond_5
    :goto_2
    iget-object v10, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    if-eqz v10, :cond_9

    if-eqz v5, :cond_6

    .line 11
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 12
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    .line 13
    iget v0, v1, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v1, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    goto :goto_3

    .line 14
    :cond_6
    new-instance v2, Landroid/text/StaticLayout;

    iget v0, v1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    float-to-int v12, v0

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v9, v2

    move-object/from16 v11, p6

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 15
    :goto_3
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    :cond_7
    const/4 v0, 0x0

    cmpl-float v2, v4, v0

    if-eqz v2, :cond_8

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 17
    invoke-virtual/range {p6 .. p6}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    add-float v0, p5, v0

    iget v2, v8, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->d:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v7, 0x1

    .line 18
    :cond_8
    iget-object v0, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 20
    iget-object v2, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v12, v0, 0x1

    iget-object v0, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v2, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const v2, -0xa65b

    .line 21
    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 22
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v10, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    const/4 v11, 0x0

    invoke-static {v10, v6}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-int v14, v1

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v9, v2

    move-object/from16 v13, p6

    invoke-direct/range {v9 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 23
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    const/16 v1, 0xff

    const/16 v4, 0x59

    const/16 v5, 0xa5

    .line 24
    invoke-static {v1, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 25
    iget-object v1, v8, Lcom/qennnsad/aknkaksd/util/danmu/b$e;->e:Lcom/qennnsad/aknkaksd/util/danmu/b;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/danmu/b;->a(Lcom/qennnsad/aknkaksd/util/danmu/b;)F

    move-result v1

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    new-instance v1, Landroid/text/StaticLayout;

    invoke-static {v0, v6}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-int v12, v2

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v9, v1

    move-object v10, v0

    move-object/from16 v11, p6

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 27
    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    if-eqz v7, :cond_9

    .line 28
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    return-void
.end method
