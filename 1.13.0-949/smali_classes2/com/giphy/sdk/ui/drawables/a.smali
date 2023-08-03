.class public final Lcom/giphy/sdk/ui/drawables/a;
.super Ljava/lang/Object;
.source "GPHBrandingDrawer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001e\u0010\u000e\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0011R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u001c\u001a\u00020\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0010\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/drawables/a;",
        "",
        "",
        "d",
        "Landroid/graphics/Canvas;",
        "canvas",
        "b",
        "Landroid/graphics/drawable/Drawable;",
        "a",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "Landroid/animation/ValueAnimator;",
        "alphaAnimator",
        "",
        "c",
        "I",
        "offset",
        "brandingHeight",
        "Landroid/graphics/Rect;",
        "e",
        "Landroid/graphics/Rect;",
        "bounds",
        "Landroid/content/Context;",
        "f",
        "Landroid/content/Context;",
        "()Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/animation/ValueAnimator;

.field private final c:I

.field private final d:I

.field private e:Landroid/graphics/Rect;

.field private final f:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/ui/drawables/a;->f:Landroid/content/Context;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->b:Landroid/animation/ValueAnimator;

    const/16 v0, 0xa

    .line 3
    invoke-static {v0}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v0

    iput v0, p0, Lcom/giphy/sdk/ui/drawables/a;->c:I

    const/16 v0, 0xc

    .line 4
    invoke-static {v0}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v0

    iput v0, p0, Lcom/giphy/sdk/ui/drawables/a;->d:I

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->e:Landroid/graphics/Rect;

    .line 6
    sget v0, Lcom/giphy/sdk/ui/p$h;->p2:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "ContextCompat.getDrawabl\u2026_gif_branding)!!.mutate()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/drawables/a;->a:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    iget-object p1, p0, Lcom/giphy/sdk/ui/drawables/a;->b:Landroid/animation/ValueAnimator;

    const-string v0, "alphaAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object p1, p0, Lcom/giphy/sdk/ui/drawables/a;->b:Landroid/animation/ValueAnimator;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public static final synthetic a(Lcom/giphy/sdk/ui/drawables/a;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/drawables/a;->a:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/giphy/sdk/ui/drawables/a;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/giphy/sdk/ui/drawables/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/giphy/sdk/ui/drawables/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v2, v3

    iget v3, p0, Lcom/giphy/sdk/ui/drawables/a;->d:I

    mul-int v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/giphy/sdk/ui/drawables/a;->d:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/giphy/sdk/ui/drawables/a;->c:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/giphy/sdk/ui/drawables/a;->c:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/giphy/sdk/ui/drawables/a;->c:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 5
    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/giphy/sdk/ui/drawables/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 6
    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final c()Landroid/content/Context;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "startAnimation"

    .line 1
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->a:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/giphy/sdk/ui/drawables/a$a;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/drawables/a$a;-><init>(Lcom/giphy/sdk/ui/drawables/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v0, p0, Lcom/giphy/sdk/ui/drawables/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
