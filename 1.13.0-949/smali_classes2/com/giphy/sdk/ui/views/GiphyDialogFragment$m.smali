.class public final Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "GiphyDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->y1()Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/giphy/sdk/ui/views/GiphyDialogFragment$m",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "newState",
        "",
        "onScrollStateChanged",
        "dx",
        "dy",
        "onScrolled",
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
.method constructor <init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->j0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/GPHSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/GPHSettings;->getGridType()Lcom/giphy/sdk/ui/themes/GridType;

    move-result-object p1

    sget-object p2, Lcom/giphy/sdk/ui/themes/GridType;->waterfall:Lcom/giphy/sdk/ui/themes/GridType;

    if-ne p1, p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->n0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/GiphySearchBar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->h()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p2}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->o0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->d1(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    iget-object p3, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p3}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->o0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->d1(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->j0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/GPHSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/GPHSettings;->getSuggestionsBarFixedPosition()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$m;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
