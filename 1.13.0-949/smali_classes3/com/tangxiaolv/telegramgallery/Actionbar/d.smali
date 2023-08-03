.class public Lcom/tangxiaolv/telegramgallery/Actionbar/d;
.super Landroid/widget/FrameLayout;
.source "ActionBarMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/Actionbar/d$j;,
        Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;
    }
.end annotation


# instance fields
.field private a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

.field private b:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

.field private c:Lcom/tangxiaolv/telegramgallery/Components/a;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageView;

.field protected f:Landroid/widget/ImageView;

.field private g:Landroid/widget/FrameLayout;

.field private h:Z

.field private i:Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;

.field private j:Landroid/graphics/Rect;

.field private k:[I

.field private l:Landroid/view/View;

.field private m:Ljava/lang/Runnable;

.field private n:Z

.field private o:I

.field private p:I

.field private q:Lcom/tangxiaolv/telegramgallery/Actionbar/d$j;

.field private r:Z

.field protected s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tangxiaolv/telegramgallery/Actionbar/c;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->h:Z

    const/high16 v1, 0x41800000    # 16.0f

    .line 3
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    iput v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->o:I

    .line 4
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->p:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->r:Z

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p3}, Lcom/tangxiaolv/telegramgallery/r;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_0
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    .line 8
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->f:Landroid/widget/ImageView;

    .line 9
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    .line 12
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 13
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 14
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Components/a;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->j:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->t:Z

    return p0
.end method

.method static synthetic d(Lcom/tangxiaolv/telegramgallery/Actionbar/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->t:Z

    return p1
.end method

.method static synthetic e(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->r:Z

    return p0
.end method

.method static synthetic f(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Actionbar/c;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    return-object p0
.end method

.method static synthetic g(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Actionbar/d$j;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->q:Lcom/tangxiaolv/telegramgallery/Actionbar/d$j;

    return-object p0
.end method

.method static synthetic h(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic i(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->i:Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;

    return-object p0
.end method

.method static synthetic j(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method private v(ZZ)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->n:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->k:[I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->k:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sget v1, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->o:I

    sub-int/2addr v0, v1

    neg-int v1, v1

    if-gez v0, :cond_2

    sub-int/2addr v1, v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->p:I

    if-nez v1, :cond_1

    .line 5
    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v1, v0

    :cond_2
    :goto_0
    move v5, v1

    if-eqz p1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->e()V

    .line 8
    :cond_3
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->p:I

    if-nez v0, :cond_9

    .line 9
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->n:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, p0, v0, v5}, Lcom/tangxiaolv/telegramgallery/Components/a;->showAsDropDown(Landroid/view/View;II)V

    :cond_4
    if-eqz p2, :cond_b

    .line 11
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    add-int v4, p1, p2

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tangxiaolv/telegramgallery/Components/a;->update(Landroid/view/View;IIII)V

    goto/16 :goto_1

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v0, :cond_7

    .line 13
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v3, v0, v5}, Lcom/tangxiaolv/telegramgallery/Components/a;->showAsDropDown(Landroid/view/View;II)V

    :cond_6
    if-eqz p2, :cond_b

    .line 15
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p1

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    sub-int v4, p1, p2

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/tangxiaolv/telegramgallery/Components/a;->update(Landroid/view/View;IIII)V

    goto :goto_1

    .line 16
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    if-eqz p1, :cond_8

    .line 18
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v3, v0, v5}, Lcom/tangxiaolv/telegramgallery/Components/a;->showAsDropDown(Landroid/view/View;II)V

    :cond_8
    if-eqz p2, :cond_b

    .line 19
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int v4, p1, p2

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/tangxiaolv/telegramgallery/Components/a;->update(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_9
    const/high16 v0, 0x41200000    # 10.0f

    if-eqz p1, :cond_a

    .line 20
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1, p0, v1, v5}, Lcom/tangxiaolv/telegramgallery/Components/a;->showAsDropDown(Landroid/view/View;II)V

    :cond_a
    if-eqz p2, :cond_b

    .line 21
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    neg-int v4, p1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tangxiaolv/telegramgallery/Components/a;->update(Landroid/view/View;IIII)V

    :cond_b
    :goto_1
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSearchField()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public k(ILjava/lang/String;I)Landroid/widget/TextView;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->j:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->k:[I

    .line 4
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/a$d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    .line 5
    new-instance v1, Lcom/tangxiaolv/telegramgallery/Actionbar/d$b;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$b;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Actionbar/d$c;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$c;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)V

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->setDispatchKeyEventListener(Lcom/tangxiaolv/telegramgallery/Components/a$e;)V

    .line 7
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0xdededf

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    sget v1, Lcom/tangxiaolv/telegramgallery/q$h;->Y1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->x()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x10

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    const/high16 v1, 0x41800000    # 16.0f

    .line 13
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v1, 0x43440000    # 196.0f

    .line 15
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_3

    const/high16 p1, 0x41400000    # 12.0f

    .line 18
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 19
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->x()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p2, p2, p1, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 22
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    iget-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->n:Z

    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->setShowedFromBotton(Z)V

    .line 23
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->addView(Landroid/view/View;)V

    .line 24
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 25
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->x()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x5

    .line 26
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_4
    const/4 p2, -0x1

    .line 27
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p2, 0x42400000    # 48.0f

    .line 28
    invoke-static {p2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    new-instance p2, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;

    invoke-direct {p2, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$d;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->o:I

    iget p1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->o:I

    return-object v0
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/a;->dismiss()V

    :cond_0
    return-void
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->h:Z

    return v0
.end method

.method public o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->a:Lcom/tangxiaolv/telegramgallery/Actionbar/a;

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->t(Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/a;->u(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->v(ZZ)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3
    :cond_0
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Actionbar/d$a;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$a;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->m:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    .line 4
    invoke-static {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->E(Ljava/lang/Runnable;J)V

    goto/16 :goto_3

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_8

    .line 6
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->u()V

    return v3

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 12
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->k:[I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->k:[I

    aget v1, v1, v4

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->k:[I

    aget v6, v5, v3

    int-to-float v6, v6

    add-float/2addr v1, v6

    .line 15
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 16
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->k:[I

    aget v6, v5, v4

    int-to-float v6, v6

    sub-float/2addr v0, v6

    .line 17
    aget v5, v5, v3

    int-to-float v5, v5

    sub-float/2addr v1, v5

    .line 18
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->l:Landroid/view/View;

    const/4 v2, 0x0

    .line 19
    :goto_0
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {v5}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->getItemsCount()I

    move-result v5

    if-ge v2, v5, :cond_d

    .line 20
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {v5, v2}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->d(I)Landroid/view/View;

    move-result-object v5

    .line 21
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->j:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 22
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x64

    if-ge v6, v7, :cond_7

    .line 23
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->j:Landroid/graphics/Rect;

    float-to-int v7, v0

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    const/16 v7, 0x15

    if-nez v6, :cond_5

    .line 24
    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 25
    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    .line 26
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v6, v7, :cond_7

    .line 27
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1

    .line 28
    :cond_5
    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    .line 29
    invoke-virtual {v5, v3}, Landroid/view/View;->setSelected(Z)V

    .line 30
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v6, v7, :cond_6

    .line 31
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 32
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    invoke-virtual {v5, v0, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 33
    iput-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->l:Landroid/view/View;

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_8
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 35
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->l:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 36
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 37
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-eqz v0, :cond_9

    .line 38
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/c;->l(I)V

    goto :goto_2

    .line 39
    :cond_9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->q:Lcom/tangxiaolv/telegramgallery/Actionbar/d$j;

    if-eqz v0, :cond_a

    .line 40
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$j;->a(I)V

    .line 41
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->r:Z

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/a;->f(Z)V

    goto :goto_3

    .line 42
    :cond_b
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/a;->dismiss()V

    goto :goto_3

    .line 43
    :cond_c
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->l:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 44
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 45
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->l:Landroid/view/View;

    .line 46
    :cond_d
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p(Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->i:Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;

    return-object p0
.end method

.method public q(Z)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->r:Z

    return-object p0
.end method

.method public r(Z)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g:Landroid/widget/FrameLayout;

    .line 4
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->b:Lcom/tangxiaolv/telegramgallery/Actionbar/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 7
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    .line 8
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v3, 0x40c00000    # 6.0f

    .line 9
    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 10
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    const/high16 v3, 0x41900000    # 18.0f

    const/4 v4, 0x1

    .line 13
    invoke-virtual {v0, v4, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 14
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    const v3, -0x77000001

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 15
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 16
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 17
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 18
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 19
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/high16 v3, 0x80000

    or-int/2addr v0, v3

    .line 20
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 21
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    new-instance v3, Lcom/tangxiaolv/telegramgallery/Actionbar/d$f;

    invoke-direct {v3, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$f;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 22
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    new-instance v3, Lcom/tangxiaolv/telegramgallery/Actionbar/d$g;

    invoke-direct {v3, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$g;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 23
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    new-instance v3, Lcom/tangxiaolv/telegramgallery/Actionbar/d$h;

    invoke-direct {v3, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$h;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 24
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v3, "mCursorDrawableRes"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    sget v4, Lcom/tangxiaolv/telegramgallery/q$h;->R2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    const v3, 0x2000003

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 28
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 29
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 30
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 31
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x10

    .line 32
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x42100000    # 36.0f

    .line 33
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v2, 0x42400000    # 48.0f

    .line 34
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 35
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->e:Landroid/widget/ImageView;

    .line 37
    sget v3, Lcom/tangxiaolv/telegramgallery/q$h;->E1:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->e:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 39
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->e:Landroid/widget/ImageView;

    new-instance v3, Lcom/tangxiaolv/telegramgallery/Actionbar/d$i;

    invoke-direct {v3, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$i;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x15

    .line 43
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 44
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 45
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    :cond_1
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->h:Z

    return-object p0
.end method

.method public s(Z)Lcom/tangxiaolv/telegramgallery/Actionbar/d;
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->s:Z

    return-object p0
.end method

.method public setDelegate(Lcom/tangxiaolv/telegramgallery/Actionbar/d$j;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->q:Lcom/tangxiaolv/telegramgallery/Actionbar/d$j;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/r;->e(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setShowFromBottom(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->n:Z

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->setShowedFromBotton(Z)V

    :cond_0
    return-void
.end method

.method public setSubMenuOpenSide(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->p:I

    return-void
.end method

.method public t(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_3

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->i:Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;

    if-eqz p1, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->t(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->i:Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;->b()V

    :cond_2
    return v1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->d:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->I(Landroid/view/View;)V

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->i:Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$k;->c()V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public u()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->m:Ljava/lang/Runnable;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/a;->dismiss()V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Components/a;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4, v4}, Lcom/tangxiaolv/telegramgallery/Components/a;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 10
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 12
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 13
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 14
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 15
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 16
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/tangxiaolv/telegramgallery/Actionbar/d$e;

    invoke-direct {v3, p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/d$e;-><init>(Lcom/tangxiaolv/telegramgallery/Actionbar/d;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 17
    :cond_3
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->t:Z

    .line 18
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 19
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$d;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_4

    .line 20
    invoke-direct {p0, v2, v2}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->v(ZZ)V

    goto :goto_0

    .line 21
    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->v(ZZ)V

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->c:Lcom/tangxiaolv/telegramgallery/Components/a;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/a;->i()V

    return-void
.end method
