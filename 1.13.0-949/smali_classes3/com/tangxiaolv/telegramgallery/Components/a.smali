.class public Lcom/tangxiaolv/telegramgallery/Components/a;
.super Landroid/widget/PopupWindow;
.source "ActionBarPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tangxiaolv/telegramgallery/Components/a$d;,
        Lcom/tangxiaolv/telegramgallery/Components/a$e;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/reflect/Field;

.field private static final e:Z

.field private static f:Landroid/view/animation/DecelerateInterpolator;

.field private static final g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private a:Landroid/animation/AnimatorSet;

.field private b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private c:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/tangxiaolv/telegramgallery/Components/a;->e:Z

    .line 2
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v1, Lcom/tangxiaolv/telegramgallery/Components/a;->f:Landroid/view/animation/DecelerateInterpolator;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "mOnScrollChangedListener"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    sput-object v1, Lcom/tangxiaolv/telegramgallery/Components/a;->d:Ljava/lang/reflect/Field;

    .line 6
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Components/a$a;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/Components/a$a;-><init>()V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/Components/a;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/a;->g()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 6
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/a;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/a;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 8
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/a;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 12
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/a;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 10
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/a;->g()V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/tangxiaolv/telegramgallery/Components/a;->e:Z

    return v0
.end method

.method static synthetic b()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    sget-object v0, Lcom/tangxiaolv/telegramgallery/Components/a;->f:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic c(Lcom/tangxiaolv/telegramgallery/Components/a;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->a:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic d(Lcom/tangxiaolv/telegramgallery/Components/a;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic e(Lcom/tangxiaolv/telegramgallery/Components/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/a;->j()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/Components/a;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 3
    sget-object v1, Lcom/tangxiaolv/telegramgallery/Components/a;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_0
    :goto_0
    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->c:Landroid/view/ViewTreeObserver;

    if-eq p1, v0, :cond_2

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->c:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->c:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->c:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->c:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->c:Landroid/view/ViewTreeObserver;

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/Components/a;->f(Z)V

    return-void
.end method

.method public f(Z)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2
    sget-boolean v1, Lcom/tangxiaolv/telegramgallery/Components/a;->e:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->a:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Components/a$d;

    .line 6
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->a:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x1

    new-array v4, v3, [F

    .line 7
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->b(Lcom/tangxiaolv/telegramgallery/Components/a$d;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_1
    const/high16 v5, -0x3f600000    # -5.0f

    :goto_0
    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v0

    const-string v5, "translationY"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v0

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v5, v4, v0

    const-string v0, "alpha"

    .line 8
    invoke-static {p1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v2, v3

    .line 9
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 10
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->a:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 11
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->a:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/Components/a$c;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/Components/a$c;-><init>(Lcom/tangxiaolv/telegramgallery/Components/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 13
    :cond_2
    :try_start_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/a;->j()V

    :goto_1
    return-void
.end method

.method public i()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/tangxiaolv/telegramgallery/Components/a;->e:Z

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->a:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Components/a$d;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 8
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->getItemsCount()I

    move-result v2

    .line 9
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->a(Lcom/tangxiaolv/telegramgallery/Components/a$d;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 10
    invoke-virtual {v0, v4}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->d(I)Landroid/view/View;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->a(Lcom/tangxiaolv/telegramgallery/Components/a$d;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->b(Lcom/tangxiaolv/telegramgallery/Components/a$d;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    sub-int/2addr v2, v4

    .line 15
    invoke-static {v0, v2}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->c(Lcom/tangxiaolv/telegramgallery/Components/a$d;I)I

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {v0, v3}, Lcom/tangxiaolv/telegramgallery/Components/a$d;->c(Lcom/tangxiaolv/telegramgallery/Components/a$d;I)I

    .line 17
    :goto_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->a:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v6, v2, [Landroid/animation/Animator;

    new-array v7, v2, [F

    .line 18
    fill-array-data v7, :array_0

    const-string v8, "backScaleY"

    .line 19
    invoke-static {v0, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v3

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const-string v3, "backAlpha"

    .line 20
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v6, v4

    .line 21
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 22
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->a:Landroid/animation/AnimatorSet;

    mul-int/lit8 v5, v5, 0x10

    add-int/lit16 v5, v5, 0x96

    int-to-long v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 23
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->a:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/tangxiaolv/telegramgallery/Components/a$b;

    invoke-direct {v1, p0}, Lcom/tangxiaolv/telegramgallery/Components/a$b;-><init>(Lcom/tangxiaolv/telegramgallery/Components/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/a;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
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
        0xff
    .end array-data
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 2
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/a;->h(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Components/a;->j()V

    return-void
.end method

.method public update(Landroid/view/View;II)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 4
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/a;->h(Landroid/view/View;)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 2
    invoke-direct {p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/a;->h(Landroid/view/View;)V

    return-void
.end method
