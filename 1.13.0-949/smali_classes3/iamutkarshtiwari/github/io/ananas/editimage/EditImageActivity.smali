.class public Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;
.super Liamutkarshtiwari/github/io/ananas/BaseActivity;
.source "EditImageActivity.java"

# interfaces
.implements Li7/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$b;,
        Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$d;,
        Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$c;
    }
.end annotation


# static fields
.field public static final K:Ljava/lang/String; = "is_image_edited"

.field public static final L:I = 0x0

.field public static final M:I = 0x1

.field public static final N:I = 0x2

.field public static final O:I = 0x3

.field public static final P:I = 0x4

.field public static final Q:I = 0x5

.field public static final R:I = 0x6

.field public static final S:I = 0x7

.field public static final T:I = 0x8

.field public static final U:I = 0x9

.field private static final V:I = 0x6e


# instance fields
.field public A:Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;

.field protected B:I

.field private C:I

.field private D:I

.field private E:Landroid/graphics/Bitmap;

.field private F:Landroid/app/Dialog;

.field private G:Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;

.field private H:Liamutkarshtiwari/github/io/ananas/editimage/widget/b;

.field private I:Li7/d;

.field private final J:Lio/reactivex/disposables/b;

.field private final a:[Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

.field public f:Lcom/theartofdev/edmodo/cropper/CropImageView;

.field public g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

.field public h:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

.field public i:I

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field public m:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

.field public n:Landroid/widget/ViewFlipper;

.field public o:Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;

.field public p:Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;

.field public q:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

.field public r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

.field public s:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

.field public t:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

.field public u:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

.field public v:Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;

.field public w:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

.field public x:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;

.field public y:Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;

.field public z:Liamutkarshtiwari/github/io/ananas/editimage/fragment/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/BaseActivity;-><init>()V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    .line 4
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->j:Z

    .line 5
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->k:Z

    .line 6
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->l:Z

    .line 7
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->B:I

    .line 8
    new-instance v0, Lio/reactivex/disposables/b;

    invoke-direct {v0}, Lio/reactivex/disposables/b;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->J:Lio/reactivex/disposables/b;

    return-void
.end method

.method private C0(Landroid/graphics/Bitmap;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lio/reactivex/i0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/j;

    invoke-direct {v0, p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/j;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lio/reactivex/i0;->h0(Ljava/util/concurrent/Callable;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method private E0(Li7/d;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->I:Li7/d;

    return-void
.end method

.method private F0(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static G0(Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "source_path"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget p0, Lf7/b$o;->y0:I

    const/4 p1, 0x0

    invoke-static {p2, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic I(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->m0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic J(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->s0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic M(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->w0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic N(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->q0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic O(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->o0(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method public static synthetic P(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->t0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic R(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V
    .locals 0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->k0()V

    return-void
.end method

.method public static synthetic S(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->j0(Lio/reactivex/disposables/c;)V

    return-void
.end method

.method public static synthetic U(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->u0(Lio/reactivex/disposables/c;)V

    return-void
.end method

.method public static synthetic V(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->l0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic W(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->p0(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Y(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V
    .locals 0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r0()V

    return-void
.end method

.method public static synthetic Z(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->v0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic a0(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->x0(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b0(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;
    .locals 0

    iget-object p0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->G:Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;

    return-object p0
.end method

.method private e0()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->w:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->w:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->q0()V

    :cond_0
    return-void
.end method

.method private g0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "force_portrait"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->k:Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "support_action_bar_visibility"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->l:Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "output_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "editor_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->d:Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .locals 3

    .line 1
    sget v0, Lf7/b$i;->C8:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    sget v0, Lf7/b$o;->v0:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Liamutkarshtiwari/github/io/ananas/BaseActivity;->G(Landroid/content/Context;IZ)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->F:Landroid/app/Dialog;

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->l:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 10
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->C:I

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->D:I

    .line 12
    sget v0, Lf7/b$i;->P0:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    .line 13
    sget v1, Lf7/b$a;->D:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 14
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->n:Landroid/widget/ViewFlipper;

    sget v1, Lf7/b$a;->J:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 15
    sget v0, Lf7/b$i;->D0:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 16
    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget v0, Lf7/b$i;->D6:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 18
    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$d;

    invoke-direct {v1, p0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$d;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    sget v0, Lf7/b$i;->n4:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    .line 20
    sget v0, Lf7/b$i;->L0:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 21
    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/h;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/h;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    sget v0, Lf7/b$i;->J7:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->e:Liamutkarshtiwari/github/io/ananas/editimage/view/StickerView;

    .line 23
    sget v0, Lf7/b$i;->i2:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/CropImageView;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->f:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 24
    sget v0, Lf7/b$i;->y6:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->q:Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;

    .line 25
    sget v0, Lf7/b$i;->r8:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h:Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    .line 26
    sget v0, Lf7/b$i;->o2:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->m:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomPaintView;

    .line 27
    sget v0, Lf7/b$i;->Z0:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->o:Liamutkarshtiwari/github/io/ananas/editimage/view/BrightnessView;

    .line 28
    sget v0, Lf7/b$i;->X1:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->p:Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;

    .line 29
    sget v0, Lf7/b$i;->X0:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    .line 30
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->b0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->G:Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$c;

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$c;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 34
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->n0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    move-result-object v1

    iput-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->s:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    .line 35
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;->l0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    move-result-object v1

    iput-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->t:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    .line 36
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->p0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    move-result-object v1

    iput-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->u:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    .line 37
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->k0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;

    move-result-object v1

    iput-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->v:Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;

    .line 38
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->m0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;

    move-result-object v1

    iput-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->x:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;

    .line 39
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->k0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;

    move-result-object v1

    iput-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->y:Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;

    .line 40
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/o;->a0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/o;

    move-result-object v1

    iput-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->z:Liamutkarshtiwari/github/io/ananas/editimage/fragment/o;

    .line 41
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;->a0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;

    move-result-object v1

    iput-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->A:Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;

    .line 42
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->x0()Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    move-result-object v1

    iput-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->w:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    .line 43
    invoke-direct {p0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->E0(Li7/d;)V

    .line 44
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->r:Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 45
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/i;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/i;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;->setFlingListener(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch$b;)V

    .line 46
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;

    sget v1, Lf7/b$i;->p6:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Landroid/view/View;)V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->H:Liamutkarshtiwari/github/io/ananas/editimage/widget/b;

    .line 47
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/h;->c(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 48
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->a:[Ljava/lang/String;

    const/16 v1, 0x6e

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 49
    :cond_3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->z0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic j0(Lio/reactivex/disposables/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->F:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic k0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->F:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic l0(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->B0()V

    .line 3
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->A0()V

    goto :goto_0

    .line 4
    :cond_0
    sget p1, Lf7/b$o;->H0:I

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->F0(I)V

    :goto_0
    return-void
.end method

.method private synthetic m0(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget p1, Lf7/b$o;->H0:I

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->F0(I)V

    return-void
.end method

.method private synthetic n0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic o0(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->e0()V

    :cond_0
    return-void
.end method

.method private synthetic p0(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->C:I

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->D:I

    invoke-static {p1, v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/utils/a;->l(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic q0(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->G:Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->E(Z)V

    return-void
.end method

.method private synthetic r0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->F:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic s0(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->d0(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private synthetic t0(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget v0, Lf7/b$o;->u0:I

    invoke-direct {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->F0(I)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic u0(Lio/reactivex/disposables/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->F:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->G:Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/y;->E(Z)V

    return-void
.end method

.method private synthetic v0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic w0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private synthetic x0(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/a;->u(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private y0(Ljava/lang/String;)Lio/reactivex/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/i0<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/k;

    invoke-direct {v0, p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/k;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/i0;->h0(Ljava/util/concurrent/Callable;)Lio/reactivex/i0;

    move-result-object p1

    return-object p1
.end method

.method private z0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->y0(Ljava/lang/String;)Lio/reactivex/i0;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/i0;->c1(Lio/reactivex/h0;)Lio/reactivex/i0;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/i0;->H0(Lio/reactivex/h0;)Lio/reactivex/i0;

    move-result-object p1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/c;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/c;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/i0;->T(Ln7/g;)Lio/reactivex/i0;

    move-result-object p1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/o;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/o;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/i0;->U(Ln7/g;)Lio/reactivex/i0;

    move-result-object p1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/m;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/m;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    .line 6
    invoke-virtual {p1, v0}, Lio/reactivex/i0;->P(Ln7/a;)Lio/reactivex/i0;

    move-result-object p1

    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/n;

    invoke-direct {v0, p0}, Liamutkarshtiwari/github/io/ananas/editimage/n;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/f;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/f;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    .line 7
    invoke-virtual {p1, v0, v1}, Lio/reactivex/i0;->a1(Ln7/g;Ln7/g;)Lio/reactivex/disposables/c;

    move-result-object p1

    .line 8
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->J:Lio/reactivex/disposables/b;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    return-void
.end method


# virtual methods
.method protected A0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->b:Ljava/lang/String;

    const-string v2, "source_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->c:Ljava/lang/String;

    const-string v2, "output_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->B:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "is_image_edited"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public B0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->j:Z

    return-void
.end method

.method protected D0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->F:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->F:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public c0()Z
    .locals 1

    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->j:Z

    if-nez v0, :cond_1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->B:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d0(Landroid/graphics/Bitmap;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->E:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->H:Liamutkarshtiwari/github/io/ananas/editimage/widget/b;

    invoke-virtual {p2, v0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->c(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i0()V

    .line 4
    :cond_2
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->E:Landroid/graphics/Bitmap;

    .line 5
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    invoke-virtual {p2, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouch;

    sget-object p2, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase;->setDisplayType(Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 7
    iget p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    .line 8
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->I:Li7/d;

    invoke-interface {p1}, Li7/d;->j()V

    :cond_3
    return-void
.end method

.method protected f0()V
    .locals 3

    .line 1
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->B:I

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->E:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->C0(Landroid/graphics/Bitmap;)Lio/reactivex/i0;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/i0;->c1(Lio/reactivex/h0;)Lio/reactivex/i0;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/i0;->H0(Lio/reactivex/h0;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/b;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/i0;->T(Ln7/g;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/l;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/l;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/i0;->P(Ln7/a;)Lio/reactivex/i0;

    move-result-object v0

    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/d;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/d;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    new-instance v2, Liamutkarshtiwari/github/io/ananas/editimage/e;

    invoke-direct {v2, p0}, Liamutkarshtiwari/github/io/ananas/editimage/e;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Lio/reactivex/i0;->a1(Ln7/g;Ln7/g;)Lio/reactivex/disposables/c;

    move-result-object v0

    .line 8
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->J:Lio/reactivex/disposables/b;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/b;->b(Lio/reactivex/disposables/c;)Z

    return-void
.end method

.method public h0()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->E:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public i0()V
    .locals 1

    .line 1
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->B:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->j:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->A0()V

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->A:Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;->U()V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->z:Liamutkarshtiwari/github/io/ananas/editimage/fragment/o;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/o;->U()V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->y:Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->U()V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->x:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->U()V

    goto :goto_0

    .line 8
    :pswitch_4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->w:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->U()V

    goto :goto_0

    .line 9
    :pswitch_5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->v:Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->U()V

    goto :goto_0

    .line 10
    :pswitch_6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->u:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->U()V

    goto :goto_0

    .line 11
    :pswitch_7
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->t:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;->U()V

    goto :goto_0

    .line 12
    :pswitch_8
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->s:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->U()V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    sget v1, Lf7/b$o;->n0:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lf7/b$o;->i0:I

    new-instance v3, Liamutkarshtiwari/github/io/ananas/editimage/a;

    invoke-direct {v3, p0}, Liamutkarshtiwari/github/io/ananas/editimage/a;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lf7/b$o;->h0:I

    sget-object v3, Liamutkarshtiwari/github/io/ananas/editimage/g;->a:Liamutkarshtiwari/github/io/ananas/editimage/g;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lf7/b$l;->C:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->g0()V

    .line 4
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->J:Lio/reactivex/disposables/b;

    invoke-virtual {v0}, Lio/reactivex/disposables/b;->dispose()V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->H:Liamutkarshtiwari/github/io/ananas/editimage/widget/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/widget/b;->a()V

    .line 5
    :cond_0
    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->D0(Z)V

    :cond_1
    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/16 v0, 0x6e

    if-ne p1, v0, :cond_1

    .line 1
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->D0(Z)V

    :goto_0
    return-void
.end method
