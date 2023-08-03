.class public Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;
.super Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;
.source "StickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0$b;
    }
.end annotation


# static fields
.field public static final h:I = 0x1

.field public static final i:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/ViewFlipper;

.field private d:Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

.field private e:Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;

.field private f:Lio/reactivex/disposables/b;

.field private g:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/disposables/b;

    invoke-direct {v0}, Lio/reactivex/disposables/b;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->f:Lio/reactivex/disposables/b;

    return-void
.end method

.method public static synthetic X(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;)V
    .locals 0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->j0()V

    return-void
.end method

.method public static synthetic Y(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->m0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->h0(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->i0(Lio/reactivex/disposables/c;)V

    return-void
.end method

.method public static synthetic b0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->k0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic c0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->l0(Ljava/lang/Throwable;)V

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

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h0;

    invoke-direct {v0, p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h0;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lio/reactivex/i0;->h0(Ljava/util/concurrent/Callable;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method private f0()Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

    return-object v0
.end method

.method private g0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 5

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->getBank()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liamutkarshtiwari/github/io/ananas/editimage/view/b;

    .line 4
    iget-object v3, v2, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->g:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 5
    iget-object v3, v2, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->a:Landroid/graphics/Bitmap;

    iget-object v2, v2, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->g:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic h0(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    .line 2
    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 5
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;

    invoke-direct {v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;-><init>([F)V

    .line 7
    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->c()Liamutkarshtiwari/github/io/ananas/editimage/utils/f;

    move-result-object v0

    .line 8
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/f;->b()[F

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 10
    invoke-direct {p0, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->g0(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method private synthetic i0(Lio/reactivex/disposables/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->g:Landroid/app/Dialog;

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

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->g:Landroid/app/Dialog;

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

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->b()V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->d0(Landroid/graphics/Bitmap;Z)V

    .line 3
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->U()V

    return-void
.end method

.method private synthetic l0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lf7/b$o;->H0:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic m0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showPrevious()V

    return-void
.end method

.method public static n0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;
    .locals 1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;-><init>()V

    return-object v0
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
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->b()V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    return-void
.end method

.method public W()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x1

    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    .line 2
    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->s:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->f0()Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    return-void
.end method

.method public e0()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->e()V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->d0(Landroid/graphics/Bitmap;)Lio/reactivex/i0;

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

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/k0;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/k0;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/i0;->T(Ln7/g;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/i0;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/i0;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/i0;->P(Ln7/a;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/j0;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/j0;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;)V

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/l0;

    invoke-direct {v2, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/l0;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Lio/reactivex/i0;->a1(Ln7/g;Ln7/g;)Lio/reactivex/disposables/c;

    move-result-object v0

    .line 8
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    return-void
.end method

.method public o0(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

    invoke-virtual {v0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->d:Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->m3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewFlipper;

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->c:Landroid/widget/ViewFlipper;

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    sget v1, Lf7/b$a;->D:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->c:Landroid/widget/ViewFlipper;

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    sget v1, Lf7/b$a;->J:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 6
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->L7:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 9
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 11
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->b:Landroid/view/View;

    sget v1, Lf7/b$i;->K7:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 15
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 17
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;)V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->e:Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;

    .line 19
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->M0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 21
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->N0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 23
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g0;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g0;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;)V

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

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    sget p2, Lf7/b$l;->j0:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->b:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lf7/b$o;->I0:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Liamutkarshtiwari/github/io/ananas/BaseActivity;->G(Landroid/content/Context;IZ)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->g:Landroid/app/Dialog;

    .line 4
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->b:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->e()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public p0(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->e:Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;

    invoke-virtual {v0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->e(Ljava/lang/String;I)V

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showNext()V

    return-void
.end method
