.class public Lcom/tangxiaolv/telegramgallery/Actionbar/b;
.super Landroid/widget/FrameLayout;
.source "ActionBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;,
        Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;
    }
.end annotation


# static fields
.field private static G:Landroid/graphics/drawable/Drawable;

.field private static H:Landroid/graphics/drawable/Drawable;

.field private static I:Landroid/graphics/Paint;


# instance fields
.field private A:F

.field private B:J

.field private C:Ljava/lang/String;

.field private D:Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;

.field protected E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

.field public F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Actionbar/f;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/Runnable;

.field private b:Ljava/lang/Runnable;

.field private c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

.field private d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

.field private e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

.field private f:Landroid/animation/AnimatorSet;

.field private g:Landroid/view/animation/DecelerateInterpolator;

.field private h:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public i:F

.field private j:Z

.field protected k:Z

.field private l:I

.field private m:I

.field protected n:Z

.field private o:Landroid/view/VelocityTracker;

.field private p:Z

.field private q:Z

.field private r:J

.field private s:Z

.field private t:I

.field private u:Ljava/lang/Runnable;

.field private v:Ljava/lang/Runnable;

.field private w:Z

.field private x:Landroid/view/View;

.field private y:Z

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->g:Landroid/view/animation/DecelerateInterpolator;

    .line 3
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->h:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->A:F

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D:Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;

    .line 6
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    .line 7
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    .line 8
    check-cast p1, Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    .line 9
    sget-object p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->H:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/tangxiaolv/telegramgallery/q$h;->X1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->H:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/tangxiaolv/telegramgallery/q$h;->q1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->G:Landroid/graphics/drawable/Drawable;

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->I:Landroid/graphics/Paint;

    :cond_0
    return-void
.end method

.method static synthetic A(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->g:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method private G(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->L()V

    .line 2
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->J()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private L(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->N(Z)V

    .line 2
    invoke-direct {p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->P(Z)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->a:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->c(Ljava/lang/Runnable;)V

    .line 5
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->a:Ljava/lang/Runnable;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 8
    :cond_1
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->z:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 10
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->c(Ljava/lang/Runnable;)V

    .line 11
    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->z:Ljava/lang/Runnable;

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 13
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 14
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 15
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 16
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 17
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 18
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    return-void
.end method

.method private N(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->u:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->r:J

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$e;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$e;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->u:Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method

.method private P(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->v:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->r:J

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$f;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$f;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->v:Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method

.method private S(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 2
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->L()V

    .line 3
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->J()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 8
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 11
    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    .line 12
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->N()V

    .line 13
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->D()V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 15
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->L()V

    .line 16
    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 18
    iget-object v1, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    :cond_1
    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getAddToContainer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 21
    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    .line 24
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->n:Z

    .line 25
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 26
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->setInnerTranslationX(F)V

    return-void
.end method

.method private T(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->j:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->l:I

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->p:Z

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 7
    iget-object v1, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-virtual {p1, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->r(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13
    :cond_2
    iget-object v2, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getAddToContainer()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    iget-object v2, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 15
    iget-object v3, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    :cond_3
    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->y:Z

    if-eqz v2, :cond_4

    .line 17
    iget-object v2, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v2, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setOccupyStatusBar(Z)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    iget-object v2, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 19
    iget-object v0, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setTitleOverlayText(Ljava/lang/String;)V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    .line 22
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-boolean v0, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->i:Z

    if-nez v0, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 27
    :cond_6
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->N()V

    return-void
.end method

.method private X(ZLcom/tangxiaolv/telegramgallery/Actionbar/f;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->L()V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->J()V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_2
    iget-object p1, p2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getAddToContainer()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 10
    iget-object p2, p2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic a()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->G:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b0(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->L()V

    .line 2
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->J()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/Actionbar/b;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f0(ZZ)V

    return-void
.end method

.method static synthetic d(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->a:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic e(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->L(Z)V

    return-void
.end method

.method static synthetic f(Lcom/tangxiaolv/telegramgallery/Actionbar/b;ZLcom/tangxiaolv/telegramgallery/Actionbar/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->X(ZLcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    return-void
.end method

.method private f0(ZZ)V
    .locals 4

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->A:F

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->B:J

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5
    :cond_0
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;

    invoke-direct {v0, p0, p2, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$h;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;ZZ)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->z:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic g(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic i(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->G(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    return-void
.end method

.method static synthetic j(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b0(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    return-void
.end method

.method static synthetic k(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->x:Landroid/view/View;

    return-object p0
.end method

.method static synthetic l(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->u:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic m(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->u:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic n(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->v:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic o(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->v:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic p(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    return-object p0
.end method

.method static synthetic q(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    return-object p0
.end method

.method static synthetic r(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->S(Z)V

    return-void
.end method

.method static synthetic s(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->z:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic t(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->z:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic u(Lcom/tangxiaolv/telegramgallery/Actionbar/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->r:J

    return-wide p1
.end method

.method static synthetic v(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->B:J

    return-wide v0
.end method

.method static synthetic w(Lcom/tangxiaolv/telegramgallery/Actionbar/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->B:J

    return-wide p1
.end method

.method static synthetic x(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)F
    .locals 0

    iget p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->A:F

    return p0
.end method

.method static synthetic y(Lcom/tangxiaolv/telegramgallery/Actionbar/b;F)F
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->A:F

    return p1
.end method

.method static synthetic z(Lcom/tangxiaolv/telegramgallery/Actionbar/b;F)F
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->A:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->A:F

    return v0
.end method


# virtual methods
.method public B(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->C(Lcom/tangxiaolv/telegramgallery/Actionbar/f;I)Z

    move-result p1

    return p1
.end method

.method public C(Lcom/tangxiaolv/telegramgallery/Actionbar/f;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D:Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;->s(Lcom/tangxiaolv/telegramgallery/Actionbar/f;Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->I()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_2
    invoke-virtual {p1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p2, v0, :cond_5

    .line 4
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 5
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 6
    invoke-virtual {p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->L()V

    .line 7
    iget-object v0, p2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 9
    iget-object v2, p2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    :cond_3
    iget-object v0, p2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 12
    iget-object p2, p2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13
    :cond_4
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return v1
.end method

.method public D()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->r:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->L(Z)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    return v0
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    return-void
.end method

.method public F(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D:Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;->d(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_0
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->t(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->setInnerTranslationX(F)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    const-string v2, "mainconfig"

    .line 7
    invoke-virtual {p1, v2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "view_animations"

    .line 8
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    const/4 v3, 0x0

    .line 10
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v1, :cond_4

    .line 11
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    :cond_4
    const-wide/16 v6, 0xc8

    if-eqz v3, :cond_10

    .line 12
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 13
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    iput-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 14
    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 15
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    invoke-virtual {v3, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    .line 17
    iget-object v4, v3, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    if-nez v4, :cond_5

    .line 18
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-virtual {v3, v4}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->r(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_6

    .line 20
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    :cond_6
    :goto_1
    iget-object v5, v3, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v5, :cond_9

    .line 22
    invoke-virtual {v5}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getAddToContainer()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 23
    iget-boolean v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->y:Z

    if-eqz v5, :cond_7

    .line 24
    iget-object v5, v3, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v5, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setOccupyStatusBar(Z)V

    .line 25
    :cond_7
    iget-object v5, v3, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    .line 26
    iget-object v8, v3, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    :cond_8
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    iget-object v8, v3, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    iget-object v5, v3, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v8, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->C:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setTitleOverlayText(Ljava/lang/String;)V

    .line 29
    :cond_9
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v8, -0x1

    .line 31
    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32
    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-virtual {v3, v1, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->P(ZZ)V

    .line 35
    invoke-virtual {v2, v0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->P(ZZ)V

    .line 36
    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->N()V

    .line 37
    iget-object v5, v3, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iput-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    .line 38
    iget-boolean v5, v3, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->i:Z

    if-nez v5, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_a

    .line 39
    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_a
    if-nez p1, :cond_b

    .line 40
    invoke-direct {p0, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->G(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    :cond_b
    if-eqz p1, :cond_f

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->r:J

    .line 42
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    .line 43
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;

    invoke-direct {p1, p0, v2, v3}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$o;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Lcom/tangxiaolv/telegramgallery/Actionbar/f;Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->u:Ljava/lang/Runnable;

    .line 44
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b$a;

    invoke-direct {p1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$a;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    invoke-virtual {v2, v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->G(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-nez p1, :cond_e

    .line 45
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    .line 46
    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f0(ZZ)V

    goto/16 :goto_3

    .line 47
    :cond_d
    :goto_2
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b$b;

    invoke-direct {p1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$b;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->a:Ljava/lang/Runnable;

    .line 48
    invoke-static {p1, v6, v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->E(Ljava/lang/Runnable;J)V

    goto/16 :goto_3

    .line 49
    :cond_e
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    goto :goto_3

    .line 50
    :cond_f
    invoke-virtual {v2, v0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->O(ZZ)V

    .line 51
    invoke-virtual {v3, v1, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->O(ZZ)V

    .line 52
    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->D()V

    goto :goto_3

    .line 53
    :cond_10
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->w:Z

    if-eqz p1, :cond_12

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->r:J

    .line 55
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    .line 56
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b$c;

    invoke-direct {p1, p0, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$c;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->u:Ljava/lang/Runnable;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-array v0, v5, [F

    .line 58
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->x:Landroid/view/View;

    if-eqz v0, :cond_11

    new-array v2, v5, [F

    .line 60
    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_11
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    .line 62
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 63
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->h:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 65
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/b$d;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$d;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 67
    :cond_12
    invoke-direct {p0, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b0(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    const/16 p1, 0x8

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->x:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 70
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public H(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sget-object v3, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->G:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, p2

    .line 4
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    sget-object p2, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public I(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tangxiaolv/telegramgallery/Actionbar/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    .line 2
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-direct {p1, p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    .line 5
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 6
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x33

    .line 7
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-direct {p1, p0, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 13
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 14
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 15
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 17
    invoke-virtual {v0, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->s:Z

    return-void
.end method

.method public K(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->s:Z

    return-void
.end method

.method public M()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->r:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->i()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 5
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 2
    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->K()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 3
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->L()V

    :cond_0
    return-void
.end method

.method public R()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->u:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->N(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->v:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->P(Z)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 11
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->N()V

    :cond_3
    return-void
.end method

.method public U(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/f;ZZZ)Z

    move-result p1

    return p1
.end method

.method public V(Lcom/tangxiaolv/telegramgallery/Actionbar/f;Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/f;ZZZ)Z

    move-result p1

    return p1
.end method

.method public W(Lcom/tangxiaolv/telegramgallery/Actionbar/f;ZZZ)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D:Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 3
    invoke-interface {v0, p1, p2, p3, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;->l(Lcom/tangxiaolv/telegramgallery/Actionbar/f;ZZLcom/tangxiaolv/telegramgallery/Actionbar/b;)Z

    move-result p4

    if-eqz p4, :cond_15

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->I()Z

    move-result p4

    if-nez p4, :cond_2

    goto/16 :goto_5

    .line 5
    :cond_2
    iget-object p4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-virtual {p4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 6
    iget-object p4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-virtual {p4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p4

    invoke-static {p4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->t(Landroid/view/View;)V

    :cond_3
    const/4 p4, 0x1

    if-nez p3, :cond_4

    .line 7
    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    const-string v0, "mainconfig"

    .line 8
    invoke-virtual {p3, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v0, "view_animations"

    .line 9
    invoke-interface {p3, v0, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 12
    :goto_1
    invoke-virtual {p1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    .line 13
    iget-object v2, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    if-nez v2, :cond_6

    .line 14
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-virtual {p1, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->r(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    .line 15
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    .line 16
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    :cond_7
    :goto_2
    iget-object v3, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getAddToContainer()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 18
    iget-boolean v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->y:Z

    if-eqz v3, :cond_8

    .line 19
    iget-object v3, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v3, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setOccupyStatusBar(Z)V

    .line 20
    :cond_8
    iget-object v3, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_9

    .line 21
    iget-object v4, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    :cond_9
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    iget-object v4, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 23
    iget-object v3, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setTitleOverlayText(Ljava/lang/String;)V

    .line 24
    :cond_a
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    .line 26
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 28
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->N()V

    .line 31
    iget-object v3, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    .line 32
    iget-boolean v3, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->i:Z

    if-nez v3, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_b

    .line 33
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 34
    :cond_b
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 35
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 36
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 37
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->setInnerTranslationX(F)V

    .line 39
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    if-nez p3, :cond_c

    .line 40
    invoke-direct {p0, p2, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->X(ZLcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    .line 41
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->x:Landroid/view/View;

    if-eqz v3, :cond_c

    .line 42
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p3, :cond_13

    .line 43
    iget-boolean p3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->w:Z

    const-wide/16 v4, 0xc8

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p3, p4, :cond_e

    .line 44
    invoke-direct {p0, p2, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->X(ZLcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->r:J

    .line 46
    iput-boolean p4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    .line 47
    new-instance p2, Lcom/tangxiaolv/telegramgallery/Actionbar/b$i;

    invoke-direct {p2, p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$i;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->v:Ljava/lang/Runnable;

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x2

    new-array v0, p3, [F

    .line 49
    fill-array-data v0, :array_0

    const-string v2, "alpha"

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->x:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->x:Landroid/view/View;

    new-array p3, p3, [F

    fill-array-data p3, :array_1

    invoke-static {v0, v2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_d
    invoke-virtual {p1, p4, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->P(ZZ)V

    .line 54
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    .line 55
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 56
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->h:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 58
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/tangxiaolv/telegramgallery/Actionbar/b$j;

    invoke-direct {p2, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$j;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_4

    .line 60
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->r:J

    .line 61
    iput-boolean p4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    .line 62
    new-instance p3, Lcom/tangxiaolv/telegramgallery/Actionbar/b$k;

    invoke-direct {p3, p0, p2, v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$k;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;ZLcom/tangxiaolv/telegramgallery/Actionbar/f;Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->v:Ljava/lang/Runnable;

    .line 63
    invoke-virtual {p1, p4, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->P(ZZ)V

    .line 64
    new-instance p2, Lcom/tangxiaolv/telegramgallery/Actionbar/b$l;

    invoke-direct {p2, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$l;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    invoke-virtual {p1, p4, p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->G(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object p2

    if-nez p2, :cond_12

    .line 65
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 66
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    const/high16 p3, 0x42400000    # 48.0f

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 67
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;)Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;->a(Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_3

    .line 68
    :cond_f
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->A()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 69
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b$n;

    invoke-direct {p1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$n;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b:Ljava/lang/Runnable;

    .line 70
    invoke-static {p1, v4, v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->E(Ljava/lang/Runnable;J)V

    goto :goto_4

    .line 71
    :cond_10
    invoke-direct {p0, p4, p4}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f0(ZZ)V

    goto :goto_4

    .line 72
    :cond_11
    :goto_3
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b$m;

    invoke-direct {p1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$m;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->a:Ljava/lang/Runnable;

    .line 73
    invoke-static {p1, v4, v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->E(Ljava/lang/Runnable;J)V

    goto :goto_4

    .line 74
    :cond_12
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 75
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 76
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    goto :goto_4

    .line 77
    :cond_13
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->x:Landroid/view/View;

    if-eqz p2, :cond_14

    .line 78
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 79
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->x:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_14
    invoke-virtual {p1, p4, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->P(ZZ)V

    .line 81
    invoke-virtual {p1, p4, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->O(ZZ)V

    .line 82
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->D()V

    :goto_4
    return p4

    :cond_15
    :goto_5
    return v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public Y(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    xor-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->p()V

    .line 3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    invoke-virtual {v1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D:Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;->t(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    :cond_1
    return-void
.end method

.method public Z()V
    .locals 2

    :goto_0
    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    invoke-direct {p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b0(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a0(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b0(Lcom/tangxiaolv/telegramgallery/Actionbar/f;)V

    :goto_0
    return-void
.end method

.method public c0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->c(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public d0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 4
    iget-object v3, v2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 6
    iget-object v4, v2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object v3, v2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->L()V

    .line 10
    iget-object v2, v2, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 12
    invoke-virtual {v1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->W(Lcom/tangxiaolv/telegramgallery/Actionbar/b;)V

    .line 13
    iget-object v2, v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->c:Landroid/view/View;

    if-nez v2, :cond_4

    .line 14
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-virtual {v1, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->r(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 16
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    :cond_5
    :goto_1
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getAddToContainer()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 18
    iget-boolean v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->y:Z

    if-eqz v3, :cond_6

    .line 19
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v3, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setOccupyStatusBar(Z)V

    .line 20
    :cond_6
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 21
    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    iget-object v3, v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 23
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->C:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setTitleOverlayText(Ljava/lang/String;)V

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v3, -0x1

    .line 26
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 28
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->N()V

    .line 30
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    .line 31
    iget-boolean v0, v1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->i:Z

    if-nez v0, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_9
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D:Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;->u()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    .line 4
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->i:F

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    .line 5
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    if-ne p2, v4, :cond_0

    move v3, v1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    if-ne p2, v4, :cond_1

    move v2, v1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 8
    iget-boolean v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    if-nez v5, :cond_2

    const/4 v5, 0x0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-virtual {p1, v2, v5, v3, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 10
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 11
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v1, :cond_5

    .line 12
    iget-object p4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    const/4 v4, 0x0

    if-ne p2, p4, :cond_3

    sub-int/2addr v0, v1

    int-to-float p4, v0

    const/high16 v0, 0x41a00000    # 20.0f

    .line 13
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 14
    invoke-static {v4, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 15
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->H:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 18
    invoke-virtual {v0, v2, v3, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    sget-object p2, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->H:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p4, p4, v0

    float-to-int p4, p4

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 20
    sget-object p2, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 21
    :cond_3
    iget-object p4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    if-ne p2, p4, :cond_5

    const p2, 0x3f4ccccd    # 0.8f

    sub-int p4, v0, v1

    int-to-float p4, p4

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 22
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    cmpg-float p4, p2, v4

    if-gez p4, :cond_4

    goto :goto_1

    :cond_4
    move v4, p2

    .line 23
    :goto_1
    sget-object p2, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->I:Landroid/graphics/Paint;

    const/high16 p4, 0x43190000    # 153.0f

    mul-float v4, v4, p4

    float-to-int p4, v4

    shl-int/lit8 p4, p4, 0x18

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v2

    const/4 v6, 0x0

    int-to-float v7, v3

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float v8, p2

    sget-object v9, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->I:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    return p3
.end method

.method public e0(Landroid/content/Intent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->q:Z

    if-eqz v1, :cond_4

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->f:Landroid/animation/AnimatorSet;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->u:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->N(Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->v:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 9
    invoke-direct {p0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->P(Z)V

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    if-eqz p1, :cond_5

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-virtual {v0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {v0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getInnerTranslationX()F
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->i:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 4
    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->F(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->s()V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->s:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->n:Z

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_10

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->j:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 5
    iget-boolean v0, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->h:Z

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->t:I

    .line 7
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->j:Z

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->l:I

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->m:I

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_10

    .line 11
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->t:I

    if-ne v4, v5, :cond_6

    .line 14
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 15
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    .line 16
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->l:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->m:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 18
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 19
    iget-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->j:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    if-nez v4, :cond_3

    int-to-float v4, v1

    const v5, 0x3ecccccd    # 0.4f

    .line 20
    invoke-static {v5, v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->p(FZ)F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    .line 21
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/2addr v4, v0

    if-le v4, v3, :cond_3

    .line 22
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->T(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 23
    :cond_3
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    if-eqz p1, :cond_10

    .line 24
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->p:Z

    if-nez p1, :cond_5

    .line 25
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 26
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->E:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->t(Landroid/view/View;)V

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 29
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->E()V

    .line 30
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->p:Z

    .line 31
    :cond_5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->setInnerTranslationX(F)V

    goto/16 :goto_3

    :cond_6
    const/4 v4, 0x0

    if-eqz p1, :cond_f

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->t:I

    if-ne v5, v6, :cond_f

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v0, :cond_7

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_f

    .line 37
    :cond_7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    if-nez v0, :cond_8

    .line 38
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    .line 39
    :cond_8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 40
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    const v5, 0x455ac000    # 3500.0f

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    iget-boolean v0, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->h:Z

    if-eqz v0, :cond_a

    .line 42
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 43
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    cmpl-float v7, v0, v5

    if-ltz v7, :cond_a

    .line 44
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v0, v0, v6

    if-lez v0, :cond_a

    .line 45
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->T(Landroid/view/MotionEvent;)V

    .line 46
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->p:Z

    if-nez p1, :cond_a

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->t(Landroid/view/View;)V

    .line 50
    :cond_9
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->p:Z

    .line 51
    :cond_a
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    if-eqz p1, :cond_e

    .line 52
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getX()F

    move-result p1

    .line 53
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 54
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    .line 55
    iget-object v7, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 56
    iget-object v8, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    cmpg-float v8, p1, v8

    if-gez v8, :cond_c

    cmpg-float v5, v6, v5

    if-ltz v5, :cond_b

    cmpg-float v5, v6, v7

    if-gez v5, :cond_c

    :cond_b
    const/4 v5, 0x1

    goto :goto_0

    :cond_c
    const/4 v5, 0x0

    :goto_0
    const-string v6, "innerTranslationX"

    const-string v7, "translationX"

    if-nez v5, :cond_d

    .line 57
    iget-object v8, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float p1, v8, p1

    new-array v3, v3, [Landroid/animation/Animator;

    .line 58
    iget-object v8, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    new-array v9, v2, [F

    .line 59
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v1

    .line 60
    invoke-static {v8, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v1

    new-array v7, v2, [F

    iget-object v8, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 61
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v1

    .line 62
    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v2

    .line 63
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_d
    new-array v3, v3, [Landroid/animation/Animator;

    .line 64
    iget-object v8, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    new-array v9, v2, [F

    const/4 v10, 0x0

    aput v10, v9, v1

    .line 65
    invoke-static {v8, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v1

    new-array v7, v2, [F

    aput v10, v7, v1

    .line 66
    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v2

    .line 67
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    const/high16 v1, 0x43480000    # 200.0f

    .line 68
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->c:Lcom/tangxiaolv/telegramgallery/Actionbar/b$q;

    .line 69
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/16 v1, 0x32

    .line 70
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v6, p1

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 71
    new-instance p1, Lcom/tangxiaolv/telegramgallery/Actionbar/b$g;

    invoke-direct {p1, p0, v5}, Lcom/tangxiaolv/telegramgallery/Actionbar/b$g;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/b;Z)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 73
    iput-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->n:Z

    goto :goto_2

    .line 74
    :cond_e
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->j:Z

    .line 75
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    .line 76
    :goto_2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_10

    .line 77
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 78
    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    goto :goto_3

    :cond_f
    if-nez p1, :cond_10

    .line 79
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->j:Z

    .line 80
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    .line 81
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_10

    .line 82
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 83
    iput-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->o:Landroid/view/VelocityTracker;

    .line 84
    :cond_10
    :goto_3
    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->k:Z

    return p1

    :cond_11
    return v1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->x:Landroid/view/View;

    return-void
.end method

.method public setDelegate(Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->D:Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;

    return-void
.end method

.method public setInnerTranslationX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->i:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setRemoveActionBarExtraHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->y:Z

    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->C:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    .line 3
    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->setTitleOverlayText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUseAlphaAnimations(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/b;->w:Z

    return-void
.end method
