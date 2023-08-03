.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$a;
.super Ljava/lang/Object;
.source "MainRankFragment.kt"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$a",
        "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "tab",
        "",
        "onTabSelected",
        "onTabUnselected",
        "onTabReselected",
        "",
        "a",
        "I",
        "gamePosition",
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

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;

.field final synthetic c:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$a;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->z0()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;->s()I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$a;->a:I

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 4
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$a;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    iget v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$a;->a:I

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    const p1, 0x7f0602ac

    goto :goto_0

    :cond_1
    const p1, 0x7f0602ab

    .line 4
    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$a;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method
