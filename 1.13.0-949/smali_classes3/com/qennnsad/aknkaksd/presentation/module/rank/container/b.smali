.class public final Lcom/qennnsad/aknkaksd/presentation/module/rank/container/b;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "RankFragmentsAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u000e\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0008\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/b;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "",
        "getItemCount",
        "position",
        "Landroidx/fragment/app/Fragment;",
        "createFragment",
        "a",
        "I",
        "d",
        "()I",
        "rootPosition",
        "b",
        "e",
        "size",
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;",
        "fragment",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;II)V",
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
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;II)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/b;->a:I

    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/b;->b:I

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;->o:Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$a;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/b;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment$a;->a(II)Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;

    move-result-object p1

    return-object p1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/b;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/b;->b:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/b;->b:I

    return v0
.end method
