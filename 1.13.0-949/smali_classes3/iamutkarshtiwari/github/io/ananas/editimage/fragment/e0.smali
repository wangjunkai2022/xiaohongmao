.class public Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;
.super Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;
.source "RotateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0$b;
    }
.end annotation


# static fields
.field public static final f:I = 0x4

.field public static final g:Ljava/lang/String;

.field private static final h:I = 0x5a


# instance fields
.field private b:Landroid/view/View;

.field private c:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

.field private d:Landroid/app/Dialog;

.field private e:Lio/reactivex/disposables/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/disposables/b;

    invoke-direct {v0}, Lio/reactivex/disposables/b;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->e:Lio/reactivex/disposables/b;

    return-void
.end method

.method public static synthetic X(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->i0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic Y(Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->j0(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->f0(Lio/reactivex/disposables/c;)V

    return-void
.end method

.method public static synthetic a0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;)V
    .locals 0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->g0()V

    return-void
.end method

.method public static synthetic b0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->h0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private c0(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->d0(Landroid/graphics/Bitmap;Z)V

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->U()V

    return-void
.end method

.method private e0(Landroid/graphics/Bitmap;)Lio/reactivex/i0;
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

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/z;

    invoke-direct {v0, p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/z;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lio/reactivex/i0;->h0(Ljava/util/concurrent/Callable;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method private synthetic f0(Lio/reactivex/disposables/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic g0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic h0(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->c0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic i0(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic j0(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->getImageNewRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 4
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    .line 8
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    int-to-float v3, v3

    sub-float/2addr v5, v3

    int-to-float v3, v4

    sub-float/2addr v7, v3

    .line 10
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    invoke-direct {v3, v5, v7, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 13
    iget-object v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    .line 14
    invoke-virtual {v4}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->getRotateAngle()I

    move-result v4

    int-to-float v4, v4

    .line 15
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v6

    .line 16
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v6

    .line 17
    invoke-virtual {v2, v4, v5, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    .line 21
    invoke-virtual {v2, p1, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 22
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    return-object v1
.end method

.method public static k0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;
    .locals 1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;-><init>()V

    return-object v0
.end method

.method private l0()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->b:Landroid/view/View;

    sget v1, Lf7/b$i;->M0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->b:Landroid/view/View;

    sget v1, Lf7/b$i;->x6:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->b:Landroid/view/View;

    sget v2, Lf7/b$i;->z6:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    return-void
.end method

.method public W()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x4

    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    .line 2
    iget-object v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    sget-object v1, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->setDisplayType(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->q:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v2, v2, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    .line 6
    invoke-virtual {v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->a(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 8
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->q:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->d()V

    .line 9
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->q:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    return-void
.end method

.method public d0()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->getRotateAngle()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->getRotateAngle()I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->e0(Landroid/graphics/Bitmap;)Lio/reactivex/i0;

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

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/c0;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/c0;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/i0;->T(Ln7/g;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/a0;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/a0;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/i0;->P(Ln7/a;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/b0;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/b0;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;)V

    sget-object v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/d0;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/d0;

    .line 7
    invoke-virtual {v0, v1, v2}, Lio/reactivex/i0;->a1(Ln7/g;Ln7/g;)Lio/reactivex/disposables/c;

    move-result-object v0

    .line 8
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->U()V

    :goto_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->V()Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    move-result-object p1

    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->q:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    .line 3
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->l0()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lf7/b$i;->x6:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->getRotateAngle()I

    move-result p1

    add-int/lit8 p1, p1, -0x5a

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    invoke-virtual {v0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->e(I)V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lf7/b$i;->z6:I

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->getRotateAngle()I

    move-result p1

    add-int/lit8 p1, p1, 0x5a

    .line 7
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    invoke-virtual {v0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->e(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    sget p2, Lf7/b$l;->h0:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->b:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lf7/b$o;->v0:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Liamutkarshtiwari/github/io/ananas/BaseActivity;->G(Landroid/content/Context;IZ)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->d:Landroid/app/Dialog;

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->b:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->e:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method
