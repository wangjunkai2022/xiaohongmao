.class public Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;
.super Landroid/view/View;
.source "StickerView.java"


# static fields
.field private static j:I = 0x0

.field private static k:I = 0x1

.field private static l:I = 0x2

.field private static m:I = 0x3


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Liamutkarshtiwari/github/io/ananas/editimage/view/b;

.field private e:F

.field private f:F

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Liamutkarshtiwari/github/io/ananas/editimage/view/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->g:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->h:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->i:Ljava/util/LinkedHashMap;

    .line 5
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->g:Landroid/graphics/Paint;

    .line 8
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->h:Landroid/graphics/Paint;

    .line 9
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->i:Ljava/util/LinkedHashMap;

    .line 10
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->g:Landroid/graphics/Paint;

    .line 13
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->h:Landroid/graphics/Paint;

    .line 14
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->i:Ljava/util/LinkedHashMap;

    .line 15
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->b:Landroid/content/Context;

    .line 2
    sget p1, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->j:I

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->c:I

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->g:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->g:Landroid/graphics/Paint;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/b;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b(Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p1, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->i:Z

    .line 5
    :cond_0
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->i:Ljava/util/LinkedHashMap;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getBank()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Liamutkarshtiwari/github/io/ananas/editimage/view/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->i:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    .line 4
    invoke-virtual {v1, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    const/4 p1, 0x3

    if-eq v1, p1, :cond_5

    goto/16 :goto_3

    .line 5
    :cond_0
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->c:I

    sget v1, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->k:I

    if-ne v0, v1, :cond_2

    .line 6
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->e:F

    sub-float v0, v2, v0

    .line 7
    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->f:F

    sub-float v1, p1, v1

    .line 8
    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3, v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->d(FF)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    :cond_1
    iput v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->e:F

    .line 12
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->f:F

    goto :goto_0

    .line 13
    :cond_2
    sget v1, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->m:I

    if-ne v0, v1, :cond_4

    .line 14
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->e:F

    sub-float v1, v2, v0

    .line 15
    iget v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->f:F

    sub-float v5, p1, v3

    .line 16
    iget-object v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    if-eqz v6, :cond_3

    .line 17
    invoke-virtual {v6, v0, v3, v1, v5}, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->e(FFFF)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    :cond_3
    iput v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->e:F

    .line 20
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->f:F

    :cond_4
    :goto_0
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 21
    :cond_5
    sget p1, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->j:I

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->c:I

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v1, -0x1

    .line 22
    iget-object v5, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 23
    iget-object v7, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    .line 24
    iget-object v8, v7, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->n:Landroid/graphics/RectF;

    invoke-virtual {v8, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 25
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 26
    sget v6, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->l:I

    iput v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->c:I

    goto :goto_1

    .line 27
    :cond_8
    iget-object v6, v7, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->m:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 28
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    if-eqz v0, :cond_9

    .line 29
    iput-boolean v3, v0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->i:Z

    .line 30
    :cond_9
    iput-object v7, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    .line 31
    iput-boolean v4, v7, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->i:Z

    .line 32
    sget v0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->m:I

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->c:I

    .line 33
    iput v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->e:F

    .line 34
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->f:F

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 35
    :cond_a
    iget-object v6, v7, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 36
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    if-eqz v0, :cond_b

    .line 37
    iput-boolean v3, v0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->i:Z

    .line 38
    :cond_b
    iput-object v7, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    .line 39
    iput-boolean v4, v7, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->i:Z

    .line 40
    sget v0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->k:I

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->c:I

    .line 41
    iput v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->e:F

    .line 42
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->f:F

    goto :goto_2

    :cond_c
    if-nez v0, :cond_d

    .line 43
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    if-eqz p1, :cond_d

    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->c:I

    sget v4, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->j:I

    if-ne v2, v4, :cond_d

    .line 44
    iput-boolean v3, p1, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->i:Z

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_d
    if-lez v1, :cond_e

    .line 47
    iget p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->c:I

    sget v2, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->l:I

    if-ne p1, v2, :cond_e

    .line 48
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->i:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget p1, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->j:I

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->c:I

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    :goto_3
    return v0
.end method
