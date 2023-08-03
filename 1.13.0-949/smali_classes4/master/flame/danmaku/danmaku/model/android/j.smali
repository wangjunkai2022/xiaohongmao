.class public Lmaster/flame/danmaku/danmaku/model/android/j;
.super Lmaster/flame/danmaku/danmaku/model/android/i;
.source "SpannedCacheStuffer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/b;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 2
    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->clear()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmaster/flame/danmaku/danmaku/model/android/i;->b()V

    .line 2
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;Landroid/text/TextPaint;Z)V
    .locals 8

    .line 1
    iget-object v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    instance-of v0, v1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2
    new-instance p3, Landroid/text/StaticLayout;

    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-static {v0, p2}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v3, v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 3
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 4
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    .line 5
    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/model/android/i;->e(Lmaster/flame/danmaku/danmaku/model/d;Landroid/text/TextPaint;Z)V

    return-void
.end method

.method public g(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/j;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 2
    invoke-super {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/b;->g(Lmaster/flame/danmaku/danmaku/model/d;)V

    return-void
.end method

.method public j(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p6}, Lmaster/flame/danmaku/danmaku/model/android/i;->j(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public k(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 1
    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 2
    invoke-super/range {p0 .. p7}, Lmaster/flame/danmaku/danmaku/model/android/i;->k(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    return-void

    .line 3
    :cond_0
    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 4
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/StaticLayout;

    .line 5
    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v8, v4, 0x2

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_4

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v5, p6

    goto :goto_4

    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    and-int/lit8 v3, v4, -0x3

    .line 6
    iput v3, v0, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    .line 7
    :cond_5
    iget-object v9, v0, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    if-eqz v9, :cond_8

    if-eqz v5, :cond_6

    .line 8
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v4, v0, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    move-object/from16 v5, p6

    invoke-static {v4, v5}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v11, v10

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v8, v3

    move-object/from16 v10, p6

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 9
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 10
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    .line 11
    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v0, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    goto :goto_3

    :cond_6
    move-object/from16 v5, p6

    .line 12
    new-instance v3, Landroid/text/StaticLayout;

    iget v4, v0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    float-to-int v11, v4

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v8, v3

    move-object/from16 v10, p6

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 13
    :goto_3
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v0, Lmaster/flame/danmaku/danmaku/model/d;->e:Ljava/lang/Object;

    :goto_4
    const/4 v0, 0x0

    cmpl-float v4, v2, v0

    if-eqz v4, :cond_7

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_7

    .line 14
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 15
    invoke-virtual/range {p6 .. p6}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    add-float v0, p5, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v6, 0x1

    .line 16
    :cond_7
    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    if-eqz v6, :cond_8

    .line 17
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method
