.class final Lcom/giphy/sdk/ui/views/GiphyDialogFragment$i0;
.super Ljava/lang/Object;
.source "GiphyDialogFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->Z1()V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/giphy/sdk/ui/views/GiphyDialogFragment$setupWaterfallView$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

.field final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$i0;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$i0;->b:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    iput-object p3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$i0;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$i0;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$i0;->b:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->n0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/GiphySearchBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->getSearchInput()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
