.class final Lcom/giphy/sdk/ui/views/GiphyDialogFragment$d;
.super Ljava/lang/Object;
.source "GiphyDialogFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->o1()V
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
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
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

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$d;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$d;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->t1()Lh2/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lh2/b;->j:Lcom/giphy/sdk/ui/views/GifView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GifView;->getMedia()Lcom/giphy/sdk/core/models/Media;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$d;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->h0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/SmartGridRecyclerView;->getGifTrackingManager$giphy_ui_2_1_9_release()Lcom/giphy/sdk/tracking/d;

    move-result-object v0

    sget-object v1, Lcom/giphy/sdk/analytics/models/enums/ActionType;->SENT:Lcom/giphy/sdk/analytics/models/enums/ActionType;

    invoke-virtual {v0, p1, v1}, Lcom/giphy/sdk/tracking/d;->x(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/analytics/models/enums/ActionType;)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$d;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v0, p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->b0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Lcom/giphy/sdk/core/models/Media;)V

    :cond_0
    return-void
.end method
