.class final Lcom/qennnsad/aknkaksd/util/l0$b;
.super Lkotlin/jvm/internal/Lambda;
.source "GestureUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/l0;->f(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/View;",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureUtil.kt\ncom/qennnsad/aknkaksd/util/GestureUtil$setupPtrDecors$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,201:1\n254#2,2:202\n254#2,2:204\n*S KotlinDebug\n*F\n+ 1 GestureUtil.kt\ncom/qennnsad/aknkaksd/util/GestureUtil$setupPtrDecors$2\n*L\n177#1:202,2\n188#1:204,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroid/view/View;",
        "header",
        "footer",
        "",
        "a",
        "(Landroid/view/View;Landroid/view/View;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field final synthetic c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;)V
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    new-instance v4, Lcom/qennnsad/aknkaksd/util/l0$b$a;

    invoke-direct {v4, p1, p2}, Lcom/qennnsad/aknkaksd/util/l0$b$a;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :goto_0
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getProgressViewEndOffset()I

    move-result p1

    neg-int v8, p1

    const/4 v9, 0x0

    const/16 v10, 0x9

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/qennnsad/aknkaksd/util/s1;->R(Landroid/view/View;IIILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getProgressViewEndOffset()I

    move-result p1

    neg-int v2, p1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 8
    invoke-static/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->P(Landroid/view/View;IIILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :goto_1
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getProgressViewEndOffset()I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x9

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/qennnsad/aknkaksd/util/s1;->P(Landroid/view/View;IIILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 13
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/l0$b;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->getProgressViewEndOffset()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 14
    invoke-static/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->R(Landroid/view/View;IIILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/l0$b;->a(Landroid/view/View;Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
