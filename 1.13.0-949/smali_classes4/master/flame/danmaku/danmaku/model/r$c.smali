.class public Lmaster/flame/danmaku/danmaku/model/r$c;
.super Ljava/lang/Object;
.source "SpecialDanmaku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:F

.field c:F

.field d:I

.field e:I


# direct methods
.method public constructor <init>(IIFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/r$c;->a:I

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/r$c;->b(IIFF)V

    return-void
.end method


# virtual methods
.method public a(III)Z
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/r$c;->a:I

    if-eq v0, p1, :cond_1

    iget p1, p0, Lmaster/flame/danmaku/danmaku/model/r$c;->d:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lmaster/flame/danmaku/danmaku/model/r$c;->e:I

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(IIFF)V
    .locals 1

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/r$c;->b:F

    invoke-static {v0, p3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/r$c;->c:F

    invoke-static {v0, p4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/r$c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/r$c;->a:I

    .line 3
    :cond_1
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/r$c;->d:I

    .line 4
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/r$c;->e:I

    .line 5
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/r$c;->b:F

    .line 6
    iput p4, p0, Lmaster/flame/danmaku/danmaku/model/r$c;->c:F

    return-void
.end method
