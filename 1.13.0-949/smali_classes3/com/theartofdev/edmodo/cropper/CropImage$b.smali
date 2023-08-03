.class public final Lcom/theartofdev/edmodo/cropper/CropImage$b;
.super Ljava/lang/Object;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->a:Landroid/net/Uri;

    .line 4
    new-instance p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-direct {p1}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/theartofdev/edmodo/cropper/CropImage$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$b;-><init>(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public A(Landroid/graphics/Rect;)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    return-object p0
.end method

.method public B(I)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialRotation:I

    return-object p0
.end method

.method public C(II)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 2
    iput p2, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    return-object p0
.end method

.method public D(I)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxZoom:I

    return-object p0
.end method

.method public E(II)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    .line 2
    iput p2, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    return-object p0
.end method

.method public F(II)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 2
    iput p2, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    return-object p0
.end method

.method public G(Z)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    return-object p0
.end method

.method public H(Z)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->noOutputImage:Z

    return-object p0
.end method

.method public I(Landroid/graphics/Bitmap$CompressFormat;)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public J(I)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputCompressQuality:I

    return-object p0
.end method

.method public K(Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputUri:Landroid/net/Uri;

    return-object p0
.end method

.method public L(II)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/theartofdev/edmodo/cropper/CropImage$b;->M(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Lcom/theartofdev/edmodo/cropper/CropImage$b;

    move-result-object p1

    return-object p1
.end method

.method public M(IILcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestWidth:I

    .line 2
    iput p2, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestHeight:I

    .line 3
    iput-object p3, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/theartofdev/edmodo/cropper/CropImageView$RequestSizeOptions;

    return-object p0
.end method

.method public N(I)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->rotationDegrees:I

    return-object p0
.end method

.method public O(Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1
    .param p1    # Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->scaleType:Lcom/theartofdev/edmodo/cropper/CropImageView$ScaleType;

    return-object p0
.end method

.method public P(Z)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->showCropOverlay:Z

    return-object p0
.end method

.method public Q(F)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    return-object p0
.end method

.method public R(F)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    return-object p0
.end method

.method public S(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public T(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0xcb

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public U(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0xb
    .end annotation

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xcb

    invoke-virtual {p2, p1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public V(Landroid/content/Context;Landroid/app/Fragment;Ljava/lang/Class;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0xcb

    invoke-virtual {p2, p1, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public W(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage$b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xcb

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public X(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/lang/Class;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0xcb

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageActivity;

    invoke-virtual {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->validate()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->a:Landroid/net/Uri;

    const-string v1, "CROP_IMAGE_EXTRA_SOURCE"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    iget-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    const-string v1, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "CROP_IMAGE_EXTRA_BUNDLE"

    .line 7
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public c(I)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityMenuIconColor:I

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e(Z)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowCounterRotation:Z

    return-object p0
.end method

.method public f(Z)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowFlipping:Z

    return-object p0
.end method

.method public g(Z)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->allowRotation:Z

    return-object p0
.end method

.method public h(II)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    .line 2
    iput p2, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    return-object p0
.end method

.method public i(Z)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->autoZoomEnabled:Z

    return-object p0
.end method

.method public j(I)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    return-object p0
.end method

.method public k(I)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    return-object p0
.end method

.method public l(F)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    return-object p0
.end method

.method public m(F)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    return-object p0
.end method

.method public n(F)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    return-object p0
.end method

.method public o(I)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    return-object p0
.end method

.method public p(F)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    return-object p0
.end method

.method public q(I)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    return-object p0
.end method

.method public r(Ljava/lang/CharSequence;)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public s(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1
    .param p1    # Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    return-object p0
.end method

.method public t(Z)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    return-object p0
.end method

.method public u(Z)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipHorizontally:Z

    return-object p0
.end method

.method public v(Z)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-boolean p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->flipVertically:Z

    return-object p0
.end method

.method public w(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1
    .param p1    # Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput-object p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    return-object p0
.end method

.method public x(I)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    return-object p0
.end method

.method public y(F)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    return-object p0
.end method

.method public z(F)Lcom/theartofdev/edmodo/cropper/CropImage$b;
    .locals 1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImage$b;->b:Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    iput p1, v0, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    return-object p0
.end method
