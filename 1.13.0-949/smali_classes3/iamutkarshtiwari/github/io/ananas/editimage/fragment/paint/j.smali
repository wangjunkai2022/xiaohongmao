.class public Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;
.super Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;
.source "PaintFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;
.implements Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/c$a;


# static fields
.field public static final p:I = 0x6

.field public static final q:Ljava/lang/String;

.field private static final r:F = 100.0f

.field private static final s:F = 255.0f

.field private static final t:F = 50.0f


# instance fields
.field private b:Landroid/view/View;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;

.field private i:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/c;

.field private j:Landroid/app/Dialog;

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:Lio/reactivex/disposables/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->c:Z

    const/high16 v0, 0x42480000    # 50.0f

    .line 3
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->k:F

    .line 4
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->l:F

    const/high16 v0, 0x437f0000    # 255.0f

    .line 5
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->m:F

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->n:I

    .line 7
    new-instance v0, Lio/reactivex/disposables/b;

    invoke-direct {v0}, Lio/reactivex/disposables/b;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->o:Lio/reactivex/disposables/b;

    return-void
.end method

.method public static synthetic X(Landroid/graphics/Bitmap;)Lio/reactivex/o0;
    .locals 0

    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->h0(Landroid/graphics/Bitmap;)Lio/reactivex/o0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->k0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic Z(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->g0(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->i0(Lio/reactivex/disposables/c;)V

    return-void
.end method

.method public static synthetic b0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->l0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;)V
    .locals 0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->j0()V

    return-void
.end method

.method private d0(Landroid/graphics/Bitmap;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lio/reactivex/i0<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/d;

    invoke-direct {v0, p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/d;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lio/reactivex/i0;->h0(Ljava/util/concurrent/Callable;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method private e0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p2, 0x2

    aget p2, v0, p2

    float-to-int p2, p2

    const/4 v1, 0x5

    aget v1, v0, v1

    float-to-int v1, v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x4

    aget v0, v0, v3

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p2, p2

    int-to-float v1, v1

    .line 3
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    invoke-virtual {p2}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->getPaintBit()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    invoke-virtual {p2}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->getPaintBit()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private f0()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->setWidth(F)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->setColor(I)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-virtual {v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->setStrokeAlpha(F)V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->setEraserStrokeWidth(F)V

    return-void
.end method

.method private synthetic g0(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 4
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 5
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;

    invoke-direct {v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;-><init>([F)V

    .line 6
    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->c()Liamutkarshtiwari/github/io/ananas/editimage/utils/f;

    move-result-object v0

    .line 7
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->b()[F

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 9
    invoke-direct {p0, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method private static synthetic h0(Landroid/graphics/Bitmap;)Lio/reactivex/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/Throwable;

    const-string v0, "Error occurred while applying paint"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/i0;->X(Ljava/lang/Throwable;)Lio/reactivex/i0;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lio/reactivex/i0;->q0(Ljava/lang/Object;)Lio/reactivex/i0;

    move-result-object p0

    return-object p0
.end method

.method private synthetic i0(Lio/reactivex/disposables/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->j:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic j0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic k0(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->c()V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->d0(Landroid/graphics/Bitmap;Z)V

    .line 3
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->U()V

    return-void
.end method

.method private static synthetic l0(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static m0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;
    .locals 1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;-><init>()V

    return-object v0
.end method

.method private o0()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private p0()V
    .locals 1

    .line 1
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->h:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;

    .line 2
    invoke-virtual {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;->W(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b$a;)V

    .line 3
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/c;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/c;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->i:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/c;

    .line 4
    invoke-virtual {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/c;->U(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/c$a;)V

    return-void
.end method

.method private q0(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 4
    iget-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->c:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->t0()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->s0()V

    :goto_0
    return-void
.end method

.method private r0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->c:Z

    .line 2
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    invoke-virtual {v1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->setEraser(Z)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->f:Landroid/widget/LinearLayout;

    sget v1, Lf7/b$i;->Z2:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->c:Z

    if-eqz v1, :cond_0

    sget v1, Lf7/b$h;->x1:I

    goto :goto_0

    :cond_0
    sget v1, Lf7/b$h;->w1:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->g:Landroid/widget/LinearLayout;

    sget v1, Lf7/b$i;->b1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->c:Z

    if-eqz v1, :cond_1

    sget v1, Lf7/b$h;->q1:I

    goto :goto_1

    :cond_1
    sget v1, Lf7/b$h;->r1:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private s0()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->n:I

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->setColor(I)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->k:F

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->setWidth(F)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->m:F

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->setStrokeAlpha(F)V

    return-void
.end method

.method private t0()V
    .locals 2

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->l:F

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->setEraserStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public I(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    .line 1
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->m:F

    .line 2
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->s0()V

    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x0

    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    .line 2
    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;->c()V

    .line 6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public W()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x6

    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    .line 2
    iget-object v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->c:Z

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 2
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->l:F

    .line 3
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->t0()V

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 4
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->k:F

    .line 5
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->s0()V

    :goto_0
    return-void
.end method

.method public n0()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->d0(Landroid/graphics/Bitmap;)Lio/reactivex/i0;

    move-result-object v0

    sget-object v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/i;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/i;

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/i0;->a0(Ln7/o;)Lio/reactivex/i0;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/i0;->c1(Lio/reactivex/h0;)Lio/reactivex/i0;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/i0;->H0(Lio/reactivex/h0;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/g;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/g;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/i0;->T(Ln7/g;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/e;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/e;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/i0;->P(Ln7/a;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/f;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/f;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;)V

    sget-object v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/h;

    .line 7
    invoke-virtual {v0, v1, v2}, Lio/reactivex/i0;->a1(Ln7/g;Ln7/g;)Lio/reactivex/disposables/c;

    move-result-object v0

    .line 8
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->o:Lio/reactivex/disposables/b;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lf7/b$o;->v0:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Liamutkarshtiwari/github/io/ananas/BaseActivity;->G(Landroid/content/Context;IZ)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->j:Landroid/app/Dialog;

    .line 3
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->V()Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    move-result-object p1

    sget v0, Lf7/b$i;->o2:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    .line 4
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->M0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->d:Landroid/view/View;

    .line 5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->Y2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->f:Landroid/widget/LinearLayout;

    .line 6
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->a1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->g:Landroid/widget/LinearLayout;

    .line 7
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->d7:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->p0()V

    .line 9
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->d:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->o0()V

    .line 11
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->f0()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->d:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->U()V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->f:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 4
    iget-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->c:Z

    if-nez p1, :cond_4

    .line 5
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->r0()V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->g:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    .line 7
    iget-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->c:Z

    if-eqz p1, :cond_4

    .line 8
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->r0()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lf7/b$i;->d7:I

    if-ne p1, v0, :cond_4

    .line 10
    iget-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->i:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/c;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->h:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/b;

    :goto_0
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->q0(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget p2, Lf7/b$l;->k0:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->b:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->o:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->n:I

    .line 2
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->s0()V

    return-void
.end method
