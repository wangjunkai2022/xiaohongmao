.class final Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment$d;
.super Lkotlin/jvm/internal/Lambda;
.source "FollowersFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "",
        "it",
        "a",
        "(Lkotlin/Unit;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment;

.field final synthetic b:Le5/h1;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment;Le5/h1;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment$d;->b:Le5/h1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)V
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/module/main/followers/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/paging/PagingDataAdapter;->refresh()V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment$d;->b:Le5/h1;

    iget-object p1, p1, Le5/h1;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment$d;->a(Lkotlin/Unit;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
