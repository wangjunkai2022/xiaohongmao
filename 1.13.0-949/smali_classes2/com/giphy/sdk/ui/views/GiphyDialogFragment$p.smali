.class final Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;
.super Ljava/lang/Object;
.source "GiphyDialogFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "onShow"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->d0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/RoundedConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->N0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;I)V

    .line 2
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->j0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/GPHSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/GPHSettings;->getGridType()Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object p1

    sget-object v0, Lcom/giphy/sdk/ui/views/r;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-array v1, v1, [F

    .line 4
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v3}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v4}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->h0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v1, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 5
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-array v1, v1, [F

    .line 7
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v3}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    .line 8
    iget-object v3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v3}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->g0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    aput v3, v1, v2

    .line 9
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$p;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->l0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method
