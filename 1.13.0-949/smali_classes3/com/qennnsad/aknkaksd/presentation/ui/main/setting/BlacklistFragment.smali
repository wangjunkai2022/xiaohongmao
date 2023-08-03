.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;
.super Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/k;
.source "BlacklistFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/k<",
        "Le5/y0;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/c;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlacklistFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlacklistFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,60:1\n106#2,15:61\n1#3:76\n254#4,2:77\n*S KotlinDebug\n*F\n+ 1 BlacklistFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment\n*L\n21#1:61,15\n36#1:77,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0003H\u0014R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Le5/y0;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/c;",
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
        "A0",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "y0",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;",
        "viewModel",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a;",
        "l",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a;",
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

.field private l:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/k;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;->k:Lkotlin/Lazy;

    return-void
.end method

.method private static final B0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;->l:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Le5/y0;

    iget-object p0, p0, Le5/y0;->e:Landroid/widget/TextView;

    const-string v0, "requireBinding().tvEmptyList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic x0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;->B0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;Ljava/util/List;)V

    return-void
.end method

.method private final z0()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/y0;

    .line 2
    iget-object v1, v0, Le5/y0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->t()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;)V

    .line 5
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$a;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;)V

    invoke-virtual {v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a;->g(Lkotlin/jvm/functions/Function1;)V

    .line 6
    iput-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;->l:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a;

    .line 7
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v4, v0, Le5/y0;->c:Landroid/widget/ImageButton;

    const-string v0, "imgbtnToolbarBack"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$b;

    invoke-direct {v7, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;)V

    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected A0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/c;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public C0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/y0;
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

    invoke-static {p1, p2, v0}, Le5/y0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/y0;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;->C0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/y0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/c;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;->A0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/c;)V

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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;->z0()V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/d;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public y0()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;

    return-object v0
.end method
