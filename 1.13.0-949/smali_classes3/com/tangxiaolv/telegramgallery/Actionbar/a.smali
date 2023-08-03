.class public Lcom/tangxiaolv/telegramgallery/Actionbar/a;
.super Landroid/widget/FrameLayout;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

.field private e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

.field private f:Landroid/view/View;

.field private g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

.field private h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Landroid/animation/AnimatorSet;

.field private o:Z

.field private p:Ljava/lang/CharSequence;

.field private q:Z

.field protected r:Z

.field protected s:I

.field private t:Z

.field protected u:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

.field public v:Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;

.field private w:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->i:Z

    .line 3
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->k:Z

    .line 4
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->l:Z

    .line 5
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Lcom/tangxiaolv/telegramgallery/Actionbar/c;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->i:Z

    return p0
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic e(Lcom/tangxiaolv/telegramgallery/Actionbar/a;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic f(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Lcom/tangxiaolv/telegramgallery/Actionbar/h;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    return-object p0
.end method

.method static synthetic g(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Lcom/tangxiaolv/telegramgallery/Actionbar/h;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    return-object p0
.end method

.method public static getCurrentActionBarHeight()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42800000    # 64.0f

    .line 2
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    return v0

    .line 3
    :cond_0
    sget-object v0, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/high16 v2, 0x42400000    # 48.0f

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    return v0

    .line 6
    :cond_1
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)Lcom/tangxiaolv/telegramgallery/Actionbar/c;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    .line 3
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    .line 4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->s:I

    .line 6
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/r;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x1c

    const/high16 v1, 0x41f00000    # 30.0f

    .line 7
    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->a(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0x10

    .line 8
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x41000000    # 8.0f

    .line 9
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 10
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x33

    const/16 v2, 0x36

    invoke-static {v2, v2, v1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Actionbar/a$a;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a$a;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    .line 3
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->a:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->a:Landroid/widget/TextView;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->a:Landroid/widget/TextView;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, -0x2

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/high16 v4, 0x41000000    # 8.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 8
    invoke-static/range {v1 .. v7}, Lcom/tangxiaolv/telegramgallery/Utils/f;->b(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    const/4 v0, -0x2

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->a(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 13
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a$b;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a$b;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    const/16 v1, 0x13

    .line 3
    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->setGravity(I)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->setTextSize(I)V

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    const/4 v1, 0x0

    const/16 v2, 0x33

    const/4 v3, -0x2

    invoke-static {v3, v3, v2}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->setGravity(I)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/r;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    const/4 v1, 0x0

    const/16 v2, 0x33

    const/4 v3, -0x2

    invoke-static {v3, v3, v2}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getAddToContainer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->k:Z

    return v0
.end method

.method public getCastShadows()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->q:Z

    return v0
.end method

.method public getOccupyStatusBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->i:Z

    return v0
.end method

.method public getSubtitleTextView()Lcom/tangxiaolv/telegramgallery/Actionbar/h;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleTextView()Lcom/tangxiaolv/telegramgallery/Actionbar/h;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->i()V

    :cond_1
    :goto_0
    return-void
.end method

.method public j()Lcom/tangxiaolv/telegramgallery/Actionbar/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;-><init>(Landroid/content/Context;Lcom/tangxiaolv/telegramgallery/Actionbar/a;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->i:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget v2, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 8
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v2, 0x5

    .line 9
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    const/high16 v3, -0x67000000

    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    sget v3, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 18
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x33

    .line 19
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    return-object v0
.end method

.method public m()Lcom/tangxiaolv/telegramgallery/Actionbar/c;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->q()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->w:Landroid/graphics/Point;

    .line 3
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;-><init>(Landroid/content/Context;Lcom/tangxiaolv/telegramgallery/Actionbar/a;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x5

    .line 4
    invoke-static {v2, v3, v4}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 2
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    .line 4
    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 5
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x42a00000    # 80.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42900000    # 72.0f

    :goto_0
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x41d00000    # 26.0f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x41900000    # 18.0f

    :goto_1
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    .line 7
    :goto_2
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 8
    iget-boolean v4, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->r:Z

    if-eqz v4, :cond_4

    .line 9
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, 0x42940000    # 74.0f

    goto :goto_3

    :cond_3
    const/high16 v4, 0x42840000    # 66.0f

    :goto_3
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    goto :goto_4

    :cond_4
    sub-int v4, p4, p2

    .line 10
    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    .line 11
    :goto_4
    iget-object v5, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    .line 12
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    .line 13
    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 14
    :cond_5
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    const/4 v5, 0x2

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_8

    .line 15
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_7

    .line 16
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getCurrentActionBarHeight()I

    move-result v4

    div-int/2addr v4, v5

    iget-object v6, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    invoke-virtual {v6}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->getTextHeight()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/2addr v4, v5

    .line 17
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 18
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v5, :cond_6

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_5

    :cond_6
    const/high16 v6, 0x40400000    # 3.0f

    .line 19
    :goto_5
    invoke-static {v6}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_6

    .line 20
    :cond_7
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getCurrentActionBarHeight()I

    move-result v4

    iget-object v6, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    invoke-virtual {v6}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->getTextHeight()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/2addr v4, v5

    .line 21
    :goto_6
    iget-object v6, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    add-int/2addr v4, v2

    .line 22
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    iget-object v8, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    .line 23
    invoke-virtual {v8}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->getTextHeight()I

    move-result v8

    add-int/2addr v8, v4

    .line 24
    invoke-virtual {v6, v1, v4, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 25
    :cond_8
    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_a

    .line 26
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getCurrentActionBarHeight()I

    move-result v4

    div-int/2addr v4, v5

    .line 27
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getCurrentActionBarHeight()I

    move-result v6

    div-int/2addr v6, v5

    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    invoke-virtual {v7}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->getTextHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 28
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 29
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    :cond_9
    const/high16 v6, 0x3f800000    # 1.0f

    .line 30
    invoke-static {v6}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    sub-int/2addr v4, v6

    .line 31
    iget-object v6, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    add-int/2addr v4, v2

    .line 32
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    iget-object v8, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    .line 33
    invoke-virtual {v8}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->getTextHeight()I

    move-result v8

    add-int/2addr v8, v4

    .line 34
    invoke-virtual {v6, v1, v4, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 35
    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v1, :cond_15

    .line 36
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 37
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_14

    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eq v6, v7, :cond_14

    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eq v6, v7, :cond_14

    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eq v6, v7, :cond_14

    iget-object v7, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    if-ne v6, v7, :cond_b

    goto/16 :goto_d

    .line 38
    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 39
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 40
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 41
    iget v10, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_c

    const/16 v10, 0x33

    :cond_c
    and-int/lit8 v11, v10, 0x7

    and-int/lit8 v10, v10, 0x70

    and-int/lit8 v11, v11, 0x7

    const/4 v12, 0x1

    if-eq v11, v12, :cond_d

    goto :goto_8

    :cond_d
    sub-int v11, p4, p2

    sub-int/2addr v11, v8

    .line 42
    div-int/2addr v11, v5

    :goto_8
    const/16 v11, 0x10

    if-eq v10, v11, :cond_10

    const/16 v11, 0x30

    if-eq v10, v11, :cond_f

    const/16 v11, 0x50

    if-eq v10, v11, :cond_e

    .line 43
    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_a

    :cond_e
    sub-int v10, p5, p3

    sub-int/2addr v10, v9

    .line 44
    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_9

    .line 45
    :cond_f
    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_a

    :cond_10
    sub-int v10, p5, p3

    sub-int/2addr v10, v9

    .line 46
    div-int/2addr v10, v5

    iget v11, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_9
    sub-int v7, v10, v7

    .line 47
    :goto_a
    iget-object v10, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->w:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    div-int/2addr v10, v5

    .line 48
    instance-of v11, v6, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    if-eqz v11, :cond_13

    .line 49
    move-object v11, v6

    check-cast v11, Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v12, :cond_13

    .line 50
    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    instance-of v14, v14, Landroid/widget/TextView;

    if-eqz v14, :cond_12

    .line 51
    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 52
    invoke-virtual {v11}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v12

    sub-int v12, v8, v12

    .line 53
    invoke-virtual {v11}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aget-object v11, v11, v5

    if-eqz v11, :cond_11

    .line 54
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int/2addr v12, v11

    .line 55
    :cond_11
    div-int/2addr v12, v5

    sub-int/2addr v10, v12

    goto :goto_c

    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_13
    :goto_c
    add-int/2addr v8, v10

    add-int/2addr v9, v7

    .line 56
    invoke-virtual {v6, v10, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    :cond_14
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_15
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 3
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->getCurrentActionBarHeight()I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 5
    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->m:I

    add-int/2addr p2, v3

    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 6
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-eq p2, v3, :cond_1

    .line 7
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    const/high16 v4, 0x42900000    # 72.0f

    .line 8
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 9
    invoke-virtual {p2, v5, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 10
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 v4, 0x42a00000    # 80.0f

    :cond_0
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result p2

    if-eqz p2, :cond_2

    const/high16 p2, 0x41d00000    # 26.0f

    goto :goto_0

    :cond_2
    const/high16 p2, 0x41900000    # 18.0f

    :goto_0
    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    .line 12
    :goto_1
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    const/high16 v5, -0x80000000

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 13
    iget-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->r:Z

    if-eqz v4, :cond_4

    .line 14
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, 0x42940000    # 74.0f

    goto :goto_2

    :cond_3
    const/high16 v4, 0x42840000    # 66.0f

    :goto_2
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    sub-int v4, v0, v4

    .line 15
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_3

    .line 16
    :cond_4
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 17
    :goto_3
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-virtual {v6, v4, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 18
    :cond_5
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eqz v2, :cond_c

    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_c

    .line 20
    :cond_7
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    sub-int/2addr v0, v2

    const/high16 v2, 0x41800000    # 16.0f

    .line 21
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, p2

    .line 22
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    const/4 v2, 0x2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v3, :cond_a

    .line 23
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 24
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v2, :cond_9

    const/16 v6, 0x12

    goto :goto_5

    :cond_9
    const/16 v6, 0x14

    .line 25
    :goto_5
    invoke-virtual {p2, v6}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->setTextSize(I)V

    .line 26
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    .line 27
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v7, 0x41c00000    # 24.0f

    .line 28
    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v7

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 29
    invoke-virtual {p2, v6, v7}, Landroid/view/View;->measure(II)V

    .line 30
    :cond_a
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, v3, :cond_c

    .line 31
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->z()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 32
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v2, :cond_b

    const/16 v2, 0xe

    goto :goto_6

    :cond_b
    const/16 v2, 0x10

    .line 33
    :goto_6
    invoke-virtual {p2, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->setTextSize(I)V

    .line 34
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    .line 35
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v2, 0x41a00000    # 20.0f

    .line 36
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 37
    invoke-virtual {p2, v0, v2}, Landroid/view/View;->measure(II)V

    .line 38
    :cond_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    :goto_7
    if-ge v4, p2, :cond_f

    .line 39
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 40
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_e

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eq v6, v0, :cond_e

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eq v6, v0, :cond_e

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eq v6, v0, :cond_e

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->b:Landroid/widget/FrameLayout;

    if-ne v6, v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x0

    move-object v5, p0

    move v7, p1

    .line 42
    invoke-virtual/range {v5 .. v10}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_e
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->l:Z

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

.method public p()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->j:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->j:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v5, v4, v0

    const-string v6, "alpha"

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->i:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    if-eqz v2, :cond_1

    new-array v4, v3, [F

    aput v5, v4, v0

    .line 6
    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 9
    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n:Landroid/animation/AnimatorSet;

    .line 10
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 11
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 12
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/tangxiaolv/telegramgallery/Actionbar/a$d;

    invoke-direct {v2, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a$d;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 14
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 22
    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;

    if-eqz v1, :cond_6

    .line 23
    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;

    invoke-virtual {v0, v5, v3}, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->a(FZ)V

    .line 24
    :cond_6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->s:I

    .line 25
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/r;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->r:Z

    return v0
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->m()V

    :cond_0
    return-void
.end method

.method public setActionBarMenuOnItemClick(Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->v:Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;

    return-void
.end method

.method public setAddToContainer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->k:Z

    return-void
.end method

.method public setAllowOverlayTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->o:Z

    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->k()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    instance-of v0, p1, Lcom/tangxiaolv/telegramgallery/Actionbar/e;

    if-eqz v0, :cond_3

    .line 6
    check-cast p1, Lcom/tangxiaolv/telegramgallery/Actionbar/e;

    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->a(FZ)V

    :cond_3
    return-void
.end method

.method public setBackButtonImage(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->k()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCastShadows(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->q:Z

    return-void
.end method

.method public setExtraHeight(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->m:I

    return-void
.end method

.method public setInterceptTouches(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->l:Z

    return-void
.end method

.method public setItemsBackgroundColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->s:I

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOccupyStatusBar(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->i:Z

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    sget p1, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->r:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eqz v0, :cond_2

    .line 4
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->p:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    .line 5
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->r:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->o:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->u:Lcom/tangxiaolv/telegramgallery/Actionbar/f;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/b;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->p:Ljava/lang/CharSequence;

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n()V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 6
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->r:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    .line 7
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->k()V

    :cond_0
    return-void
.end method

.method protected u(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->r:Z

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->d:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->e:Lcom/tangxiaolv/telegramgallery/Actionbar/h;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7
    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/g;

    if-eqz v1, :cond_5

    .line 8
    check-cast v0, Lcom/tangxiaolv/telegramgallery/Actionbar/g;

    if-eqz p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/g;->a(FZ)V

    :cond_5
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->g:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->r:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->n(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public w()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->j:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->j:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->h:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->i:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    if-eqz v2, :cond_1

    new-array v3, v3, [F

    .line 6
    fill-array-data v3, :array_1

    invoke-static {v2, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 9
    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n:Landroid/animation/AnimatorSet;

    .line 10
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 11
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 12
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;

    invoke-direct {v2, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a$c;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 14
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 16
    instance-of v2, v1, Lcom/tangxiaolv/telegramgallery/Actionbar/e;

    if-eqz v2, :cond_3

    .line 17
    check-cast v1, Lcom/tangxiaolv/telegramgallery/Actionbar/e;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->a(FZ)V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->c:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/r;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void

    nop

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

.method public x()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    const/high16 v1, -0x67000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    sget v1, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    .line 7
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x33

    .line 8
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
