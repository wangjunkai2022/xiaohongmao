.class public Lcom/tangxiaolv/telegramgallery/Components/a$d;
.super Landroid/widget/FrameLayout;
.source "ActionBarPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Components/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field protected static j:Landroid/graphics/drawable/Drawable;


# instance fields
.field private a:Lcom/tangxiaolv/telegramgallery/Components/a$e;

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:Z

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/ScrollView;

.field private i:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->b:F

    .line 3
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->c:F

    const/16 v0, 0xff

    .line 4
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->d:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->e:I

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->g:Ljava/util/HashMap;

    .line 7
    sget-object v1, Lcom/tangxiaolv/telegramgallery/Components/a$d;->j:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tangxiaolv/telegramgallery/q$h;->O2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/tangxiaolv/telegramgallery/Components/a$d;->j:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/high16 v1, 0x41000000    # 8.0f

    .line 9
    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v4

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/high16 v1, -0x40000000    # -2.0f

    const/4 v2, -0x2

    .line 11
    :try_start_0
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->h:Landroid/widget/ScrollView;

    .line 12
    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 13
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->h:Landroid/widget/ScrollView;

    invoke-static {v2, v1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->a(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->i:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 17
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->h:Landroid/widget/ScrollView;

    if-eqz p1, :cond_1

    .line 18
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->i:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->i:Landroid/widget/LinearLayout;

    invoke-static {v2, v1}, Lcom/tangxiaolv/telegramgallery/Utils/f;->a(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Components/a$d;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->g:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Components/a$d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/Components/a$d;I)I
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->e:I

    return p1
.end method

.method private f(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Components/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/Animator;

    new-array v3, v1, [F

    .line 3
    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 4
    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [F

    .line 5
    iget-boolean v3, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->f:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x40c00000    # 6.0f

    goto :goto_0

    :cond_0
    const/high16 v3, -0x3f400000    # -6.0f

    :goto_0
    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v1, v4

    const-string v3, "translationY"

    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v2, v4

    .line 6
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0xb4

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 8
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Components/a;->b()Landroid/view/animation/DecelerateInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public d(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tangxiaolv/telegramgallery/Components/a$e;->a(Landroid/view/KeyEvent;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->h:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public getBackAlpha()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->d:I

    return v0
.end method

.method public getBackScaleX()F
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->b:F

    return v0
.end method

.method public getBackScaleY()F
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->c:F

    return v0
.end method

.method public getItemsCount()I
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->c:F

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->b:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->b:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->c:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    :goto_0
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public setBackAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->d:I

    return-void
.end method

.method public setBackScaleX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->b:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setBackScaleY(F)V
    .locals 7

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->c:F

    .line 2
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Components/a;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->getItemsCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 6
    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->f:Z

    const/high16 v3, 0x42400000    # 48.0f

    if-eqz v2, :cond_3

    .line 7
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->e:I

    :goto_1
    if-ltz v0, :cond_6

    .line 8
    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->d(I)Landroid/view/View;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    mul-int v4, v4, v5

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    add-int/2addr v4, v5

    sub-int v4, v1, v4

    int-to-float v4, v4

    int-to-float v5, v1

    mul-float v5, v5, p1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v4, v0, -0x1

    .line 12
    iput v4, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->e:I

    .line 13
    invoke-direct {p0, v2}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->f(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 14
    :cond_3
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->e:I

    :goto_3
    if-ge v2, v0, :cond_6

    .line 15
    invoke-virtual {p0, v2}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->d(I)Landroid/view/View;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    .line 17
    :cond_4
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 18
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    mul-int v5, v5, v6

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v1

    mul-float v6, v6, p1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v2, 0x1

    .line 19
    iput v5, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->e:I

    .line 20
    invoke-direct {p0, v4}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->f(Landroid/view/View;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 21
    :cond_6
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDispatchKeyEventListener(Lcom/tangxiaolv/telegramgallery/Components/a$e;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->a:Lcom/tangxiaolv/telegramgallery/Components/a$e;

    return-void
.end method

.method public setShowedFromBotton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a$d;->f:Z

    return-void
.end method
