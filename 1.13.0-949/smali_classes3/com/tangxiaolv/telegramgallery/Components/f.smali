.class public Lcom/tangxiaolv/telegramgallery/Components/f;
.super Landroid/widget/FrameLayout;
.source "PhotoPickerPhotoCell.java"


# instance fields
.field public a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

.field public b:Landroid/widget/FrameLayout;

.field public c:Lcom/tangxiaolv/telegramgallery/Components/b;

.field private d:Landroid/animation/AnimatorSet;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    invoke-direct {v0, p1}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 3
    invoke-static {v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/f;->a(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->b:Landroid/widget/FrameLayout;

    const/16 v2, 0x2a

    const/16 v3, 0x35

    .line 6
    invoke-static {v2, v2, v3}, Lcom/tangxiaolv/telegramgallery/Utils/f;->c(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Components/b;

    sget v2, Lcom/tangxiaolv/telegramgallery/q$h;->S0:I

    invoke-direct {v0, p1, v2, v1}, Lcom/tangxiaolv/telegramgallery/Components/b;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->c:Lcom/tangxiaolv/telegramgallery/Components/b;

    const/16 v1, 0x18

    .line 8
    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/b;->setSize(I)V

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->c:Lcom/tangxiaolv/telegramgallery/Components/b;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/b;->setCheckOffset(I)V

    .line 10
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->c:Lcom/tangxiaolv/telegramgallery/Components/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/b;->setDrawBackground(Z)V

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->c:Lcom/tangxiaolv/telegramgallery/Components/b;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/r;->d(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/Components/b;->setColor(I)V

    .line 12
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->c:Lcom/tangxiaolv/telegramgallery/Components/b;

    const/16 v0, 0x18

    const/high16 v1, 0x41c00000    # 24.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/4 v6, 0x0

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/tangxiaolv/telegramgallery/Utils/f;->b(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Components/f;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Components/f;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    return-object p1
.end method


# virtual methods
.method public c(IZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->c:Lcom/tangxiaolv/telegramgallery/Components/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tangxiaolv/telegramgallery/Components/b;->d(IZZ)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    :cond_0
    const p1, -0xf5f5f6

    const v0, 0x3f59999a    # 0.85f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6
    :cond_1
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    .line 7
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    const/4 v4, 0x1

    new-array v5, v4, [F

    if-eqz p2, :cond_2

    const v6, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_0
    aput v6, v5, v2

    const-string v6, "scaleX"

    .line 8
    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, p3, v2

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    new-array v5, v4, [F

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    aput v0, v5, v2

    const-string v0, "scaleY"

    .line 9
    invoke-static {v3, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p3, v4

    .line 10
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 11
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 12
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    new-instance p3, Lcom/tangxiaolv/telegramgallery/Components/f$b;

    invoke-direct {p3, p0, p2}, Lcom/tangxiaolv/telegramgallery/Components/f$b;-><init>(Lcom/tangxiaolv/telegramgallery/Components/f;Z)V

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    :cond_4
    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 14
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 15
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    if-eqz p2, :cond_6

    const p3, 0x3f59999a    # 0.85f

    goto :goto_3

    :cond_6
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 16
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :goto_5
    return-void
.end method

.method public d(ZZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->c:Lcom/tangxiaolv/telegramgallery/Components/b;

    invoke-virtual {v0, p1, p2}, Lcom/tangxiaolv/telegramgallery/Components/b;->e(ZZ)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    :cond_0
    const v0, -0xf5f5f6

    const v1, 0x3f59999a    # 0.85f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6
    :cond_1
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    .line 7
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    const/4 v5, 0x1

    new-array v6, v5, [F

    if-eqz p1, :cond_2

    const v7, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    aput v7, v6, v3

    const-string v7, "scaleX"

    .line 8
    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    new-array v6, v5, [F

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    aput v1, v6, v3

    const-string v1, "scaleY"

    .line 9
    invoke-static {v4, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v0, v5

    .line 10
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 11
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 12
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/Components/f$a;

    invoke-direct {v0, p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/f$a;-><init>(Lcom/tangxiaolv/telegramgallery/Components/f;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 14
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 15
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    if-eqz p1, :cond_6

    const v0, 0x3f59999a    # 0.85f

    goto :goto_3

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 16
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    :goto_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->e:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/f;->e:I

    .line 2
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
