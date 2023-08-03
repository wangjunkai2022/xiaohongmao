.class public Lmaster/flame/danmaku/danmaku/model/android/i;
.super Lmaster/flame/danmaku/danmaku/model/android/b;
.source "SimpleTextCacheStuffer.java"


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmaster/flame/danmaku/danmaku/model/android/i;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/i;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public d(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FFZLmaster/flame/danmaku/danmaku/model/android/a$a;)V
    .locals 17

    move-object/from16 v8, p1

    move/from16 v9, p5

    move-object/from16 v10, p6

    .line 1
    iget v0, v8, Lmaster/flame/danmaku/danmaku/model/d;->n:I

    int-to-float v1, v0

    add-float v1, p3, v1

    int-to-float v0, v0

    add-float v0, p4, v0

    .line 2
    iget v2, v8, Lmaster/flame/danmaku/danmaku/model/d;->m:I

    if-eqz v2, :cond_0

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    add-float/2addr v0, v2

    :cond_0
    move v11, v0

    move v12, v1

    .line 3
    invoke-virtual {v10, v9}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->j(Z)V

    .line 4
    invoke-virtual {v10, v8, v9}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->l(Lmaster/flame/danmaku/danmaku/model/d;Z)Landroid/text/TextPaint;

    move-result-object v13

    .line 5
    invoke-virtual/range {p0 .. p4}, Lmaster/flame/danmaku/danmaku/model/android/i;->i(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FF)V

    .line 6
    iget-object v14, v8, Lmaster/flame/danmaku/danmaku/model/d;->d:[Ljava/lang/String;

    const/4 v15, 0x1

    const/4 v7, 0x0

    if-eqz v14, :cond_8

    .line 7
    array-length v0, v14

    if-ne v0, v15, :cond_3

    .line 8
    invoke-virtual {v10, v8}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->o(Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v10, v8, v13, v15}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;Z)V

    .line 10
    invoke-virtual {v13}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    sub-float v0, v11, v0

    .line 11
    iget-boolean v1, v10, Lmaster/flame/danmaku/danmaku/model/android/a$a;->s:Z

    if-eqz v1, :cond_1

    .line 12
    iget v1, v10, Lmaster/flame/danmaku/danmaku/model/android/a$a;->k:F

    add-float/2addr v1, v12

    .line 13
    iget v2, v10, Lmaster/flame/danmaku/danmaku/model/android/a$a;->l:F

    add-float/2addr v0, v2

    move v5, v0

    move v4, v1

    goto :goto_0

    :cond_1
    move v5, v0

    move v4, v12

    .line 14
    :goto_0
    aget-object v2, v14, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/i;->j(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 15
    :cond_2
    invoke-virtual {v10, v8, v13, v7}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;Z)V

    .line 16
    aget-object v2, v14, v7

    invoke-virtual {v13}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    sub-float v5, v11, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move v4, v12

    move-object v6, v13

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lmaster/flame/danmaku/danmaku/model/android/i;->k(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    goto/16 :goto_7

    .line 17
    :cond_3
    iget v0, v8, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    iget v1, v8, Lmaster/flame/danmaku/danmaku/model/d;->n:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    array-length v1, v14

    int-to-float v1, v1

    div-float v16, v0, v1

    const/4 v6, 0x0

    .line 18
    :goto_1
    array-length v0, v14

    if-ge v6, v0, :cond_b

    .line 19
    aget-object v0, v14, v6

    if-eqz v0, :cond_7

    aget-object v0, v14, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {v10, v8}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->o(Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v10, v8, v13, v15}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;Z)V

    int-to-float v0, v6

    mul-float v0, v0, v16

    add-float/2addr v0, v11

    .line 22
    invoke-virtual {v13}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 23
    iget-boolean v1, v10, Lmaster/flame/danmaku/danmaku/model/android/a$a;->s:Z

    if-eqz v1, :cond_5

    .line 24
    iget v1, v10, Lmaster/flame/danmaku/danmaku/model/android/a$a;->k:F

    add-float/2addr v1, v12

    .line 25
    iget v2, v10, Lmaster/flame/danmaku/danmaku/model/android/a$a;->l:F

    add-float/2addr v0, v2

    move v5, v0

    move v4, v1

    goto :goto_2

    :cond_5
    move v5, v0

    move v4, v12

    .line 26
    :goto_2
    aget-object v2, v14, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move v15, v6

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/i;->j(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    move v15, v6

    .line 27
    :goto_3
    invoke-virtual {v10, v8, v13, v7}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;Z)V

    .line 28
    aget-object v2, v14, v15

    int-to-float v0, v15

    mul-float v0, v0, v16

    add-float/2addr v0, v11

    invoke-virtual {v13}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float v5, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move v4, v12

    move-object v6, v13

    const/4 v9, 0x0

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lmaster/flame/danmaku/danmaku/model/android/i;->k(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    goto :goto_5

    :cond_7
    :goto_4
    move v15, v6

    const/4 v9, 0x0

    :goto_5
    add-int/lit8 v6, v15, 0x1

    move/from16 v9, p5

    const/4 v7, 0x0

    const/4 v15, 0x1

    goto :goto_1

    :cond_8
    const/4 v9, 0x0

    .line 29
    invoke-virtual {v10, v8}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->o(Lmaster/flame/danmaku/danmaku/model/d;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 30
    invoke-virtual {v10, v8, v13, v0}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;Z)V

    .line 31
    invoke-virtual {v13}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    sub-float v0, v11, v0

    .line 32
    iget-boolean v1, v10, Lmaster/flame/danmaku/danmaku/model/android/a$a;->s:Z

    if-eqz v1, :cond_9

    .line 33
    iget v1, v10, Lmaster/flame/danmaku/danmaku/model/android/a$a;->k:F

    add-float/2addr v1, v12

    .line 34
    iget v2, v10, Lmaster/flame/danmaku/danmaku/model/android/a$a;->l:F

    add-float/2addr v0, v2

    move v5, v0

    move v4, v1

    goto :goto_6

    :cond_9
    move v5, v0

    move v4, v12

    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v6, v13

    .line 35
    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/i;->j(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 36
    :cond_a
    invoke-virtual {v10, v8, v13, v9}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;Z)V

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v13}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    sub-float v5, v11, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move v4, v12

    move-object v6, v13

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lmaster/flame/danmaku/danmaku/model/android/i;->k(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    .line 38
    :cond_b
    :goto_7
    iget v0, v8, Lmaster/flame/danmaku/danmaku/model/d;->k:I

    if-eqz v0, :cond_c

    .line 39
    invoke-virtual {v10, v8}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->n(Lmaster/flame/danmaku/danmaku/model/d;)Landroid/graphics/Paint;

    move-result-object v5

    .line 40
    iget v0, v8, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float v0, p4, v0

    iget v1, v10, Lmaster/flame/danmaku/danmaku/model/android/a$a;->h:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    .line 41
    iget v0, v8, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    add-float v3, p3, v0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 42
    :cond_c
    iget v0, v8, Lmaster/flame/danmaku/danmaku/model/d;->m:I

    if-eqz v0, :cond_d

    .line 43
    invoke-virtual {v10, v8}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->k(Lmaster/flame/danmaku/danmaku/model/d;)Landroid/graphics/Paint;

    move-result-object v5

    .line 44
    iget v0, v8, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    add-float v3, p3, v0

    iget v0, v8, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float v4, p4, v0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_d
    return-void
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;Landroid/text/TextPaint;Z)V
    .locals 6

    const/4 p3, 0x0

    .line 1
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->d:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p3

    .line 5
    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/i;->l(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;)Ljava/lang/Float;

    move-result-object v0

    .line 6
    :goto_0
    iput p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/i;->l(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;)Ljava/lang/Float;

    move-result-object v0

    .line 9
    iget-object v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 11
    invoke-virtual {p2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 12
    invoke-static {v4, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_3
    iput p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 14
    iget-object p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->d:[Ljava/lang/String;

    array-length p2, p2

    int-to-float p2, p2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float p2, p2, p3

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    :goto_2
    return-void
.end method

.method protected i(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FF)V
    .locals 0

    return-void
.end method

.method protected j(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p3, p2, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected k(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V
    .locals 0

    if-eqz p7, :cond_0

    .line 1
    instance-of p7, p1, Lmaster/flame/danmaku/danmaku/model/r;

    if-eqz p7, :cond_0

    const/16 p7, 0xff

    .line 2
    invoke-virtual {p6, p7}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p3, p2, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected l(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;)Ljava/lang/Float;
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 2
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/i;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 4
    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 5
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method
