.class Lcom/qennnsad/aknkaksd/util/danmu/a$d;
.super Lmaster/flame/danmaku/danmaku/model/android/j;
.source "DanmuControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/danmu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final c:Landroid/graphics/Paint;

.field final synthetic d:Lcom/qennnsad/aknkaksd/util/danmu/a;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/util/danmu/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->d:Lcom/qennnsad/aknkaksd/util/danmu/a;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/j;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->c:Landroid/graphics/Paint;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/util/danmu/a;Lcom/qennnsad/aknkaksd/util/danmu/a$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/util/danmu/a$d;-><init>(Lcom/qennnsad/aknkaksd/util/danmu/a;)V

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
    iget-object v6, v0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->d:Lcom/qennnsad/aknkaksd/util/danmu/a;

    invoke-static {v4, v12}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    invoke-static {v6, v4}, Lcom/qennnsad/aknkaksd/util/danmu/a;->b(Lcom/qennnsad/aknkaksd/util/danmu/a;F)F

    .line 9
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, ":"

    .line 10
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v14, v6, 0x1

    .line 11
    invoke-virtual {v2, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    move-object v15, v3

    goto :goto_0

    :cond_1
    move-object v15, v2

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

    const/4 v11, 0x1

    move-object/from16 v2, v16

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 15
    new-instance v17, Landroid/text/StaticLayout;

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v15, v12}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-int v7, v2

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v2, v17

    move-object v3, v15

    move v4, v14

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 16
    invoke-virtual/range {v16 .. v16}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 17
    invoke-virtual/range {v16 .. v16}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->d:Lcom/qennnsad/aknkaksd/util/danmu/a;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/util/danmu/a;->a(Lcom/qennnsad/aknkaksd/util/danmu/a;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->d:Lcom/qennnsad/aknkaksd/util/danmu/a;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/util/danmu/a;->c(Lcom/qennnsad/aknkaksd/util/danmu/a;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->d:Lcom/qennnsad/aknkaksd/util/danmu/a;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/util/danmu/a;->a(Lcom/qennnsad/aknkaksd/util/danmu/a;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->d:Lcom/qennnsad/aknkaksd/util/danmu/a;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/util/danmu/a;->c(Lcom/qennnsad/aknkaksd/util/danmu/a;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 19
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    .line 20
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v13}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    return-void

    :cond_3
    move/from16 v3, p3

    .line 21
    :cond_4
    invoke-super/range {p0 .. p3}, Lmaster/flame/danmaku/danmaku/model/android/j;->e(Lmaster/flame/danmaku/danmaku/model/d;Landroid/text/TextPaint;Z)V

    return-void
.end method

.method public i(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->D:Z

    const/high16 v2, 0x26000000

    if-nez v0, :cond_0

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->B:I

    if-ne v3, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    :goto_0
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->D:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42200000    # 40.0f

    add-float/2addr v1, p3

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->d:Lcom/qennnsad/aknkaksd/util/danmu/a;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/util/danmu/a;->c(Lcom/qennnsad/aknkaksd/util/danmu/a;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p4

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    add-float/2addr p3, v3

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->d:Lcom/qennnsad/aknkaksd/util/danmu/a;

    .line 10
    invoke-static {v3}, Lcom/qennnsad/aknkaksd/util/danmu/a;->c(Lcom/qennnsad/aknkaksd/util/danmu/a;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p3, v3

    const/high16 v3, 0x40c00000    # 6.0f

    add-float/2addr p3, v3

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float/2addr p4, p1

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->d:Lcom/qennnsad/aknkaksd/util/danmu/a;

    .line 11
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/danmu/a;->c(Lcom/qennnsad/aknkaksd/util/danmu/a;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p4, p1

    add-float/2addr p4, v3

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->d:Lcom/qennnsad/aknkaksd/util/danmu/a;

    .line 12
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/danmu/a;->d(Lcom/qennnsad/aknkaksd/util/danmu/a;)I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->d:Lcom/qennnsad/aknkaksd/util/danmu/a;

    invoke-static {p3}, Lcom/qennnsad/aknkaksd/util/danmu/a;->d(Lcom/qennnsad/aknkaksd/util/danmu/a;)I

    move-result p3

    int-to-float p3, p3

    iget-object p4, p0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->c:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public j(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public k(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v13, p6

    .line 1
    iget-object v4, v1, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 2
    invoke-super/range {p0 .. p7}, Lmaster/flame/danmaku/danmaku/model/android/j;->k(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    return-void

    .line 3
    :cond_0
    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 4
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/StaticLayout;

    .line 5
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/StaticLayout;

    .line 6
    iget v4, v1, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    and-int/lit8 v6, v4, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_3

    if-nez v5, :cond_7

    :cond_3
    if-eqz v7, :cond_4

    and-int/lit8 v4, v4, -0x3

    .line 7
    iput v4, v1, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    goto :goto_2

    .line 8
    :cond_4
    iget-object v4, v0, Lmaster/flame/danmaku/danmaku/model/android/b;->a:Lmaster/flame/danmaku/danmaku/model/android/b$a;

    if-eqz v4, :cond_5

    move/from16 v7, p7

    .line 9
    invoke-virtual {v4, v1, v7}, Lmaster/flame/danmaku/danmaku/model/android/b$a;->a(Lmaster/flame/danmaku/danmaku/model/d;Z)V

    .line 10
    :cond_5
    :goto_2
    iget-object v7, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    if-eqz v7, :cond_9

    if-eqz v6, :cond_6

    .line 11
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 12
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, v1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    .line 13
    iget v4, v1, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v1, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    goto :goto_3

    .line 14
    :cond_6
    new-instance v15, Landroid/text/StaticLayout;

    iget v4, v1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    float-to-int v8, v4

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/16 v16, 0x1

    move-object v4, v15

    move-object v5, v7

    move-object/from16 v6, p6

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v16

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v5, v15

    .line 15
    :goto_3
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v1, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    :cond_7
    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_8

    cmpl-float v4, p5, v4

    if-eqz v4, :cond_8

    .line 16
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 17
    invoke-virtual/range {p6 .. p6}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float v4, p5, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v15, 0x1

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    .line 18
    :goto_4
    iget-object v3, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    .line 19
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 20
    iget-object v4, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    iget-object v3, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const v3, -0xa65b

    .line 21
    invoke-virtual {v13, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 22
    new-instance v12, Landroid/text/StaticLayout;

    iget-object v4, v1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v13}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-int v8, v1

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v1, 0x1

    move-object v3, v12

    move-object/from16 v7, p6

    move/from16 p2, v15

    move-object v15, v12

    move v12, v1

    invoke-direct/range {v3 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 23
    invoke-virtual {v15, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, -0x1

    .line 24
    invoke-virtual {v13, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 25
    iget-object v1, v0, Lcom/qennnsad/aknkaksd/util/danmu/a$d;->d:Lcom/qennnsad/aknkaksd/util/danmu/a;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/danmu/a;->a(Lcom/qennnsad/aknkaksd/util/danmu/a;)F

    move-result v1

    invoke-virtual {v15}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    new-instance v1, Landroid/text/StaticLayout;

    invoke-static {v14, v13}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-int v6, v3

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v1

    move-object v4, v14

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 27
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_9

    .line 28
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    return-void
.end method
