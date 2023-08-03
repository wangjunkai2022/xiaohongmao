.class final Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;
.super Lkotlin/jvm/internal/Lambda;
.source "GPHVideoPlayerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/giphy/sdk/ui/views/m;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/m;",
        "it",
        "",
        "a",
        "(Lcom/giphy/sdk/ui/views/m;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/giphy/sdk/ui/views/m;)V
    .locals 8
    .param p1    # Lcom/giphy/sdk/ui/views/m;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->c(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lcom/giphy/sdk/ui/views/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/k;->K()Lcom/giphy/sdk/core/models/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/Media;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {v1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->b(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lcom/giphy/sdk/core/models/Media;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Media;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "viewBinding.surfaceView"

    const-string v2, "viewBinding.initialImage"

    const-string v3, "viewBinding.bufferingAnimation"

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    .line 2
    instance-of v0, p1, Lcom/giphy/sdk/ui/views/m$c;

    const-string v6, "viewBinding.videoControls"

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->e(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lh2/s;

    move-result-object p1

    iget-object p1, p1, Lh2/s;->b:Lcom/giphy/sdk/ui/views/VideoBufferingIndicator;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/giphy/sdk/ui/views/VideoBufferingIndicator;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->e(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lh2/s;

    move-result-object p1

    iget-object p1, p1, Lh2/s;->h:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->e(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lh2/s;

    move-result-object p1

    iget-object p1, p1, Lh2/s;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "viewBinding.errorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 6
    :cond_1
    sget-object v0, Lcom/giphy/sdk/ui/views/m$h;->a:Lcom/giphy/sdk/ui/views/m$h;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->e(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lh2/s;

    move-result-object p1

    iget-object p1, p1, Lh2/s;->h:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->e(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lh2/s;

    move-result-object p1

    iget-object p1, p1, Lh2/s;->b:Lcom/giphy/sdk/ui/views/VideoBufferingIndicator;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/giphy/sdk/ui/views/VideoBufferingIndicator;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->f(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initialLoadTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {v2}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->d(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1, v5}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->g(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;Z)V

    goto/16 :goto_1

    .line 12
    :cond_2
    sget-object v0, Lcom/giphy/sdk/ui/views/m$g;->a:Lcom/giphy/sdk/ui/views/m$g;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->e(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lh2/s;

    move-result-object p1

    iget-object p1, p1, Lh2/s;->h:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 14
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->e(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lh2/s;

    move-result-object p1

    iget-object p1, p1, Lh2/s;->g:Landroid/view/SurfaceView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->e(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lh2/s;

    move-result-object p1

    iget-object p1, p1, Lh2/s;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 16
    :cond_3
    sget-object v0, Lcom/giphy/sdk/ui/views/m$a;->a:Lcom/giphy/sdk/ui/views/m$a;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->e(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lh2/s;

    move-result-object p1

    iget-object p1, p1, Lh2/s;->b:Lcom/giphy/sdk/ui/views/VideoBufferingIndicator;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/giphy/sdk/ui/views/VideoBufferingIndicator;->setVisibility(I)V

    goto/16 :goto_1

    .line 18
    :cond_4
    sget-object v0, Lcom/giphy/sdk/ui/views/m$i;->a:Lcom/giphy/sdk/ui/views/m$i;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->a(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->getMaxLoopsBeforeMute()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_5

    .line 20
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->c(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lcom/giphy/sdk/ui/views/k;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/giphy/sdk/ui/views/k;->p0(F)V

    goto :goto_1

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->c(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lcom/giphy/sdk/ui/views/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/k;->P()F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->a(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->h(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;I)V

    goto :goto_1

    .line 23
    :cond_6
    instance-of v0, p1, Lcom/giphy/sdk/ui/views/m$f;

    if-eqz v0, :cond_8

    .line 24
    check-cast p1, Lcom/giphy/sdk/ui/views/m$f;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/m$f;->d()Z

    move-result p1

    if-nez p1, :cond_8

    .line 25
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1, v5}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->h(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;I)V

    goto :goto_1

    .line 26
    :cond_7
    instance-of p1, p1, Lcom/giphy/sdk/ui/views/m$e;

    if-eqz p1, :cond_8

    .line 27
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->e(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lh2/s;

    move-result-object p1

    iget-object p1, p1, Lh2/s;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->e(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lh2/s;

    move-result-object p1

    iget-object p1, p1, Lh2/s;->g:Landroid/view/SurfaceView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->e(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lh2/s;

    move-result-object p1

    iget-object p1, p1, Lh2/s;->b:Lcom/giphy/sdk/ui/views/VideoBufferingIndicator;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/giphy/sdk/ui/views/VideoBufferingIndicator;->setVisibility(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/giphy/sdk/ui/views/m;

    invoke-virtual {p0, p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$b;->a(Lcom/giphy/sdk/ui/views/m;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
