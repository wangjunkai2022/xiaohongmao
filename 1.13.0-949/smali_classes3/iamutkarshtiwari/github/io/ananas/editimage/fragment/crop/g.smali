.class public Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;
.super Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;
.source "CropFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$b;,
        Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;
    }
.end annotation


# static fields
.field public static final i:I = 0x3

.field public static final j:Ljava/lang/String;

.field private static k:I

.field private static l:I


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/theartofdev/edmodo/cropper/CropImageView;

.field private e:Li7/c;

.field private f:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;

.field private g:Landroid/widget/TextView;

.field private h:Lio/reactivex/disposables/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->j:Ljava/lang/String;

    .line 2
    sget v0, Lf7/b$f;->F3:I

    sput v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->k:I

    .line 3
    sget v0, Lf7/b$f;->C3:I

    sput v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->l:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;-><init>()V

    .line 2
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$a;)V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->f:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;

    .line 3
    new-instance v0, Lio/reactivex/disposables/b;

    invoke-direct {v0}, Lio/reactivex/disposables/b;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->h:Lio/reactivex/disposables/b;

    return-void
.end method

.method public static synthetic X(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)V
    .locals 0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->l0()V

    return-void
.end method

.method public static synthetic Y(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->o0()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->n0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->m0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic b0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->k0(Lio/reactivex/disposables/c;)V

    return-void
.end method

.method static synthetic c0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->g:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic e0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;Landroid/widget/TextView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->r0(Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic f0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)Lcom/theartofdev/edmodo/cropper/CropImageView;
    .locals 0

    iget-object p0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->d:Lcom/theartofdev/edmodo/cropper/CropImageView;

    return-object p0
.end method

.method static synthetic g0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;
    .locals 0

    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->V()Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    move-result-object p0

    return-object p0
.end method

.method private i0(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private j0()Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/i0<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/b;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)V

    invoke-static {v0}, Lio/reactivex/i0;->h0(Ljava/util/concurrent/Callable;)Lio/reactivex/i0;

    move-result-object v0

    return-object v0
.end method

.method private synthetic k0(Lio/reactivex/disposables/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->e:Li7/c;

    invoke-interface {p1}, Li7/c;->c()V

    return-void
.end method

.method private synthetic l0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->e:Li7/c;

    invoke-interface {v0}, Li7/c;->a()V

    return-void
.end method

.method private synthetic m0(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->d0(Landroid/graphics/Bitmap;Z)V

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->U()V

    return-void
.end method

.method private synthetic n0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->U()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Error while saving image"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic o0()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->d:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCroppedImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static p0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;
    .locals 1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;-><init>()V

    return-object v0
.end method

.method private q0()V
    .locals 7

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v1, 0x14

    .line 4
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 5
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 6
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->values()[Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_0
    array-length v4, v1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 8
    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-direct {p0, v4, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->r0(Landroid/widget/TextView;Z)V

    const/high16 v6, 0x41700000    # 15.0f

    .line 10
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 11
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 12
    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v6}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->getRatioTextId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v5, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v3, :cond_0

    .line 15
    iput-object v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->g:Landroid/widget/TextView;

    .line 16
    :cond_0
    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v5, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->f:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0, v5}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->r0(Landroid/widget/TextView;Z)V

    return-void
.end method

.method private r0(Landroid/widget/TextView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    sget v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->k:I

    goto :goto_0

    :cond_0
    sget v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->l:I

    :goto_0
    invoke-direct {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->i0(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_1

    .line 2
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_1
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public U()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x0

    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->d:Lcom/theartofdev/edmodo/cropper/CropImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->setScaleEnabled(Z)V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7
    sget v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->l:I

    invoke-direct {p0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->i0(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    return-void
.end method

.method public W()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x3

    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    .line 2
    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->d:Lcom/theartofdev/edmodo/cropper/CropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v2, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    sget-object v2, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->setDisplayType(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->setScaleEnabled(Z)V

    .line 7
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 8
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->d:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-virtual {v2}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 9
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->d:Lcom/theartofdev/edmodo/cropper/CropImageView;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public h0()V
    .locals 4

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->h:Lio/reactivex/disposables/b;

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->j0()Lio/reactivex/i0;

    move-result-object v1

    .line 2
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/i0;->c1(Lio/reactivex/h0;)Lio/reactivex/i0;

    move-result-object v1

    .line 3
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/i0;->H0(Lio/reactivex/h0;)Lio/reactivex/i0;

    move-result-object v1

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/e;

    invoke-direct {v2, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/e;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)V

    .line 4
    invoke-virtual {v1, v2}, Lio/reactivex/i0;->T(Ln7/g;)Lio/reactivex/i0;

    move-result-object v1

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/c;

    invoke-direct {v2, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/c;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)V

    .line 5
    invoke-virtual {v1, v2}, Lio/reactivex/i0;->P(Ln7/a;)Lio/reactivex/i0;

    move-result-object v1

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/d;

    invoke-direct {v2, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/d;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)V

    new-instance v3, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/f;

    invoke-direct {v3, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/f;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)V

    .line 6
    invoke-virtual {v1, v2, v3}, Lio/reactivex/i0;->a1(Ln7/g;Ln7/g;)Lio/reactivex/disposables/c;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->V()Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->e:Li7/c;

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->M0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->b:Landroid/view/View;

    sget v1, Lf7/b$i;->j6:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->c:Landroid/widget/LinearLayout;

    .line 5
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->q0()V

    .line 6
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->V()Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    move-result-object v0

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->f:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->d:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 7
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param

    sget p2, Lf7/b$l;->e0:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->b:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->h:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->h:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->e()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method
