.class public final Lcom/qennnsad/aknkaksd/util/extentions/b;
.super Ljava/lang/Object;
.source "PlayerBindingExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerBindingExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerBindingExt.kt\ncom/qennnsad/aknkaksd/util/extentions/PlayerBindingExtKt\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,39:1\n254#2,2:40\n254#2,2:42\n254#2,2:44\n254#2,2:46\n*S KotlinDebug\n*F\n+ 1 PlayerBindingExt.kt\ncom/qennnsad/aknkaksd/util/extentions/PlayerBindingExtKt\n*L\n34#1:40,2\n35#1:42,2\n36#1:44,2\n37#1:46,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u001a\u0010\u0008\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Le5/f3;",
        "",
        "statusBarHeight",
        "",
        "b",
        "",
        "enabled",
        "isPinnedEnabled",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Le5/f3;ZZ)V
    .locals 4
    .param p0    # Le5/f3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le5/f3;->g:Le5/r4;

    iget-object v0, v0, Le5/r4;->d:Landroid/widget/ImageButton;

    const-string v1, "liveOperation.roomImgbtnScale"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Le5/f3;->g:Le5/r4;

    iget-object v0, v0, Le5/r4;->h:Landroid/widget/ImageButton;

    const-string v3, "liveOperation.rotatePlayerView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 4
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Le5/f3;->g:Le5/r4;

    iget-object v0, v0, Le5/r4;->i:Landroid/widget/ImageButton;

    const-string v3, "liveOperation.translationView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    .line 6
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p0, p0, Le5/f3;->g:Le5/r4;

    iget-object p0, p0, Le5/r4;->g:Landroid/widget/ImageButton;

    const-string v0, "liveOperation.roomPinnedMsg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 8
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final b(Le5/f3;I)V
    .locals 3
    .param p0    # Le5/f3;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le5/f3;->m:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 2
    iget-object p1, p0, Le5/f3;->s:Le5/s4;

    iget-object p1, p1, Le5/s4;->o:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/PubChatRecyclerView;

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    invoke-virtual {p0}, Le5/f3;->b()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 5
    invoke-direct {v0, v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 6
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object p1, p0, Le5/f3;->s:Le5/s4;

    iget-object p1, p1, Le5/s4;->o:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/PubChatRecyclerView;

    .line 8
    invoke-virtual {p0}, Le5/f3;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/github/magiepooh/recycleritemdecoration/c;->a(Landroid/content/Context;)Lcom/github/magiepooh/recycleritemdecoration/b$a;

    move-result-object v0

    const v2, 0x7f0801c8

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/github/magiepooh/recycleritemdecoration/b$a;->g(II)Lcom/github/magiepooh/recycleritemdecoration/b$a;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/github/magiepooh/recycleritemdecoration/b$a;->a()Lcom/github/magiepooh/recycleritemdecoration/b;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 12
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Le5/f3;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 14
    iget-object v1, p0, Le5/f3;->q:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/PubChatRecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 15
    iget-object p0, p0, Le5/f3;->q:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/PubChatRecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method
