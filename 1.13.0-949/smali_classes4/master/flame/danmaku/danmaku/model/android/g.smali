.class public Lmaster/flame/danmaku/danmaku/model/android/g;
.super Ljava/lang/Object;
.source "DrawingCacheHolder.java"


# instance fields
.field public a:Landroid/graphics/Canvas;

.field public b:Landroid/graphics/Bitmap;

.field public c:[[Landroid/graphics/Bitmap;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->c:[[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->c:[[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_1
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->c:[[Landroid/graphics/Bitmap;

    aget-object v4, v3, v1

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 4
    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lmaster/flame/danmaku/danmaku/model/android/g;->d(Landroid/graphics/Bitmap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->c:[[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->c:[[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 4
    :goto_1
    aget-object v5, v0, v3

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 5
    aget-object v5, v0, v3

    aget-object v5, v5, v4

    if-eqz v5, :cond_0

    .line 6
    aget-object v5, v0, v3

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    aget-object v5, v0, v3

    aput-object v1, v5, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(IIIZI)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 1
    iget p4, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->e:I

    if-ne p1, p4, :cond_1

    iget p4, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->f:I

    if-ne p2, p4, :cond_1

    goto :goto_0

    :cond_0
    iget p4, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->e:I

    if-gt p1, p4, :cond_1

    iget p4, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->f:I

    if-gt p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object p4, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    if-eqz p4, :cond_2

    .line 3
    invoke-virtual {p4, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->a:Landroid/graphics/Canvas;

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/g;->g()V

    return-void

    .line 6
    :cond_2
    iget-object p4, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    if-eqz p4, :cond_3

    .line 7
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/g;->f()V

    .line 8
    :cond_3
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->e:I

    .line 9
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->f:I

    .line 10
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/16 v0, 0x20

    if-ne p5, v0, :cond_4

    .line 11
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12
    :cond_4
    invoke-static {p1, p2, p4}, Ltv/cjump/jni/NativeBitmapFactory;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    if-lez p3, :cond_5

    .line 13
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->h:I

    .line 14
    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 15
    :cond_5
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->a:Landroid/graphics/Canvas;

    if-nez p1, :cond_6

    .line 16
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->a:Landroid/graphics/Canvas;

    .line 17
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->setDensity(I)V

    goto :goto_1

    .line 18
    :cond_6
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method

.method public final declared-synchronized b(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)Z
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->c:[[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->c:[[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    const/4 v3, 0x0

    .line 3
    :goto_1
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->c:[[Landroid/graphics/Bitmap;

    aget-object v5, v4, v0

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 4
    aget-object v4, v4, v0

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int v5, v5, v3

    int-to-float v5, v5

    add-float/2addr v5, p2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-gtz v6, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v6, v6, v0

    int-to-float v6, v6

    add-float/2addr v6, p3

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-gtz v8, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    cmpg-float v7, v8, v7

    if-gez v7, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {p1, v4, v5, v6, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_4
    monitor-exit p0

    return v2

    .line 11
    :cond_5
    :try_start_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return v2

    .line 14
    :cond_6
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/g;->d(Landroid/graphics/Bitmap;)V

    .line 2
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/g;->e()V

    return-void
.end method

.method public declared-synchronized f()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->f:I

    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->e:I

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/g;->g()V

    .line 6
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h(IIII)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/g;->g()V

    .line 2
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->e:I

    if-lez v0, :cond_8

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->f:I

    if-lez v1, :cond_8

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    if-gt v0, p3, :cond_1

    if-gt v1, p4, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5
    iget p3, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->e:I

    div-int p4, p3, p1

    rem-int p1, p3, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    add-int/2addr p4, p1

    .line 6
    iget p1, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->f:I

    div-int v2, p1, p2

    rem-int p2, p1, p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    const/4 p2, 0x1

    :goto_1
    add-int/2addr v2, p2

    .line 7
    div-int/2addr p3, p4

    .line 8
    div-int/2addr p1, v2

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput p4, p2, v0

    aput v2, p2, v1

    .line 9
    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Landroid/graphics/Bitmap;

    .line 10
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->a:Landroid/graphics/Canvas;

    if-nez v0, :cond_4

    .line 11
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->a:Landroid/graphics/Canvas;

    .line 12
    iget v3, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->h:I

    if-lez v3, :cond_4

    .line 13
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 14
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_7

    const/4 v5, 0x0

    :goto_3
    if-ge v5, p4, :cond_6

    .line 16
    aget-object v6, p2, v4

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, v7}, Ltv/cjump/jni/NativeBitmapFactory;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v6, v5

    .line 17
    iget v6, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->h:I

    if-lez v6, :cond_5

    .line 18
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 19
    :cond_5
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->a:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    mul-int v6, v5, p3

    mul-int v8, v4, p1

    add-int v9, v6, p3

    add-int v10, v8, p1

    .line 20
    invoke-virtual {v0, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 21
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v3, v1, v1, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 22
    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->a:Landroid/graphics/Canvas;

    iget-object v7, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 23
    :cond_7
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->a:Landroid/graphics/Canvas;

    iget-object p3, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 24
    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/g;->c:[[Landroid/graphics/Bitmap;

    :cond_8
    :goto_4
    return-void
.end method
