.class public Lcom/facebook/drawee/view/DraweeView;
.super Landroid/widget/ImageView;
.source "DraweeView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lz0/b;",
        ">",
        "Landroid/widget/ImageView;"
    }
.end annotation


# static fields
.field private static f:Z = false


# instance fields
.field private final a:Lcom/facebook/drawee/view/a$a;

.field private b:F

.field private c:Lcom/facebook/drawee/view/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/view/b<",
            "TDH;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/facebook/drawee/view/a$a;

    invoke-direct {v0}, Lcom/facebook/drawee/view/a$a;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->d:Z

    .line 5
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->e:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance p2, Lcom/facebook/drawee/view/a$a;

    invoke-direct {p2}, Lcom/facebook/drawee/view/a$a;-><init>()V

    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/facebook/drawee/view/DraweeView;->d:Z

    .line 11
    iput-boolean p2, p0, Lcom/facebook/drawee/view/DraweeView;->e:Z

    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p2, Lcom/facebook/drawee/view/a$a;

    invoke-direct {p2}, Lcom/facebook/drawee/view/a$a;-><init>()V

    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    const/4 p2, 0x0

    .line 15
    iput p2, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/facebook/drawee/view/DraweeView;->d:Z

    .line 17
    iput-boolean p2, p0, Lcom/facebook/drawee/view/DraweeView;->e:Z

    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    new-instance p2, Lcom/facebook/drawee/view/a$a;

    invoke-direct {p2}, Lcom/facebook/drawee/view/a$a;-><init>()V

    iput-object p2, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    const/4 p2, 0x0

    .line 21
    iput p2, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lcom/facebook/drawee/view/DraweeView;->d:Z

    .line 23
    iput-boolean p2, p0, Lcom/facebook/drawee/view/DraweeView;->e:Z

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->e(Landroid/content/Context;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DraweeView#init"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 6
    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->d:Z

    const/4 v1, 0x0

    .line 7
    invoke-static {v1, p1}, Lcom/facebook/drawee/view/b;->d(Lz0/b;Landroid/content/Context;)Lcom/facebook/drawee/view/b;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    .line 9
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-void

    .line 11
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 12
    sget-boolean v1, Lcom/facebook/drawee/view/DraweeView;->f:Z

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 18
    :cond_7
    throw p1
.end method

.method private f()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/view/DraweeView;->e:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public static setGlobalLegacyVisibilityHandlingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "legacyVisibilityHandlingEnabled"
        }
    .end annotation

    sput-boolean p0, Lcom/facebook/drawee/view/DraweeView;->f:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->m()V

    return-void
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->n()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->f()Lz0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->j()Z

    move-result v0

    return v0
.end method

.method protected g()V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->a()V

    return-void
.end method

.method public getAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    return v0
.end method

.method public getController()Lz0/a;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->f()Lz0/a;

    move-result-object v0

    return-object v0
.end method

.method public getHierarchy()Lz0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDH;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->h()Lz0/b;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/b;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->b()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->f()V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->g()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->f()V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->h()V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishTemporaryDetach()V

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->f()V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->g()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    iput p1, v0, Lcom/facebook/drawee/view/a$a;->a:I

    .line 2
    iput p2, v0, Lcom/facebook/drawee/view/a$a;->b:I

    .line 3
    iget p1, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 7
    invoke-static {v0, p1, p2, v1, v2}, Lcom/facebook/drawee/view/a;->b(Lcom/facebook/drawee/view/a$a;FLandroid/view/ViewGroup$LayoutParams;II)V

    .line 8
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeView;->a:Lcom/facebook/drawee/view/a$a;

    iget p2, p1, Lcom/facebook/drawee/view/a$a;->a:I

    iget p1, p1, Lcom/facebook/drawee/view/a$a;->b:I

    invoke-super {p0, p2, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onStartTemporaryDetach()V

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->f()V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->h()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/b;->o(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "changedView",
            "visibility"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/view/DraweeView;->f()V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aspectRatio"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/facebook/drawee/view/DraweeView;->b:F

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setController(Lz0/a;)V
    .locals 1
    .param p1    # Lz0/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "draweeController"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/b;->q(Lz0/a;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/b;->i()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHierarchy(Lz0/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hierarchy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/b;->r(Lz0/b;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/b;->i()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bm"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->e(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/b;->q(Lz0/a;)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->e(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/b;->q(Lz0/a;)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->e(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/b;->q(Lz0/a;)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->e(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/b;->q(Lz0/a;)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setLegacyVisibilityHandlingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "legacyVisibilityHandlingEnabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/drawee/view/DraweeView;->e:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/i;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/view/DraweeView;->c:Lcom/facebook/drawee/view/b;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/facebook/drawee/view/b;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<no holder set>"

    :goto_0
    const-string v2, "holder"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/facebook/common/internal/i$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
