.class final Lcom/giphy/sdk/ui/views/GiphySearchBar$j;
.super Ljava/lang/Object;
.source "GiphySearchBar.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GiphySearchBar;->j()V
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
        "\u0000\u001c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00080\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "view",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "actionId",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onEditorAction"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/GiphySearchBar;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/GiphySearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar$j;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar$j;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->getOnSearchClickAction()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar$j;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    invoke-virtual {p2}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->getSearchInput()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar$j;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->getHideKeyboardOnSearch()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar$j;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->h()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
