.class public Lcom/yalantis/ucrop/e;
.super Landroidx/fragment/app/Fragment;
.source "UCropFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/e$j;,
        Lcom/yalantis/ucrop/e$i;
    }
.end annotation


# static fields
.field public static final A:I = 0x0

.field public static final B:I = 0x1

.field public static final C:I = 0x2

.field public static final D:I = 0x3

.field public static final E:Ljava/lang/String; = "UCropFragment"

.field private static final F:J = 0x32L

.field private static final G:I = 0x3

.field private static final H:I = 0x3a98

.field private static final I:I = 0x2a

.field public static final y:I = 0x5a

.field public static final z:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private a:Lcom/yalantis/ucrop/f;

.field private b:I

.field private c:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Landroidx/transition/Transition;

.field private g:Lcom/yalantis/ucrop/view/UCropView;

.field private h:Lcom/yalantis/ucrop/view/GestureCropImageView;

.field private i:Lcom/yalantis/ucrop/view/OverlayView;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/view/ViewGroup;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/graphics/Bitmap$CompressFormat;

.field private u:I

.field private v:[I

.field private w:Lcom/yalantis/ucrop/view/TransformImageView$b;

.field private final x:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/yalantis/ucrop/e;->z:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->p:Ljava/util/List;

    .line 3
    sget-object v0, Lcom/yalantis/ucrop/e;->z:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->t:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    .line 4
    iput v0, p0, Lcom/yalantis/ucrop/e;->u:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->v:[I

    .line 6
    new-instance v0, Lcom/yalantis/ucrop/e$a;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/e$a;-><init>(Lcom/yalantis/ucrop/e;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->w:Lcom/yalantis/ucrop/view/TransformImageView$b;

    .line 7
    new-instance v0, Lcom/yalantis/ucrop/e$g;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/e$g;-><init>(Lcom/yalantis/ucrop/e;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->x:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method private A0(Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Lcom/yalantis/ucrop/c$h;->J0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    sget v1, Lcom/yalantis/ucrop/c$h;->I0:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3
    sget v2, Lcom/yalantis/ucrop/c$h;->H0:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 4
    new-instance v2, Lcom/yalantis/ucrop/util/i;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/yalantis/ucrop/e;->b:I

    invoke-direct {v2, v3, v4}, Lcom/yalantis/ucrop/util/i;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    new-instance v0, Lcom/yalantis/ucrop/util/i;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/yalantis/ucrop/e;->b:I

    invoke-direct {v0, v2, v3}, Lcom/yalantis/ucrop/util/i;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    new-instance v0, Lcom/yalantis/ucrop/util/i;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/yalantis/ucrop/e;->b:I

    invoke-direct {v0, v1, v2}, Lcom/yalantis/ucrop/util/i;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic U(Lcom/yalantis/ucrop/e;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->p0(F)V

    return-void
.end method

.method static synthetic V(Lcom/yalantis/ucrop/e;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->u0(F)V

    return-void
.end method

.method static synthetic W(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/UCropView;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/e;->g:Lcom/yalantis/ucrop/view/UCropView;

    return-object p0
.end method

.method static synthetic X(Lcom/yalantis/ucrop/e;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/e;->s:Landroid/view/View;

    return-object p0
.end method

.method static synthetic Y(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/f;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/e;->a:Lcom/yalantis/ucrop/f;

    return-object p0
.end method

.method static synthetic Z(Lcom/yalantis/ucrop/e;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    return-object p0
.end method

.method static synthetic a0(Lcom/yalantis/ucrop/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/e;->p:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b0(Lcom/yalantis/ucrop/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/yalantis/ucrop/e;->m0()V

    return-void
.end method

.method static synthetic c0(Lcom/yalantis/ucrop/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->n0(I)V

    return-void
.end method

.method static synthetic d0(Lcom/yalantis/ucrop/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->w0(I)V

    return-void
.end method

.method private e0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->s:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->s:Landroid/view/View;

    .line 3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4
    iget-object v1, p0, Lcom/yalantis/ucrop/e;->s:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->s:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 6
    :cond_0
    sget v0, Lcom/yalantis/ucrop/c$h;->D2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/yalantis/ucrop/e;->s:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private f0(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/c$h;->D2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yalantis/ucrop/e;->f:Landroidx/transition/Transition;

    invoke-static {v0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->l:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/c$h;->n2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/c$h;->Q1:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->j:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/c$h;->l2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/c$h;->O1:I

    if-ne p1, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->k:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/c$h;->m2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/c$h;->P1:I

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private j0(Landroid/view/View;)V
    .locals 3

    .line 1
    sget v0, Lcom/yalantis/ucrop/c$h;->B2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/UCropView;

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->g:Lcom/yalantis/ucrop/view/UCropView;

    .line 2
    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/UCropView;->getCropImageView()Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->g:Lcom/yalantis/ucrop/view/UCropView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/UCropView;->getOverlayView()Lcom/yalantis/ucrop/view/OverlayView;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->i:Lcom/yalantis/ucrop/view/OverlayView;

    .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/e;->w:Lcom/yalantis/ucrop/view/TransformImageView$b;

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/TransformImageView;->setTransformImageListener(Lcom/yalantis/ucrop/view/TransformImageView$b;)V

    .line 5
    sget v0, Lcom/yalantis/ucrop/c$h;->G0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/yalantis/ucrop/e;->d:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6
    sget v0, Lcom/yalantis/ucrop/c$h;->C2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/yalantis/ucrop/e;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static k0(Landroid/os/Bundle;)Lcom/yalantis/ucrop/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/yalantis/ucrop/e;

    invoke-direct {v0}, Lcom/yalantis/ucrop/e;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private l0(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "com.yalantis.ucrop.CompressionFormatName"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/yalantis/ucrop/e;->z:Landroid/graphics/Bitmap$CompressFormat;

    :cond_1
    iput-object v0, p0, Lcom/yalantis/ucrop/e;->t:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    const-string v1, "com.yalantis.ucrop.CompressionQuality"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/e;->u:I

    const-string v0, "com.yalantis.ucrop.AllowedGestures"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 8
    iput-object v0, p0, Lcom/yalantis/ucrop/e;->v:[I

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const-string v1, "com.yalantis.ucrop.MaxBitmapSize"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/TransformImageView;->setMaxBitmapSize(I)V

    .line 10
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const/high16 v1, 0x41200000    # 10.0f

    const-string v3, "com.yalantis.ucrop.MaxScaleMultiplier"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->setMaxScaleMultiplier(F)V

    .line 11
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const/16 v1, 0x1f4

    const-string v3, "com.yalantis.ucrop.ImageToCropBoundsAnimDuration"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBoundsAnimDuration(J)V

    .line 12
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->i:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.FreeStyleCrop"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setFreestyleCropEnabled(Z)V

    .line 13
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->i:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/c$e;->Q0:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v3, "com.yalantis.ucrop.DimmedLayerColor"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setDimmedColor(I)V

    .line 14
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->i:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.CircleDimmedLayer"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCircleDimmedLayer(Z)V

    .line 15
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->i:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.ShowCropFrame"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropFrame(Z)V

    .line 16
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->i:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/yalantis/ucrop/c$e;->O0:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v4, "com.yalantis.ucrop.CropFrameColor"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameColor(I)V

    .line 17
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->i:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/yalantis/ucrop/c$f;->q1:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v4, "com.yalantis.ucrop.CropFrameStrokeWidth"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameStrokeWidth(I)V

    .line 18
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->i:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.ShowCropGrid"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropGrid(Z)V

    .line 19
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->i:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.CropGridRowCount"

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridRowCount(I)V

    .line 20
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->i:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.CropGridColumnCount"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColumnCount(I)V

    .line 21
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->i:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/c$e;->P0:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v3, "com.yalantis.ucrop.CropGridColor"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColor(I)V

    .line 22
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->i:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/c$f;->r1:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v3, "com.yalantis.ucrop.CropGridStrokeWidth"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridStrokeWidth(I)V

    const-string v0, "com.yalantis.ucrop.AspectRatioX"

    const/high16 v1, -0x40800000    # -1.0f

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const-string v3, "com.yalantis.ucrop.AspectRatioY"

    .line 24
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v3, "com.yalantis.ucrop.AspectRatioSelectedByDefault"

    .line 25
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "com.yalantis.ucrop.AspectRatioOptions"

    .line 26
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    if-ltz v6, :cond_5

    cmpl-float v6, v1, v5

    if-ltz v6, :cond_5

    .line 27
    iget-object v3, p0, Lcom/yalantis/ucrop/e;->j:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    const/16 v4, 0x8

    .line 28
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    div-float/2addr v0, v1

    .line 29
    iget-object v1, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v5, v0

    :goto_1
    invoke-virtual {v1, v5}, Lcom/yalantis/ucrop/view/CropImageView;->setTargetAspectRatio(F)V

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_7

    .line 30
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 31
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioX()F

    move-result v0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-virtual {v1}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioY()F

    move-result v1

    div-float/2addr v0, v1

    .line 32
    iget-object v1, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v5, v0

    :goto_2
    invoke-virtual {v1, v5}, Lcom/yalantis/ucrop/view/CropImageView;->setTargetAspectRatio(F)V

    goto :goto_3

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0, v5}, Lcom/yalantis/ucrop/view/CropImageView;->setTargetAspectRatio(F)V

    :goto_3
    const-string v0, "com.yalantis.ucrop.MaxSizeX"

    .line 34
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.MaxSizeY"

    .line 35
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez v0, :cond_8

    if-lez p1, :cond_8

    .line 36
    iget-object v1, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v1, v0}, Lcom/yalantis/ucrop/view/CropImageView;->setMaxResultImageSizeX(I)V

    .line 37
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/view/CropImageView;->setMaxResultImageSizeY(I)V

    :cond_8
    return-void
.end method

.method private m0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentAngle()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->y(F)V

    .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/CropImageView;->A()V

    return-void
.end method

.method private n0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/view/CropImageView;->y(F)V

    .line 2
    iget-object p1, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/view/CropImageView;->A()V

    return-void
.end method

.method private o0(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/e;->v:[I

    aget v2, v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v4, :cond_1

    aget v1, v1, p1

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setScaleEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/e;->v:[I

    aget v2, v1, p1

    if-eq v2, v4, :cond_2

    aget p1, v1, p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v0, v3}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setRotateEnabled(Z)V

    return-void
.end method

.method private p0(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%.1f\u00b0"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private q0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private s0(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "com.yalantis.ucrop.InputUri"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "com.yalantis.ucrop.OutputUri"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 3
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->l0(Landroid/os/Bundle;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1, v0, v1}, Lcom/yalantis/ucrop/view/TransformImageView;->o(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->a:Lcom/yalantis/ucrop/f;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/e;->h0(Ljava/lang/Throwable;)Lcom/yalantis/ucrop/e$j;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/yalantis/ucrop/f;->a(Lcom/yalantis/ucrop/e$j;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/yalantis/ucrop/e;->a:Lcom/yalantis/ucrop/f;

    new-instance v0, Ljava/lang/NullPointerException;

    sget v1, Lcom/yalantis/ucrop/c$m;->E:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/e;->h0(Ljava/lang/Throwable;)Lcom/yalantis/ucrop/e$j;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yalantis/ucrop/f;->a(Lcom/yalantis/ucrop/e$j;)V

    :goto_0
    return-void
.end method

.method private t0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yalantis/ucrop/e;->e:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget v0, Lcom/yalantis/ucrop/c$h;->O1:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/e;->w0(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/yalantis/ucrop/c$h;->Q1:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/e;->w0(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/e;->o0(I)V

    :goto_0
    return-void
.end method

.method private u0(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float p1, p1, v4

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%d%%"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private v0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private w0(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/yalantis/ucrop/e;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->j:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/c$h;->O1:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->k:Landroid/view/ViewGroup;

    sget v4, Lcom/yalantis/ucrop/c$h;->P1:I

    if-ne p1, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->l:Landroid/view/ViewGroup;

    sget v5, Lcom/yalantis/ucrop/c$h;->Q1:I

    if-ne p1, v5, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 5
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->m:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    if-ne p1, v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->n:Landroid/view/ViewGroup;

    if-ne p1, v4, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->o:Landroid/view/ViewGroup;

    if-ne p1, v5, :cond_6

    const/4 v6, 0x0

    :cond_6
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->f0(I)V

    if-ne p1, v5, :cond_7

    .line 9
    invoke-direct {p0, v3}, Lcom/yalantis/ucrop/e;->o0(I)V

    goto :goto_5

    :cond_7
    if-ne p1, v4, :cond_8

    .line 10
    invoke-direct {p0, v2}, Lcom/yalantis/ucrop/e;->o0(I)V

    goto :goto_5

    :cond_8
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->o0(I)V

    :goto_5
    return-void
.end method

.method private x0(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "com.yalantis.ucrop.AspectRatioSelectedByDefault"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "com.yalantis.ucrop.AspectRatioOptions"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-direct {v4, v3, v2, v2}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {v4, v3, v6, v5}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    sget v5, Lcom/yalantis/ucrop/c$m;->G:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v7}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v3, v6, v5}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41100000    # 9.0f

    invoke-direct {v4, v3, v5, v6}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    sget v4, Lcom/yalantis/ucrop/c$h;->M0:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 11
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 12
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yalantis/ucrop/model/AspectRatio;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/yalantis/ucrop/c$k;->O:I

    invoke-virtual {v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 15
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;

    .line 17
    iget v7, p0, Lcom/yalantis/ucrop/e;->b:I

    invoke-virtual {v6, v7}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setActiveColor(I)V

    .line 18
    invoke-virtual {v6, v2}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setAspectRatio(Lcom/yalantis/ucrop/model/AspectRatio;)V

    .line 19
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 20
    iget-object v2, p0, Lcom/yalantis/ucrop/e;->p:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/yalantis/ucrop/e;->p:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 22
    iget-object p1, p0, Lcom/yalantis/ucrop/e;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 23
    new-instance v0, Lcom/yalantis/ucrop/e$b;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/e$b;-><init>(Lcom/yalantis/ucrop/e;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private y0(Landroid/view/View;)V
    .locals 3

    .line 1
    sget v0, Lcom/yalantis/ucrop/c$h;->m2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->q:Landroid/widget/TextView;

    .line 2
    sget v0, Lcom/yalantis/ucrop/c$h;->n1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    new-instance v2, Lcom/yalantis/ucrop/e$c;

    invoke-direct {v2, p0}, Lcom/yalantis/ucrop/e$c;-><init>(Lcom/yalantis/ucrop/e;)V

    .line 3
    invoke-virtual {v1, v2}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    iget v1, p0, Lcom/yalantis/ucrop/e;->b:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setMiddleLineColor(I)V

    .line 5
    sget v0, Lcom/yalantis/ucrop/c$h;->O2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yalantis/ucrop/e$d;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/e$d;-><init>(Lcom/yalantis/ucrop/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget v0, Lcom/yalantis/ucrop/c$h;->P2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/yalantis/ucrop/e$e;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/e$e;-><init>(Lcom/yalantis/ucrop/e;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget p1, p0, Lcom/yalantis/ucrop/e;->b:I

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->q0(I)V

    return-void
.end method

.method private z0(Landroid/view/View;)V
    .locals 3

    .line 1
    sget v0, Lcom/yalantis/ucrop/c$h;->n2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->r:Landroid/widget/TextView;

    .line 2
    sget v0, Lcom/yalantis/ucrop/c$h;->q1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    new-instance v2, Lcom/yalantis/ucrop/e$f;

    invoke-direct {v2, p0}, Lcom/yalantis/ucrop/e$f;-><init>(Lcom/yalantis/ucrop/e;)V

    .line 3
    invoke-virtual {v1, v2}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    iget v0, p0, Lcom/yalantis/ucrop/e;->b:I

    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setMiddleLineColor(I)V

    .line 5
    iget p1, p0, Lcom/yalantis/ucrop/e;->b:I

    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->v0(I)V

    return-void
.end method


# virtual methods
.method public B0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/c$e;->c1:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.UcropColorControlsWidgetActive"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/e;->b:I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/c$e;->R0:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.UcropLogoColor"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/e;->d:I

    const-string v0, "com.yalantis.ucrop.HideBottomControls"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/yalantis/ucrop/e;->e:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/yalantis/ucrop/c$e;->N0:I

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v3, "com.yalantis.ucrop.UcropRootViewBackgroundColor"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/e;->c:I

    .line 5
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->j0(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->a:Lcom/yalantis/ucrop/f;

    invoke-interface {v0, v2}, Lcom/yalantis/ucrop/f;->b(Z)V

    .line 7
    iget-boolean v0, p0, Lcom/yalantis/ucrop/e;->e:Z

    if-eqz v0, :cond_0

    .line 8
    sget v0, Lcom/yalantis/ucrop/c$h;->m0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/c$k;->P:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    new-instance v0, Landroidx/transition/AutoTransition;

    invoke-direct {v0}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->f:Landroidx/transition/Transition;

    const-wide/16 v1, 0x32

    .line 12
    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 13
    sget v0, Lcom/yalantis/ucrop/c$h;->O1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->j:Landroid/view/ViewGroup;

    .line 14
    iget-object v1, p0, Lcom/yalantis/ucrop/e;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    sget v0, Lcom/yalantis/ucrop/c$h;->P1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->k:Landroid/view/ViewGroup;

    .line 16
    iget-object v1, p0, Lcom/yalantis/ucrop/e;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget v0, Lcom/yalantis/ucrop/c$h;->Q1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->l:Landroid/view/ViewGroup;

    .line 18
    iget-object v1, p0, Lcom/yalantis/ucrop/e;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    sget v0, Lcom/yalantis/ucrop/c$h;->M0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->m:Landroid/view/ViewGroup;

    .line 20
    sget v0, Lcom/yalantis/ucrop/c$h;->N0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->n:Landroid/view/ViewGroup;

    .line 21
    sget v0, Lcom/yalantis/ucrop/c$h;->O0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yalantis/ucrop/e;->o:Landroid/view/ViewGroup;

    .line 22
    invoke-direct {p0, p2, p1}, Lcom/yalantis/ucrop/e;->x0(Landroid/os/Bundle;Landroid/view/View;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->y0(Landroid/view/View;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->z0(Landroid/view/View;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->A0(Landroid/view/View;)V

    goto :goto_0

    .line 26
    :cond_0
    sget p2, Lcom/yalantis/ucrop/c$h;->C2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 27
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void
.end method

.method public g0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->s:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->a:Lcom/yalantis/ucrop/f;

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/f;->b(Z)V

    .line 3
    iget-object v0, p0, Lcom/yalantis/ucrop/e;->h:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/e;->t:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/yalantis/ucrop/e;->u:I

    new-instance v3, Lcom/yalantis/ucrop/e$h;

    invoke-direct {v3, p0}, Lcom/yalantis/ucrop/e$h;-><init>(Lcom/yalantis/ucrop/e;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yalantis/ucrop/view/CropImageView;->v(Landroid/graphics/Bitmap$CompressFormat;ILa6/a;)V

    return-void
.end method

.method protected h0(Ljava/lang/Throwable;)Lcom/yalantis/ucrop/e$j;
    .locals 3

    new-instance v0, Lcom/yalantis/ucrop/e$j;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.yalantis.ucrop.Error"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x60

    invoke-direct {v0, p0, v1, p1}, Lcom/yalantis/ucrop/e$j;-><init>(Lcom/yalantis/ucrop/e;ILandroid/content/Intent;)V

    return-object v0
.end method

.method protected i0(Landroid/net/Uri;FIIII)Lcom/yalantis/ucrop/e$j;
    .locals 3

    .line 1
    new-instance v0, Lcom/yalantis/ucrop/e$j;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.yalantis.ucrop.OutputUri"

    .line 2
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.yalantis.ucrop.CropAspectRatio"

    .line 3
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.yalantis.ucrop.ImageWidth"

    .line 4
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.yalantis.ucrop.ImageHeight"

    .line 5
    invoke-virtual {p1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.yalantis.ucrop.OffsetX"

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.yalantis.ucrop.OffsetY"

    .line 7
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    invoke-direct {v0, p0, p2, p1}, Lcom/yalantis/ucrop/e$j;-><init>(Lcom/yalantis/ucrop/e;ILandroid/content/Intent;)V

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/yalantis/ucrop/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/yalantis/ucrop/f;

    iput-object p1, p0, Lcom/yalantis/ucrop/e;->a:Lcom/yalantis/ucrop/f;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/yalantis/ucrop/f;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/yalantis/ucrop/f;

    iput-object p1, p0, Lcom/yalantis/ucrop/e;->a:Lcom/yalantis/ucrop/f;

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement UCropFragmentCallback"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget p3, Lcom/yalantis/ucrop/c$k;->Q:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/yalantis/ucrop/e;->B0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/yalantis/ucrop/e;->s0(Landroid/os/Bundle;)V

    .line 5
    invoke-direct {p0}, Lcom/yalantis/ucrop/e;->t0()V

    .line 6
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/e;->e0(Landroid/view/View;)V

    return-object p1
.end method

.method public r0(Lcom/yalantis/ucrop/f;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/e;->a:Lcom/yalantis/ucrop/f;

    return-void
.end method
