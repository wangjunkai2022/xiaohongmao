.class public abstract Lmaster/flame/danmaku/danmaku/model/android/k;
.super Lmaster/flame/danmaku/danmaku/model/android/b;
.source "ViewCacheStuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/android/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lmaster/flame/danmaku/danmaku/model/android/k$a;",
        ">",
        "Lmaster/flame/danmaku/danmaku/model/android/b;"
    }
.end annotation


# static fields
.field public static final e:I = -0x1

.field public static final f:I = -0x2

.field public static final g:I = -0x3

.field public static final h:I = -0x3


# instance fields
.field private final b:I

.field private final c:I

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "TVH;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/b;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/k;->d:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/k;->b:I

    .line 4
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/k;->c:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public d(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FFZLmaster/flame/danmaku/danmaku/model/android/a$a;)V
    .locals 9

    .line 1
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->s:I

    invoke-virtual {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/k;->i(ILmaster/flame/danmaku/danmaku/model/d;)I

    move-result v2

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/k;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 3
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/k$a;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p6, p5}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->j(Z)V

    .line 5
    invoke-virtual {p6, p1, p5}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->l(Lmaster/flame/danmaku/danmaku/model/d;Z)Landroid/text/TextPaint;

    move-result-object v6

    const/4 v8, 0x0

    .line 6
    invoke-virtual {p6, p1, v6, v8}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->g(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Paint;Z)V

    move-object v1, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p6

    .line 7
    invoke-virtual/range {v1 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/k;->j(ILmaster/flame/danmaku/danmaku/model/android/k$a;Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/android/a$a;Landroid/text/TextPaint;)V

    .line 8
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/k$a;->e(II)V

    if-nez p5, :cond_3

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 10
    invoke-virtual {p2, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 11
    :goto_2
    iget p5, p1, Lmaster/flame/danmaku/danmaku/model/d;->k:I

    if-eqz p5, :cond_4

    .line 12
    invoke-virtual {p6, p1}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->n(Lmaster/flame/danmaku/danmaku/model/d;)Landroid/graphics/Paint;

    move-result-object v6

    .line 13
    iget p5, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float/2addr p5, p4

    iget v1, p6, Lmaster/flame/danmaku/danmaku/model/android/a$a;->h:I

    int-to-float v1, v1

    sub-float v5, p5, v1

    .line 14
    iget p5, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    add-float v4, p3, p5

    move-object v1, p2

    move v2, p3

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 15
    :cond_4
    iget p5, p1, Lmaster/flame/danmaku/danmaku/model/d;->m:I

    if-eqz p5, :cond_5

    .line 16
    invoke-virtual {p6, p1}, Lmaster/flame/danmaku/danmaku/model/android/a$a;->k(Lmaster/flame/danmaku/danmaku/model/d;)Landroid/graphics/Paint;

    move-result-object v6

    .line 17
    iget p5, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    add-float v4, p3, p5

    iget p5, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float v5, p4, p5

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 18
    :cond_5
    iget p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    float-to-int p3, p3

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    float-to-int p1, p1

    invoke-virtual {v0, v8, v8, p3, p1}, Lmaster/flame/danmaku/danmaku/model/android/k$a;->d(IIII)V

    .line 19
    invoke-virtual {v0, p2, p6}, Lmaster/flame/danmaku/danmaku/model/android/k$a;->a(Landroid/graphics/Canvas;Lmaster/flame/danmaku/danmaku/model/android/a$a;)V

    if-eqz v7, :cond_6

    .line 20
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;Landroid/text/TextPaint;Z)V
    .locals 7

    .line 1
    iget p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->s:I

    invoke-virtual {p0, p3, p1}, Lmaster/flame/danmaku/danmaku/model/android/k;->i(ILmaster/flame/danmaku/danmaku/model/d;)I

    move-result v1

    .line 2
    iget-object p3, p0, Lmaster/flame/danmaku/danmaku/model/android/k;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/danmaku/model/android/k;->k(I)Lmaster/flame/danmaku/danmaku/model/android/k$a;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/danmaku/model/android/k;->k(I)Lmaster/flame/danmaku/danmaku/model/android/k$a;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/danmaku/model/android/k;->k(I)Lmaster/flame/danmaku/danmaku/model/android/k$a;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/k;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v6, 0x0

    .line 8
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmaster/flame/danmaku/danmaku/model/android/k$a;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v5, p2

    .line 9
    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/k;->j(ILmaster/flame/danmaku/danmaku/model/android/k$a;Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/android/a$a;Landroid/text/TextPaint;)V

    .line 10
    iget p2, p0, Lmaster/flame/danmaku/danmaku/model/android/k;->b:I

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/k;->c:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lmaster/flame/danmaku/danmaku/model/android/k$a;->e(II)V

    .line 11
    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/android/k$a;->c()I

    move-result p2

    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/android/k$a;->b()I

    move-result v0

    invoke-virtual {p3, v6, v6, p2, v0}, Lmaster/flame/danmaku/danmaku/model/android/k$a;->d(IIII)V

    .line 12
    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/android/k$a;->c()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    .line 13
    invoke-virtual {p3}, Lmaster/flame/danmaku/danmaku/model/android/k$a;->b()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    return-void
.end method

.method public g(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/b;->g(Lmaster/flame/danmaku/danmaku/model/d;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->f:Ljava/lang/Object;

    return-void
.end method

.method public i(ILmaster/flame/danmaku/danmaku/model/d;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract j(ILmaster/flame/danmaku/danmaku/model/android/k$a;Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/android/a$a;Landroid/text/TextPaint;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITVH;",
            "Lmaster/flame/danmaku/danmaku/model/d;",
            "Lmaster/flame/danmaku/danmaku/model/android/a$a;",
            "Landroid/text/TextPaint;",
            ")V"
        }
    .end annotation
.end method

.method public abstract k(I)Lmaster/flame/danmaku/danmaku/model/android/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TVH;"
        }
    .end annotation
.end method
