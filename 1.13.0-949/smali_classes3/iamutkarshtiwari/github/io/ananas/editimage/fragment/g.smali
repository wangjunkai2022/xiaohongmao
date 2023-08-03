.class public Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;
.super Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;
.source "AddTextFragment.java"

# interfaces
.implements Li7/f;
.implements Landroid/view/View$OnClickListener;
.implements Li7/d;
.implements Li7/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$c;
    }
.end annotation


# static fields
.field public static final h:I = 0x5

.field public static final i:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

.field private d:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;

.field private e:Landroid/view/inputmethod/InputMethodManager;

.field private f:Lio/reactivex/disposables/b;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/disposables/b;

    invoke-direct {v0}, Lio/reactivex/disposables/b;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->f:Lio/reactivex/disposables/b;

    return-void
.end method

.method private A0(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 2
    sget v2, Lf7/b$i;->H7:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 4
    sget v3, Lf7/b$i;->I7:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v3, 0x8

    .line 5
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic X(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->w0(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic Y(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->v0(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->s0()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->h0(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->t0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic c0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->u0(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic d0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;
    .locals 0

    iget-object p0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    return-object p0
.end method

.method static synthetic e0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)V
    .locals 0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->y0()V

    return-void
.end method

.method static synthetic f0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->z0(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic g0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->A0(Landroid/view/View;)V

    return-void
.end method

.method private h0(Ljava/lang/String;I)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->p0()Landroid/view/View;

    move-result-object v6

    .line 2
    sget v0, Lf7/b$i;->t8:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    .line 3
    sget v0, Lf7/b$i;->I7:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    .line 4
    sget v0, Lf7/b$i;->H7:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lf7/b$g;->x7:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 p2, 0x2

    .line 8
    invoke-virtual {v3, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    new-instance p1, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    iget-object v9, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v10, p2, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v7, p1

    move-object v8, v5

    move-object v11, p0

    invoke-direct/range {v7 .. v12}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;-><init>(Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Li7/f;Landroid/content/Context;)V

    .line 11
    new-instance p2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;

    move-object v0, p2

    move-object v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->h(Li7/b;)V

    .line 12
    invoke-virtual {v6, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    invoke-direct {p0, v6}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->i0(Landroid/view/View;)V

    return-void
.end method

.method private i0(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->A0(Landroid/view/View;)V

    return-void
.end method

.method private k0()V
    .locals 2

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$a;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$a;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private l0()V
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    return-void
.end method

.method private m0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidate()V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->A0(Landroid/view/View;)V

    return-void
.end method

.method private n0(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget v0, Lf7/b$i;->t8:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 p3, -0x1

    if-le p2, p3, :cond_0

    .line 7
    iget-object p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->g:Ljava/util/List;

    invoke-interface {p3, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private o0(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 4
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 5
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-virtual {v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;->getBitmapHolderImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 6
    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-virtual {v3}, Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;->getBitmapHolderImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    .line 7
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v1, v4

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v0, v4

    invoke-static {p1, v1, v0, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private p0()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    sget v1, Lf7/b$l;->k2:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lf7/b$i;->t8:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/16 v2, 0x11

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 5
    sget v1, Lf7/b$i;->I7:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 6
    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/a;

    invoke-direct {v2, p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/a;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object v0
.end method

.method private r0()Z
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->e:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    return v0
.end method

.method private synthetic s0()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-direct {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->o0(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private synthetic t0(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->d0(Landroid/graphics/Bitmap;Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->U()V

    return-void
.end method

.method private synthetic u0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->U()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lf7/b$o;->H0:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic v0(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->m0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic w0(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->n0(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static x0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;
    .locals 1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    invoke-direct {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;-><init>()V

    return-object v0
.end method

.method private y0()V
    .locals 6

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->d:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->d:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 3
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 4
    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_0

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_0

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_0

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_0

    div-float/2addr v0, v2

    div-float/2addr v1, v3

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 6
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->d:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;

    invoke-virtual {v1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->setChildScale(F)V

    :cond_0
    return-void
.end method

.method private z0(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    .line 2
    invoke-static {v0, p2, p3}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->a0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;I)Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;

    move-result-object p2

    .line 3
    new-instance p3, Liamutkarshtiwari/github/io/ananas/editimage/fragment/c;

    invoke-direct {p3, p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/c;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->Y(Li7/h;)V

    return-void
.end method


# virtual methods
.method public F(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public M()V
    .locals 0

    return-void
.end method

.method public U()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->q0()V

    .line 2
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->l0()V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x0

    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    .line 4
    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(I)V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 7
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public W()V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    const/4 v1, 0x5

    iput v1, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    .line 2
    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-virtual {v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;->b(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object v0, v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->k0()V

    return-void
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-virtual {v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public j0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->A0(Landroid/view/View;)V

    .line 2
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/d;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/d;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)V

    invoke-static {v0}, Lio/reactivex/z;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/z;->observeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)V

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/f;

    invoke-direct {v2, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/f;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Ln7/g;Ln7/g;)Lio/reactivex/disposables/c;

    move-result-object v0

    .line 6
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->V()Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    move-result-object p1

    const-string v0, "input_method"

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->e:Landroid/view/inputmethod/InputMethodManager;

    .line 4
    sget v0, Lf7/b$i;->r8:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->c:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->g:Ljava/util/List;

    .line 7
    sget v0, Lf7/b$i;->s8:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->d:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;

    .line 8
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->M0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$c;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->b:Landroid/view/View;

    sget v0, Lf7/b$i;->q0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lf7/b$i;->q0:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-static {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->Z(Landroidx/appcompat/app/AppCompatActivity;)Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;

    move-result-object p1

    .line 4
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/b;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)V

    invoke-virtual {p1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->Y(Li7/h;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget p3, Lf7/b$l;->b0:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->b:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public q(I)V
    .locals 0

    return-void
.end method

.method public q0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->e:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
