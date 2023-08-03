.class public Lcom/qennnsad/aknkaksd/util/roomanim/a;
.super Landroid/view/SurfaceView;
.source "FireworksView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/roomanim/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/SurfaceHolder;

.field private b:[I

.field private c:Landroid/content/Context;

.field private d:Lcom/qennnsad/aknkaksd/util/roomanim/a$a;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/content/res/Resources;

.field private h:F

.field private i:F

.field private j:Z

.field private k:Lcom/qennnsad/aknkaksd/util/roomanim/c;

.field private l:F

.field private m:F

.field private n:F

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->e:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->f:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->o:Z

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/a;->n()V

    return-void
.end method

.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->e:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->f:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->o:Z

    .line 9
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->c:Landroid/content/Context;

    .line 10
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/a;->n()V

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/util/roomanim/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/util/roomanim/a;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/util/roomanim/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic d(Lcom/qennnsad/aknkaksd/util/roomanim/a;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->g:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic e(Lcom/qennnsad/aknkaksd/util/roomanim/a;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->g:Landroid/content/res/Resources;

    return-object p1
.end method

.method static synthetic f(Lcom/qennnsad/aknkaksd/util/roomanim/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/qennnsad/aknkaksd/util/roomanim/a;)[I
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->b:[I

    return-object p0
.end method

.method static synthetic h(Lcom/qennnsad/aknkaksd/util/roomanim/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->o:Z

    return p0
.end method

.method static synthetic i(Lcom/qennnsad/aknkaksd/util/roomanim/a;)F
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->l:F

    return p0
.end method

.method static synthetic j(Lcom/qennnsad/aknkaksd/util/roomanim/a;F)F
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->l:F

    return p1
.end method

.method static synthetic k(Lcom/qennnsad/aknkaksd/util/roomanim/a;)Lcom/qennnsad/aknkaksd/util/roomanim/c;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->k:Lcom/qennnsad/aknkaksd/util/roomanim/c;

    return-object p0
.end method

.method static synthetic l(Lcom/qennnsad/aknkaksd/util/roomanim/a;)F
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->i:F

    return p0
.end method

.method static synthetic m(Lcom/qennnsad/aknkaksd/util/roomanim/a;)F
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->h:F

    return p0
.end method


# virtual methods
.method public n()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/16 v0, 0x22

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->b:[I

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->a:Landroid/view/SurfaceHolder;

    .line 5
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080235
        0x7f080237
        0x7f080238
        0x7f080239
        0x7f08023a
        0x7f08023b
        0x7f08023c
        0x7f08023d
        0x7f08023e
        0x7f080236
        0x7f08023f
        0x7f080240
        0x7f080241
        0x7f080242
        0x7f080347
        0x7f080352
        0x7f080354
        0x7f080355
        0x7f080356
        0x7f080357
        0x7f080358
        0x7f080359
        0x7f08035a
        0x7f080348
        0x7f080349
        0x7f08034a
        0x7f08034b
        0x7f08034c
        0x7f08034d
        0x7f08034e
        0x7f08034f
        0x7f080350
        0x7f080351
        0x7f080353
    .end array-data
.end method

.method public o()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->h:F

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->i:F

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAnimsopt(Lcom/qennnsad/aknkaksd/util/roomanim/c;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->k:Lcom/qennnsad/aknkaksd/util/roomanim/c;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/util/roomanim/a$a;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/util/roomanim/a$a;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/a;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->d:Lcom/qennnsad/aknkaksd/util/roomanim/a$a;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->o:Z

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/a;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    :cond_1
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method
