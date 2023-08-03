.class final Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$c;
.super Ljava/lang/Object;
.source "GPHVideoPlayerView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    return-void
.end method
