.class public final Lcom/giphy/sdk/ui/views/GiphyDialogFragment$q;
.super Landroid/app/Dialog;
.source "GiphyDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/giphy/sdk/ui/views/GiphyDialogFragment$q",
        "Landroid/app/Dialog;",
        "",
        "onBackPressed",
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
.field final synthetic a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$q;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$q;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->x0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$q;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->u0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$q;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->y0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$q;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->w0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    goto :goto_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$q;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$q;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->n0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/GiphySearchBar;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->h()V

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$q;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->n0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/GiphySearchBar;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8
    :cond_5
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    :cond_6
    :goto_2
    return-void
.end method
