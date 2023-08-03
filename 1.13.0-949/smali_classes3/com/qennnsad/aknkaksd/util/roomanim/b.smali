.class public Lcom/qennnsad/aknkaksd/util/roomanim/b;
.super Landroid/view/SurfaceView;
.source "GenView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/roomanim/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/SurfaceHolder;

.field private b:[I

.field private c:Landroid/content/Context;

.field private d:Lcom/qennnsad/aknkaksd/util/roomanim/b$a;

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
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->e:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->f:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->o:Z

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->n()V

    return-void
.end method

.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->e:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->f:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->o:Z

    .line 9
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->c:Landroid/content/Context;

    .line 10
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->n()V

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/util/roomanim/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/util/roomanim/b;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/util/roomanim/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic d(Lcom/qennnsad/aknkaksd/util/roomanim/b;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->g:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic e(Lcom/qennnsad/aknkaksd/util/roomanim/b;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->g:Landroid/content/res/Resources;

    return-object p1
.end method

.method static synthetic f(Lcom/qennnsad/aknkaksd/util/roomanim/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/qennnsad/aknkaksd/util/roomanim/b;)[I
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->b:[I

    return-object p0
.end method

.method static synthetic h(Lcom/qennnsad/aknkaksd/util/roomanim/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->o:Z

    return p0
.end method

.method static synthetic i(Lcom/qennnsad/aknkaksd/util/roomanim/b;)F
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->l:F

    return p0
.end method

.method static synthetic j(Lcom/qennnsad/aknkaksd/util/roomanim/b;F)F
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->l:F

    return p1
.end method

.method static synthetic k(Lcom/qennnsad/aknkaksd/util/roomanim/b;)Lcom/qennnsad/aknkaksd/util/roomanim/c;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->k:Lcom/qennnsad/aknkaksd/util/roomanim/c;

    return-object p0
.end method

.method static synthetic l(Lcom/qennnsad/aknkaksd/util/roomanim/b;)F
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->i:F

    return p0
.end method

.method static synthetic m(Lcom/qennnsad/aknkaksd/util/roomanim/b;)F
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->h:F

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

    const/16 v0, 0x27

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->b:[I

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->a:Landroid/view/SurfaceHolder;

    .line 5
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0804ee
        0x7f0804ef
        0x7f0804f0
        0x7f0804f1
        0x7f0804f2
        0x7f0804f3
        0x7f0804f4
        0x7f0804f5
        0x7f0804f6
        0x7f0804f7
        0x7f0804f8
        0x7f0804f9
        0x7f0804fa
        0x7f0804fb
        0x7f0804fc
        0x7f0804fd
        0x7f0804fe
        0x7f0804ff
        0x7f080500
        0x7f080501
        0x7f080502
        0x7f080503
        0x7f080504
        0x7f080505
        0x7f080506
        0x7f080507
        0x7f080508
        0x7f080509
        0x7f08050a
        0x7f08050b
        0x7f08050c
        0x7f08050d
        0x7f08050e
        0x7f08050f
        0x7f080510
        0x7f080511
        0x7f080512
        0x7f080513
        0x7f080514
    .end array-data
.end method

.method public o()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->j:Z

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

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->h:F

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->i:F

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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->k:Lcom/qennnsad/aknkaksd/util/roomanim/c;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/b;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->d:Lcom/qennnsad/aknkaksd/util/roomanim/b$a;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->o:Z

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    :cond_1
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method
