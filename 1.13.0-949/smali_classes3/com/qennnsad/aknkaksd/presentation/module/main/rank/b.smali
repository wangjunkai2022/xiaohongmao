.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "MainRankAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0011\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "",
        "getItemCount",
        "position",
        "Landroidx/fragment/app/Fragment;",
        "createFragment",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;",
        "a",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;",
        "d",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;",
        "fragment",
        "b",
        "I",
        "e",
        "()I",
        "size",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;I)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;I)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;->b:I

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->l:Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$a;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$a;->a(I)Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;->b:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;->b:I

    return v0
.end method
