.class public final Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;
.super Lcom/qennnsad/aknkaksd/presentation/module/rank/container/a;
.source "RankListFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/a<",
        "Le5/q1;",
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel$Event;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRankListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankListFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,76:1\n106#2,15:77\n254#3,2:92\n254#3,2:94\n*S KotlinDebug\n*F\n+ 1 RankListFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment\n*L\n21#1:77,15\n38#1:92,2\n39#1:94,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0003H\u0014R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Le5/q1;",
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel$Event;",
        "",
        "z0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "C0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "e",
        "B0",
        "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "y0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;",
        "viewModel",
        "<init>",
        "()V",
        "l",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final l:Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final k:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->l:Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/a;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->k:Lkotlin/Lazy;

    return-void
.end method

.method private static final A0(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->w()[Ljava/lang/Integer;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method public static synthetic x0(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->A0(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method private final z0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/q1;

    .line 2
    iget-object v1, v0, Le5/q1;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->t()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 3
    iget-object v1, v0, Le5/q1;->b:Landroid/widget/ImageView;

    const-string v2, "bgGameRank"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->v()I

    move-result v2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->s()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 4
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, v0, Le5/q1;->e:Landroid/widget/ImageView;

    const-string v2, "ivGameRankDecor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->v()I

    move-result v2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->s()I

    move-result v6

    if-ne v2, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    const/4 v3, 0x0

    .line 6
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v1, v0, Le5/q1;->g:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/b;

    .line 8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->v()I

    move-result v3

    .line 9
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;->w()[Ljava/lang/Integer;

    move-result-object v4

    array-length v4, v4

    .line 10
    invoke-direct {v2, p0, v3, v4}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;II)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object v1, v0, Le5/q1;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v5}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/util/h1;->f(Landroid/content/Context;I)I

    move-result v1

    .line 13
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v3, v0, Le5/q1;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v0, Le5/q1;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/c;

    invoke-direct {v6, p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;)V

    .line 15
    invoke-direct {v2, v3, v4, v6}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 16
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 17
    iget-object v2, v0, Le5/q1;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    .line 18
    iget-object v4, v0, Le5/q1;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6, v1, v5, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method protected B0(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel$Event;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel$Event;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public C0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/q1;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Le5/q1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/q1;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->C0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/q1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel$Event;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->B0(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel$Event;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->z0()V

    return-void
.end method

.method public y0()Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;

    return-object v0
.end method
