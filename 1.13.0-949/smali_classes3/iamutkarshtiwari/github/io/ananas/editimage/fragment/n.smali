.class public Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;
.super Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;
.source "BeautyFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/fragment/n$b;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:I = 0x7


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/app/Dialog;

.field private d:Landroid/widget/SeekBar;

.field private e:Landroid/widget/SeekBar;

.field private f:Lio/reactivex/disposables/b;

.field private g:Lio/reactivex/disposables/c;

.field private h:Landroid/graphics/Bitmap;

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/disposables/b;

    invoke-direct {v0}, Lio/reactivex/disposables/b;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->f:Lio/reactivex/disposables/b;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->i:I

    .line 4
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->j:I

    return-void
.end method

.method public static synthetic X(Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->i0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic Y(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->j0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic Z(Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;)V
    .locals 0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->h0()V

    return-void
.end method

.method public static synthetic a0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;II)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->f0(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->g0(Lio/reactivex/disposables/c;)V

    return-void
.end method

.method private d0(II)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/i0<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/i;

    invoke-direct {v0, p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/i;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;II)V

    invoke-static {v0}, Lio/reactivex/i0;->h0(Ljava/util/concurrent/Callable;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method private synthetic f0(II)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    .line 2
    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float p1, p1

    int-to-float p2, p2

    .line 4
    invoke-static {v0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->handleSmoothAndWhiteSkin(Landroid/graphics/Bitmap;FF)V

    return-object v0
.end method

.method private synthetic g0(Lio/reactivex/disposables/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic h0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic i0(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static synthetic j0(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static k0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;
    .locals 1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;-><init>()V

    return-object v0
.end method


# virtual methods
.method public U()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->i:I

    .line 2
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->j:I

    .line 3
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->e:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iput v0, v1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    .line 6
    iget-object v1, v1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    invoke-virtual {v1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 7
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v2, v1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v1, v1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->setScaleEnabled(Z)V

    .line 10
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    return-void
.end method

.method public W()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x7

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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->setScaleEnabled(Z)V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    return-void
.end method

.method public c0()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->i:I

    if-nez v1, :cond_0

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->j:I

    if-eqz v1, :cond_1

    .line 2
    :cond_0
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->d0(Landroid/graphics/Bitmap;Z)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->U()V

    return-void
.end method

.method protected e0()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->g:Lio/reactivex/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->g:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    .line 3
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->i:I

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->j:I

    .line 5
    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->i:I

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0, v1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->d0(II)Lio/reactivex/i0;

    move-result-object v0

    .line 8
    invoke-static {}, Lio/reactivex/schedulers/b;->a()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/i0;->c1(Lio/reactivex/h0;)Lio/reactivex/i0;

    move-result-object v0

    .line 9
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/i0;->H0(Lio/reactivex/h0;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/l;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/l;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;)V

    .line 10
    invoke-virtual {v0, v1}, Lio/reactivex/i0;->T(Ln7/g;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/j;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/j;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;)V

    .line 11
    invoke-virtual {v0, v1}, Lio/reactivex/i0;->P(Ln7/a;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/k;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/k;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;)V

    sget-object v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m;

    .line 12
    invoke-virtual {v0, v1, v2}, Lio/reactivex/i0;->a1(Ln7/g;Ln7/g;)Lio/reactivex/disposables/c;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->g:Lio/reactivex/disposables/c;

    .line 13
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->M0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;Liamutkarshtiwari/github/io/ananas/editimage/fragment/n$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->d:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->e:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

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
    sget p2, Lf7/b$l;->c0:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->b:Landroid/view/View;

    .line 2
    sget p2, Lf7/b$i;->k7:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->d:Landroid/widget/SeekBar;

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->b:Landroid/view/View;

    sget p2, Lf7/b$i;->g9:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->e:Landroid/widget/SeekBar;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lf7/b$o;->v0:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Liamutkarshtiwari/github/io/ananas/BaseActivity;->G(Landroid/content/Context;IZ)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->c:Landroid/app/Dialog;

    .line 5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->b:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->e0()V

    return-void
.end method
