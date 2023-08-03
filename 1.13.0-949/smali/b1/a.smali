.class public Lb1/a;
.super Ljava/lang/Object;
.source "BitmapAnimationBackend.java"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/a;
.implements Lcom/facebook/fresco/animation/backend/c$b;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb1/a$b;,
        Lb1/a$a;
    }
.end annotation


# static fields
.field public static final o:I = -0x1

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3

.field private static final t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/facebook/imagepipeline/bitmaps/f;

.field private final d:Lb1/b;

.field private final e:Lcom/facebook/fresco/animation/backend/d;

.field private final f:Lb1/c;

.field private final g:Lcom/facebook/fresco/animation/bitmap/preparation/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final h:Lcom/facebook/fresco/animation/bitmap/preparation/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Rect;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Bitmap$Config;

.field private n:Lb1/a$a;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lb1/a;

    sput-object v0, Lb1/a;->t:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/f;Lb1/b;Lcom/facebook/fresco/animation/backend/d;Lb1/c;Lcom/facebook/fresco/animation/bitmap/preparation/a;Lcom/facebook/fresco/animation/bitmap/preparation/b;)V
    .locals 1
    .param p5    # Lcom/facebook/fresco/animation/bitmap/preparation/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/fresco/animation/bitmap/preparation/b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "platformBitmapFactory",
            "bitmapFrameCache",
            "animationInformation",
            "bitmapFrameRenderer",
            "bitmapFramePreparationStrategy",
            "bitmapFramePreparer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lb1/a;->m:Landroid/graphics/Bitmap$Config;

    .line 3
    iput-object p1, p0, Lb1/a;->c:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 4
    iput-object p2, p0, Lb1/a;->d:Lb1/b;

    .line 5
    iput-object p3, p0, Lb1/a;->e:Lcom/facebook/fresco/animation/backend/d;

    .line 6
    iput-object p4, p0, Lb1/a;->f:Lb1/c;

    .line 7
    iput-object p5, p0, Lb1/a;->g:Lcom/facebook/fresco/animation/bitmap/preparation/a;

    .line 8
    iput-object p6, p0, Lb1/a;->h:Lcom/facebook/fresco/animation/bitmap/preparation/b;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lb1/a;->i:Landroid/graphics/Paint;

    .line 10
    invoke-direct {p0}, Lb1/a;->q()V

    return-void
.end method

.method private l(ILcom/facebook/common/references/a;Landroid/graphics/Canvas;I)Z
    .locals 4
    .param p2    # Lcom/facebook/common/references/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "frameNumber",
            "bitmapReference",
            "canvas",
            "frameType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Canvas;",
            "I)Z"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lb1/a;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lb1/a;->i:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lb1/a;->j:Landroid/graphics/Rect;

    iget-object v3, p0, Lb1/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    const/4 p3, 0x3

    if-eq p4, p3, :cond_2

    .line 5
    iget-object p3, p0, Lb1/a;->d:Lb1/b;

    invoke-interface {p3, p1, p2, p4}, Lb1/b;->e(ILcom/facebook/common/references/a;I)V

    .line 6
    :cond_2
    iget-object p2, p0, Lb1/a;->n:Lb1/a$a;

    if-eqz p2, :cond_3

    .line 7
    invoke-interface {p2, p0, p1, p4}, Lb1/a$a;->c(Lb1/a;II)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private m(Landroid/graphics/Canvas;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "frameNumber",
            "frameType"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_5

    if-eq p3, v4, :cond_3

    if-eq p3, v2, :cond_1

    if-eq p3, v1, :cond_0

    .line 1
    invoke-static {v5}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    return v3

    .line 2
    :cond_0
    :try_start_0
    iget-object p3, p0, Lb1/a;->d:Lb1/b;

    invoke-interface {p3, p2}, Lb1/b;->f(I)Lcom/facebook/common/references/a;

    move-result-object v5

    .line 3
    invoke-direct {p0, p2, v5, p1, v1}, Lb1/a;->l(ILcom/facebook/common/references/a;Landroid/graphics/Canvas;I)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    goto :goto_0

    .line 4
    :cond_1
    :try_start_1
    iget-object p3, p0, Lb1/a;->c:Lcom/facebook/imagepipeline/bitmaps/f;

    iget v6, p0, Lb1/a;->k:I

    iget v7, p0, Lb1/a;->l:I

    iget-object v8, p0, Lb1/a;->m:Landroid/graphics/Bitmap$Config;

    .line 5
    invoke-virtual {p3, v6, v7, v8}, Lcom/facebook/imagepipeline/bitmaps/f;->e(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-direct {p0, p2, v5}, Lb1/a;->n(ILcom/facebook/common/references/a;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    invoke-direct {p0, p2, v5, p1, v2}, Lb1/a;->l(ILcom/facebook/common/references/a;Landroid/graphics/Canvas;I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v3, 0x1

    :cond_2
    move p3, v3

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object p2, Lb1/a;->t:Ljava/lang/Class;

    const-string p3, "Failed to create frame bitmap"

    invoke-static {p2, p3, p1}, Lp0/a;->l0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-static {v5}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    return v3

    .line 10
    :cond_3
    :try_start_3
    iget-object p3, p0, Lb1/a;->d:Lb1/b;

    iget v1, p0, Lb1/a;->k:I

    iget v6, p0, Lb1/a;->l:I

    .line 11
    invoke-interface {p3, p2, v1, v6}, Lb1/b;->g(III)Lcom/facebook/common/references/a;

    move-result-object v5

    .line 12
    invoke-direct {p0, p2, v5}, Lb1/a;->n(ILcom/facebook/common/references/a;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 13
    invoke-direct {p0, p2, v5, p1, v4}, Lb1/a;->l(ILcom/facebook/common/references/a;Landroid/graphics/Canvas;I)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 v3, 0x1

    :cond_4
    move p3, v3

    const/4 v1, 0x2

    goto :goto_0

    .line 14
    :cond_5
    iget-object p3, p0, Lb1/a;->d:Lb1/b;

    invoke-interface {p3, p2}, Lb1/b;->i(I)Lcom/facebook/common/references/a;

    move-result-object v5

    .line 15
    invoke-direct {p0, p2, v5, p1, v3}, Lb1/a;->l(ILcom/facebook/common/references/a;Landroid/graphics/Canvas;I)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x1

    .line 16
    :goto_0
    invoke-static {v5}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    if-nez p3, :cond_7

    if-ne v1, v0, :cond_6

    goto :goto_1

    .line 17
    :cond_6
    invoke-direct {p0, p1, p2, v1}, Lb1/a;->m(Landroid/graphics/Canvas;II)Z

    move-result p1

    return p1

    :cond_7
    :goto_1
    return p3

    :catchall_0
    move-exception p1

    .line 18
    invoke-static {v5}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 19
    throw p1
.end method

.method private n(ILcom/facebook/common/references/a;)Z
    .locals 2
    .param p2    # Lcom/facebook/common/references/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameNumber",
            "targetBitmap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/common/references/a;->A(Lcom/facebook/common/references/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lb1/a;->f:Lb1/c;

    invoke-virtual {p2}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lb1/c;->g(ILandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-static {p2}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    :cond_1
    return p1
.end method

.method private q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb1/a;->f:Lb1/c;

    invoke-interface {v0}, Lb1/c;->f()I

    move-result v0

    iput v0, p0, Lb1/a;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lb1/a;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    iput v0, p0, Lb1/a;->k:I

    .line 3
    :cond_1
    iget-object v0, p0, Lb1/a;->f:Lb1/c;

    invoke-interface {v0}, Lb1/c;->d()I

    move-result v0

    iput v0, p0, Lb1/a;->l:I

    if-ne v0, v1, :cond_3

    .line 4
    iget-object v0, p0, Lb1/a;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_1
    iput v1, p0, Lb1/a;->l:I

    :cond_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lb1/a;->e:Lcom/facebook/fresco/animation/backend/d;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->a()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lb1/a;->d:Lb1/b;

    invoke-interface {v0}, Lb1/b;->b()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lb1/a;->e:Lcom/facebook/fresco/animation/backend/d;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->c()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lb1/a;->d:Lb1/b;

    invoke-interface {v0}, Lb1/b;->clear()V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lb1/a;->l:I

    return v0
.end method

.method public e(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb1/a;->j:Landroid/graphics/Rect;

    .line 2
    iget-object v0, p0, Lb1/a;->f:Lb1/c;

    invoke-interface {v0, p1}, Lb1/c;->e(Landroid/graphics/Rect;)V

    .line 3
    invoke-direct {p0}, Lb1/a;->q()V

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lb1/a;->k:I

    return v0
.end method

.method public g(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    iget-object v0, p0, Lb1/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public h(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "canvas",
            "frameNumber"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lb1/a;->n:Lb1/a$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p3}, Lb1/a$a;->b(Lb1/a;I)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p2, p3, p1}, Lb1/a;->m(Landroid/graphics/Canvas;II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p2, p0, Lb1/a;->n:Lb1/a$a;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p0, p3}, Lb1/a$a;->a(Lb1/a;I)V

    .line 6
    :cond_1
    iget-object p2, p0, Lb1/a;->g:Lcom/facebook/fresco/animation/bitmap/preparation/a;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lb1/a;->h:Lcom/facebook/fresco/animation/bitmap/preparation/b;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lb1/a;->d:Lb1/b;

    invoke-interface {p2, v0, v1, p0, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/a;->a(Lcom/facebook/fresco/animation/bitmap/preparation/b;Lb1/b;Lcom/facebook/fresco/animation/backend/a;I)V

    :cond_2
    return p1
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lb1/a;->clear()V

    return-void
.end method

.method public j(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    iget-object v0, p0, Lb1/a;->e:Lcom/facebook/fresco/animation/backend/d;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/d;->j(I)I

    move-result p1

    return p1
.end method

.method public k(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    iget-object v0, p0, Lb1/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public o(Landroid/graphics/Bitmap$Config;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapConfig"
        }
    .end annotation

    iput-object p1, p0, Lb1/a;->m:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public p(Lb1/a$a;)V
    .locals 0
    .param p1    # Lb1/a$a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameListener"
        }
    .end annotation

    iput-object p1, p0, Lb1/a;->n:Lb1/a$a;

    return-void
.end method
