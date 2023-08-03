.class Lcom/ksyun/media/player/KSYTextureView$a;
.super Landroid/view/TextureView;
.source "KSYTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:I

.field a:Z

.field final synthetic e:Lcom/ksyun/media/player/KSYTextureView;

.field private f:Landroid/view/TextureView$SurfaceTextureListener;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:F

.field private r:F

.field private s:Landroid/graphics/Matrix;

.field private t:I

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/KSYTextureView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->e:Lcom/ksyun/media/player/KSYTextureView;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->m:I

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->o:Z

    .line 5
    iput-boolean p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->a:Z

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->q:F

    .line 7
    iput p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->r:F

    .line 8
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->s:Landroid/graphics/Matrix;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    iput p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->D:F

    .line 10
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->G:I

    .line 11
    invoke-super {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/player/KSYTextureView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ksyun/media/player/KSYTextureView$a;-><init>(Lcom/ksyun/media/player/KSYTextureView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/player/KSYTextureView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->e:Lcom/ksyun/media/player/KSYTextureView;

    .line 14
    invoke-direct {p0, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->m:I

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->o:Z

    .line 17
    iput-boolean p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->a:Z

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->q:F

    .line 19
    iput p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->r:F

    .line 20
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->s:Landroid/graphics/Matrix;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 21
    iput p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->D:F

    .line 22
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->G:I

    .line 23
    invoke-super {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private c(II)V
    .locals 10

    .line 1
    iget p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->g:I

    .line 2
    iget p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->h:I

    .line 3
    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->t:I

    .line 4
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->u:I

    .line 5
    iget-object v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->s:Landroid/graphics/Matrix;

    .line 6
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->i:I

    if-lez v3, :cond_0

    iget v4, p0, Lcom/ksyun/media/player/KSYTextureView$a;->j:I

    if-lez v4, :cond_0

    mul-int v5, p1, v3

    .line 7
    div-int/2addr v5, v4

    goto :goto_0

    :cond_0
    move v5, p1

    :goto_0
    int-to-float v4, v5

    int-to-float v6, v0

    div-float/2addr v4, v6

    int-to-float v6, p2

    int-to-float v7, v1

    div-float/2addr v6, v7

    .line 8
    iget v7, p0, Lcom/ksyun/media/player/KSYTextureView$a;->n:I

    div-int/lit8 v7, v7, 0x5a

    const/4 v8, 0x2

    rem-int/2addr v7, v8

    if-eqz v7, :cond_1

    if-lez v3, :cond_2

    .line 9
    iget v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->j:I

    if-lez v5, :cond_2

    mul-int p1, p1, v3

    .line 10
    div-int/2addr p1, v5

    goto :goto_1

    :cond_1
    move p1, p2

    move p2, v5

    :cond_2
    :goto_1
    int-to-float v0, v0

    int-to-float p2, p2

    div-float p2, v0, p2

    int-to-float v1, v1

    int-to-float p1, p1

    div-float p1, v1, p1

    .line 11
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->F:F

    .line 12
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->m:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    const/4 v9, 0x1

    if-eq v3, v9, :cond_4

    if-eq v3, v8, :cond_3

    :goto_2
    const/4 p1, 0x0

    const/4 p2, 0x0

    goto :goto_4

    .line 13
    :cond_3
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 14
    iput v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->D:F

    goto :goto_2

    .line 15
    :cond_4
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 16
    iget p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->q:F

    .line 17
    iget p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->r:F

    .line 18
    iput v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->D:F

    goto :goto_4

    .line 19
    :cond_5
    iget p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->n:I

    div-int/lit8 p1, p1, 0x5a

    rem-int/2addr p1, v8

    if-eqz p1, :cond_6

    div-float p1, v1, v0

    div-float p2, v0, v1

    move v4, p1

    move v6, p2

    goto :goto_3

    :cond_6
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 20
    :goto_3
    iput v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->F:F

    iput v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->D:F

    goto :goto_2

    .line 21
    :goto_4
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->n:I

    div-int/lit8 v3, v3, 0x5a

    rem-int/2addr v3, v8

    if-eqz v3, :cond_7

    mul-float v3, v1, v6

    mul-float v3, v3, v5

    .line 22
    iput v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->z:F

    mul-float v3, v0, v4

    mul-float v3, v3, v5

    .line 23
    iput v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->A:F

    goto :goto_5

    :cond_7
    mul-float v3, v0, v4

    mul-float v3, v3, v5

    .line 24
    iput v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->z:F

    mul-float v3, v1, v6

    mul-float v3, v3, v5

    .line 25
    iput v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->A:F

    .line 26
    :goto_5
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    mul-float v3, v5, v4

    mul-float v8, v5, v6

    .line 27
    invoke-virtual {v2, v3, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 28
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->n:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 29
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->n:I

    const/16 v8, -0x10e

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v3, v8, :cond_b

    const/16 v8, -0xb4

    if-eq v3, v8, :cond_a

    const/16 v8, -0x5a

    if-eq v3, v8, :cond_9

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_9

    .line 30
    :cond_8
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->z:F

    sub-float v3, v0, v3

    div-float v7, v3, v9

    .line 31
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->A:F

    goto :goto_7

    .line 32
    :cond_9
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->z:F

    sub-float v3, v0, v3

    div-float v7, v3, v9

    .line 33
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->A:F

    goto :goto_6

    .line 34
    :cond_a
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->z:F

    add-float/2addr v3, v0

    div-float v7, v3, v9

    .line 35
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->A:F

    :goto_6
    add-float/2addr v3, v1

    goto :goto_8

    .line 36
    :cond_b
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->z:F

    add-float/2addr v3, v0

    div-float v7, v3, v9

    .line 37
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->A:F

    :goto_7
    sub-float v3, v1, v3

    :goto_8
    div-float/2addr v3, v9

    :goto_9
    mul-float p1, p1, v0

    div-float/2addr p1, v9

    add-float/2addr v7, p1

    .line 38
    iput v7, p0, Lcom/ksyun/media/player/KSYTextureView$a;->B:F

    mul-float p2, p2, v1

    div-float/2addr p2, v9

    sub-float/2addr v3, p2

    .line 39
    iput v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->C:F

    .line 40
    invoke-virtual {v2, v7, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-float v0, v0, v5

    mul-float v0, v0, v4

    float-to-int p1, v0

    .line 41
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->k:I

    mul-float v1, v1, v5

    mul-float v1, v1, v6

    float-to-int p1, v1

    .line 42
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->l:I

    return-void
.end method

.method private d()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->s:Landroid/graphics/Matrix;

    .line 2
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->g:I

    .line 3
    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->h:I

    .line 4
    iget-boolean v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->o:Z

    if-eqz v3, :cond_0

    .line 5
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->t:I

    int-to-float v3, v3

    iget v4, p0, Lcom/ksyun/media/player/KSYTextureView$a;->v:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->v:F

    .line 6
    :cond_0
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->i:I

    if-lez v3, :cond_1

    iget v4, p0, Lcom/ksyun/media/player/KSYTextureView$a;->j:I

    if-lez v4, :cond_1

    mul-int v1, v1, v3

    .line 7
    div-int/2addr v1, v4

    :cond_1
    int-to-float v1, v1

    .line 8
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->t:I

    int-to-float v4, v3

    div-float/2addr v1, v4

    int-to-float v2, v2

    .line 9
    iget v4, p0, Lcom/ksyun/media/player/KSYTextureView$a;->u:I

    int-to-float v5, v4

    div-float/2addr v2, v5

    .line 10
    iget v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->m:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_3

    .line 11
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->n:I

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    int-to-float v1, v4

    int-to-float v2, v3

    div-float/2addr v1, v2

    int-to-float v2, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 13
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->D:F

    mul-float v4, v3, v1

    mul-float v3, v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 14
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->n:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 15
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->t:I

    int-to-float v4, v3

    iget v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->D:F

    mul-float v4, v4, v5

    mul-float v4, v4, v1

    .line 16
    iget v7, p0, Lcom/ksyun/media/player/KSYTextureView$a;->u:I

    int-to-float v8, v7

    mul-float v8, v8, v5

    mul-float v8, v8, v2

    .line 17
    iget v9, p0, Lcom/ksyun/media/player/KSYTextureView$a;->n:I

    div-int/lit8 v10, v9, 0x5a

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_4

    int-to-float v4, v7

    mul-float v4, v4, v5

    mul-float v4, v4, v2

    int-to-float v2, v3

    mul-float v2, v2, v5

    mul-float v8, v2, v1

    .line 18
    :cond_4
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->B:F

    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->E:F

    mul-float v1, v1, v2

    iget v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->v:F

    sub-float v10, v6, v2

    mul-float v5, v5, v10

    add-float/2addr v1, v5

    .line 19
    iget v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->C:F

    mul-float v5, v5, v2

    iget v10, p0, Lcom/ksyun/media/player/KSYTextureView$a;->w:F

    sub-float/2addr v6, v2

    mul-float v10, v10, v6

    add-float/2addr v5, v10

    const/16 v2, -0x10e

    const/4 v6, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v9, v2, :cond_17

    const/16 v2, -0xb4

    if-eq v9, v2, :cond_11

    const/16 v2, -0x5a

    if-eq v9, v2, :cond_b

    if-eqz v9, :cond_5

    goto/16 :goto_c

    :cond_5
    int-to-float v2, v3

    cmpg-float v2, v4, v2

    if-gez v2, :cond_6

    int-to-float v1, v3

    sub-float/2addr v1, v4

    div-float/2addr v1, v10

    goto :goto_1

    :cond_6
    cmpl-float v2, v1, v6

    if-lez v2, :cond_7

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    add-float v2, v4, v1

    int-to-float v9, v3

    cmpg-float v2, v2, v9

    if-gez v2, :cond_8

    int-to-float v1, v3

    sub-float/2addr v1, v4

    :cond_8
    :goto_1
    int-to-float v2, v7

    cmpg-float v2, v8, v2

    if-gez v2, :cond_9

    goto/16 :goto_8

    :cond_9
    cmpl-float v2, v5, v6

    if-lez v2, :cond_a

    goto/16 :goto_a

    :cond_a
    add-float v2, v8, v5

    int-to-float v3, v7

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1d

    goto/16 :goto_b

    :cond_b
    int-to-float v2, v3

    cmpg-float v2, v4, v2

    if-gez v2, :cond_c

    int-to-float v1, v3

    sub-float/2addr v1, v4

    div-float/2addr v1, v10

    goto :goto_2

    :cond_c
    cmpl-float v2, v1, v6

    if-lez v2, :cond_d

    const/4 v1, 0x0

    goto :goto_2

    :cond_d
    add-float v2, v4, v1

    int-to-float v6, v3

    cmpg-float v2, v2, v6

    if-gez v2, :cond_e

    int-to-float v1, v3

    sub-float/2addr v1, v4

    :cond_e
    :goto_2
    int-to-float v2, v7

    cmpg-float v2, v8, v2

    if-gez v2, :cond_f

    goto :goto_4

    :cond_f
    cmpl-float v2, v5, v8

    if-lez v2, :cond_10

    goto :goto_5

    :cond_10
    int-to-float v2, v7

    cmpg-float v2, v5, v2

    if-gez v2, :cond_1d

    goto :goto_6

    :cond_11
    int-to-float v2, v3

    cmpg-float v2, v4, v2

    if-gez v2, :cond_12

    int-to-float v1, v3

    add-float/2addr v1, v4

    div-float/2addr v1, v10

    goto :goto_3

    :cond_12
    cmpl-float v2, v1, v4

    if-lez v2, :cond_13

    move v1, v4

    goto :goto_3

    :cond_13
    int-to-float v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_14

    int-to-float v1, v3

    :cond_14
    :goto_3
    int-to-float v2, v7

    cmpg-float v2, v8, v2

    if-gez v2, :cond_15

    :goto_4
    int-to-float v2, v7

    add-float/2addr v2, v8

    goto :goto_9

    :cond_15
    cmpl-float v2, v5, v8

    if-lez v2, :cond_16

    :goto_5
    move v5, v8

    goto :goto_c

    :cond_16
    int-to-float v2, v7

    cmpg-float v2, v5, v2

    if-gez v2, :cond_1d

    :goto_6
    int-to-float v5, v7

    goto :goto_c

    :cond_17
    int-to-float v2, v3

    cmpg-float v2, v4, v2

    if-gez v2, :cond_18

    int-to-float v1, v3

    add-float/2addr v1, v4

    div-float/2addr v1, v10

    goto :goto_7

    :cond_18
    cmpl-float v2, v1, v4

    if-lez v2, :cond_19

    move v1, v4

    goto :goto_7

    :cond_19
    int-to-float v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1a

    int-to-float v1, v3

    :cond_1a
    :goto_7
    int-to-float v2, v7

    cmpg-float v2, v8, v2

    if-gez v2, :cond_1b

    :goto_8
    int-to-float v2, v7

    sub-float/2addr v2, v8

    :goto_9
    div-float v5, v2, v10

    goto :goto_c

    :cond_1b
    cmpl-float v2, v5, v6

    if-lez v2, :cond_1c

    :goto_a
    const/4 v5, 0x0

    goto :goto_c

    :cond_1c
    add-float v2, v8, v5

    int-to-float v3, v7

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1d

    :goto_b
    int-to-float v2, v7

    sub-float v5, v2, v8

    .line 20
    :cond_1d
    :goto_c
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 21
    iput v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->B:F

    .line 22
    iput v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->C:F

    .line 23
    iput v4, p0, Lcom/ksyun/media/player/KSYTextureView$a;->z:F

    .line 24
    iput v8, p0, Lcom/ksyun/media/player/KSYTextureView$a;->A:F

    return-void
.end method

.method private d(II)V
    .locals 2

    .line 25
    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->g:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->h:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 27
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 28
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 29
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 30
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->t:I

    .line 31
    iput p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->u:I

    .line 32
    iget p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->G:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/player/KSYTextureView$a;->c(II)V

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->s:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->s:Landroid/graphics/Matrix;

    .line 2
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->g:I

    .line 3
    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->h:I

    .line 4
    iget-boolean v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->o:Z

    if-eqz v3, :cond_0

    .line 5
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->x:F

    neg-float v3, v3

    iput v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->x:F

    .line 6
    :cond_0
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->i:I

    if-lez v3, :cond_1

    iget v4, p0, Lcom/ksyun/media/player/KSYTextureView$a;->j:I

    if-lez v4, :cond_1

    mul-int v1, v1, v3

    .line 7
    div-int/2addr v1, v4

    :cond_1
    int-to-float v1, v1

    .line 8
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->t:I

    int-to-float v4, v3

    div-float/2addr v1, v4

    int-to-float v2, v2

    .line 9
    iget v4, p0, Lcom/ksyun/media/player/KSYTextureView$a;->u:I

    int-to-float v5, v4

    div-float/2addr v2, v5

    .line 10
    iget v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->m:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_3

    .line 11
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->n:I

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    int-to-float v1, v4

    int-to-float v2, v3

    div-float/2addr v1, v2

    int-to-float v2, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 13
    iget v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->D:F

    mul-float v1, v1, v3

    mul-float v3, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 14
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 15
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->n:I

    const/16 v2, -0x10e

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_7

    const/16 v2, -0xb4

    if-eq v1, v2, :cond_6

    const/16 v2, -0x5a

    if-eq v1, v2, :cond_5

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_4

    .line 16
    :cond_4
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->z:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 17
    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->u:I

    int-to-float v2, v2

    iget v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->A:F

    goto :goto_2

    .line 18
    :cond_5
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->z:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 19
    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->u:I

    int-to-float v2, v2

    iget v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->A:F

    goto :goto_1

    .line 20
    :cond_6
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->z:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 21
    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->u:I

    int-to-float v2, v2

    iget v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->A:F

    :goto_1
    add-float/2addr v2, v5

    goto :goto_3

    .line 22
    :cond_7
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->t:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->z:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 23
    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->u:I

    int-to-float v2, v2

    iget v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->A:F

    :goto_2
    sub-float/2addr v2, v5

    :goto_3
    div-float/2addr v2, v4

    .line 24
    :goto_4
    iget v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->B:F

    iget v6, p0, Lcom/ksyun/media/player/KSYTextureView$a;->x:F

    add-float v7, v5, v6

    iget v8, p0, Lcom/ksyun/media/player/KSYTextureView$a;->z:F

    iget v9, p0, Lcom/ksyun/media/player/KSYTextureView$a;->t:I

    int-to-float v10, v9

    sub-float v10, v8, v10

    div-float/2addr v10, v4

    add-float/2addr v10, v1

    cmpl-float v7, v7, v10

    if-lez v7, :cond_8

    .line 25
    iput v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->x:F

    goto :goto_5

    :cond_8
    add-float/2addr v6, v5

    int-to-float v7, v9

    sub-float/2addr v8, v7

    div-float/2addr v8, v4

    sub-float/2addr v1, v8

    cmpg-float v1, v6, v1

    if-gez v1, :cond_9

    .line 26
    iput v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->x:F

    .line 27
    :cond_9
    :goto_5
    iget v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->C:F

    iget v6, p0, Lcom/ksyun/media/player/KSYTextureView$a;->y:F

    add-float v7, v1, v6

    iget v8, p0, Lcom/ksyun/media/player/KSYTextureView$a;->A:F

    iget v9, p0, Lcom/ksyun/media/player/KSYTextureView$a;->u:I

    int-to-float v10, v9

    sub-float v10, v8, v10

    div-float/2addr v10, v4

    add-float/2addr v10, v2

    cmpl-float v7, v7, v10

    if-lez v7, :cond_a

    .line 28
    iput v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->y:F

    goto :goto_6

    :cond_a
    add-float/2addr v6, v1

    int-to-float v7, v9

    sub-float/2addr v8, v7

    div-float/2addr v8, v4

    sub-float/2addr v2, v8

    cmpg-float v2, v6, v2

    if-gez v2, :cond_b

    .line 29
    iput v3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->y:F

    .line 30
    :cond_b
    :goto_6
    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->x:F

    add-float/2addr v5, v2

    .line 31
    iget v2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->y:F

    add-float/2addr v1, v2

    .line 32
    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 33
    iput v5, p0, Lcom/ksyun/media/player/KSYTextureView$a;->B:F

    .line 34
    iput v1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->C:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 16
    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->D:F

    return v0
.end method

.method a(FF)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->q:F

    .line 18
    iput p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->r:F

    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->G:I

    .line 20
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public a(FFF)V
    .locals 5

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_3

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->q:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-gtz v2, :cond_1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->r:F

    cmpl-float v2, v0, v1

    if-gtz v2, :cond_1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    return-void

    .line 9
    :cond_2
    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->D:F

    div-float v0, p1, v0

    iput v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->E:F

    .line 10
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->D:F

    .line 11
    iput p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->v:F

    .line 12
    iput p3, p0, Lcom/ksyun/media/player/KSYTextureView$a;->w:F

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->G:I

    .line 14
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYTextureView$a;->d()V

    .line 15
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->n:I

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->G:I

    .line 7
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->g:I

    .line 2
    iput p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->h:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->o:Z

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setScaleX(F)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->k:I

    return v0
.end method

.method b(FF)V
    .locals 3

    .line 10
    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->q:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-gtz v2, :cond_0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->r:F

    cmpl-float v2, v0, v1

    if-gtz v2, :cond_0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    return-void

    .line 11
    :cond_1
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->x:F

    .line 12
    iput p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->y:F

    const/4 p1, 0x3

    .line 13
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->G:I

    .line 14
    invoke-direct {p0}, Lcom/ksyun/media/player/KSYTextureView$a;->e()V

    .line 15
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->m:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->a:Z

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->G:I

    .line 6
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->i:I

    .line 2
    iput p2, p0, Lcom/ksyun/media/player/KSYTextureView$a;->j:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->p:Z

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->G:I

    .line 9
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public c()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->l:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/player/KSYTextureView$a;->d(II)V

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->f:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->f:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->f:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYTextureView$a;->f:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYTextureView$a;->f:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method
