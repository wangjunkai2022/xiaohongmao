.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;
.super Lcom/qennnsad/aknkaksd/presentation/module/main/rank/a;
.source "MainRankFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/a<",
        "Le5/v0;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel$Event;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainRankFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainRankFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,68:1\n172#2,9:69\n*S KotlinDebug\n*F\n+ 1 MainRankFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment\n*L\n18#1:69,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0003H\u0014R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Le5/v0;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel$Event;",
        "",
        "A0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "D0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "e",
        "C0",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "z0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;",
        "viewModel",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;",
        "l",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;",
        "y0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;",
        "E0",
        "(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;)V",
        "adapter",
        "<init>",
        "()V",
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
.field private final k:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public l:Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/a;-><init>()V

    .line 2
    const-class v0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$special$$inlined$activityViewModels$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->k:Lkotlin/Lazy;

    return-void
.end method

.method private final A0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->z0()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;->t()[Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;

    array-length v2, v0

    invoke-direct {v1, p0, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;I)V

    invoke-virtual {p0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->E0(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Le5/v0;

    .line 4
    iget-object v2, v1, Le5/v0;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v3, v1, Le5/v0;->b:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v1, Le5/v0;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/c;

    invoke-direct {v5, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/c;-><init>([Ljava/lang/String;)V

    .line 7
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 8
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 9
    iget-object v0, v1, Le5/v0;->b:Lcom/google/android/material/tabs/TabLayout;

    .line 10
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$a;

    invoke-direct {v1, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private static final B0([Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    const-string v0, "$titles"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method public static synthetic x0([Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->B0([Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method


# virtual methods
.method protected C0(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel$Event;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel$Event;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public D0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/v0;
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

    invoke-static {p1, p2, v0}, Le5/v0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/v0;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final E0(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;

    return-void
.end method

.method public bridge synthetic e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->z0()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->D0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/v0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel$Event;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->C0(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel$Event;)V

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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->A0()V

    return-void
.end method

.method public final y0()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public z0()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;

    return-object v0
.end method
