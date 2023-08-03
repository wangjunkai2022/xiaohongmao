.class public abstract Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;
.super Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;
.source "AbstractAnchorFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Event:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment<",
        "Le5/x0;",
        "TEvent;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractAnchorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractAnchorFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n172#2,9:173\n1549#3:182\n1620#3,3:183\n*S KotlinDebug\n*F\n+ 1 AbstractAnchorFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment\n*L\n39#1:173,9\n133#1:182\n133#1:183,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00000\u0002:\u0001?B\u0007\u00a2\u0006\u0004\u0008=\u0010>J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0014\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0004J\u001a\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0004J\u0008\u0010\u001f\u001a\u00020\u0004H\u0016R\"\u0010\'\u001a\u00020 8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001b\u0010-\u001a\u00020(8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R.\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u00118\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00108\u001a\u0008\u0012\u0004\u0012\u00028\u0000058&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u0014\u0010<\u001a\u0002098&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;\u00a8\u0006@"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;",
        "Event",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Le5/x0;",
        "",
        "C0",
        "E0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "K0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "Landroidx/paging/PagingDataAdapter;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "A0",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "B0",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;",
        "item",
        "I0",
        "",
        "url",
        "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;",
        "target",
        "J0",
        "onDestroyView",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "f",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "y0",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "M0",
        "(Lcom/qennnsad/aknkaksd/data/repository/m;)V",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;",
        "g",
        "Lkotlin/Lazy;",
        "x0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;",
        "indexViewModel",
        "h",
        "Landroidx/paging/PagingDataAdapter;",
        "w0",
        "()Landroidx/paging/PagingDataAdapter;",
        "L0",
        "(Landroidx/paging/PagingDataAdapter;)V",
        "adapter",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;",
        "z0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;",
        "viewModel",
        "",
        "H0",
        "()Z",
        "isSmallGrid",
        "<init>",
        "()V",
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


# instance fields
.field public f:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field private final g:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public h:Landroidx/paging/PagingDataAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingDataAdapter<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;-><init>()V

    .line 2
    const-class v0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$special$$inlined$activityViewModels$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->g:Lkotlin/Lazy;

    return-void
.end method

.method private final C0()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$e;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->x0()Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/b;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final D0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->z0()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final E0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->A0()Landroidx/paging/PagingDataAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->L0(Landroidx/paging/PagingDataAdapter;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/x0;

    .line 3
    iget-object v1, v0, Le5/x0;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$a;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f070055

    .line 6
    invoke-direct {v2, v3, v4}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$a;-><init>(Landroid/content/Context;I)V

    .line 7
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->B0()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->w0()Landroidx/paging/PagingDataAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object v1, v0, Le5/x0;->g:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v2, ""

    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$f;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;)V

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/util/s1;->J(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lkotlin/jvm/functions/Function1;)V

    .line 12
    sget-object v2, Lcom/qennnsad/aknkaksd/util/l0;->a:Lcom/qennnsad/aknkaksd/util/l0;

    .line 13
    iget-object v3, v0, Le5/x0;->f:Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "recommendAnchorRecycler"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$g;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->w0()Landroidx/paging/PagingDataAdapter;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$g;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v2, v1, v3, v4}, Lcom/qennnsad/aknkaksd/util/l0;->f(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->z0()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/a;

    invoke-direct {v5, v1, v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/a;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lkotlin/jvm/functions/Function2;Le5/x0;)V

    invoke-virtual {v3, v4, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 17
    iget-object v0, v0, Le5/x0;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/c;

    invoke-direct {v1, v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/c;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final F0(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lkotlin/jvm/functions/Function2;Le5/x0;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ptrDecorsTrigger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    iget-object p0, p2, Le5/x0;->e:Landroid/widget/TextView;

    iget-object p2, p2, Le5/x0;->d:Landroid/widget/LinearLayout;

    invoke-interface {p1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final G0(Landroidx/recyclerview/widget/RecyclerView;Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;)V
    .locals 1

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->z0()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;->z()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public static synthetic t0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->D0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic u0(Landroidx/recyclerview/widget/RecyclerView;Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->G0(Landroidx/recyclerview/widget/RecyclerView;Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;)V

    return-void
.end method

.method public static synthetic v0(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lkotlin/jvm/functions/Function2;Le5/x0;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->F0(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lkotlin/jvm/functions/Function2;Le5/x0;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public A0()Landroidx/paging/PagingDataAdapter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingDataAdapter<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->y0()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->H0()Z

    move-result v3

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->Z()Lx4/a;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$b;

    invoke-direct {v5, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$b;-><init>(Ljava/lang/Object;)V

    .line 7
    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$c;

    invoke-direct {v6, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$c;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;ZLx4/a;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-object v7
.end method

.method public B0()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->H0()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$d;

    invoke-direct {v1, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object v0
.end method

.method public abstract H0()Z
.end method

.method protected final I0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;)V
    .locals 5
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->w0()Landroidx/paging/PagingDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/paging/PagingDataAdapter;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->z0()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;->t()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    move-result-object v1

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/c;->b(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;)Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    move-result-object v1

    .line 4
    const-class v3, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;

    .line 8
    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->d()Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v1, v3, v2}, Lz4/a;->e(Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;Ljava/util/List;Z)V

    .line 10
    :cond_1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e3:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;->d()Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->z0()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;->t()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;

    move-result-object v2

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/c;->b(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;)Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, p1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;->b(Landroid/app/Activity;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V

    return-void
.end method

.method protected final J0(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v0, "requireActivity()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/qennnsad/aknkaksd/util/l;->z(Landroid/content/Context;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;ZZILjava/lang/Object;)V

    return-void
.end method

.method public K0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/x0;
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

    invoke-static {p1, p2, v0}, Le5/x0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/x0;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final L0(Landroidx/paging/PagingDataAdapter;)V
    .locals 1
    .param p1    # Landroidx/paging/PagingDataAdapter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingDataAdapter<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->h:Landroidx/paging/PagingDataAdapter;

    return-void
.end method

.method public final M0(Lcom/qennnsad/aknkaksd/data/repository/m;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->f:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-void
.end method

.method public bridge synthetic l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->K0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/x0;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/x0;

    iget-object v0, v0, Le5/x0;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    instance-of v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->z0()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;

    move-result-object v0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;->B(I)V

    .line 5
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->onDestroyView()V

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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->E0()V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->C0()V

    return-void
.end method

.method public final w0()Landroidx/paging/PagingDataAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingDataAdapter<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->h:Landroidx/paging/PagingDataAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final x0()Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;

    return-object v0
.end method

.method public final y0()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->f:Lcom/qennnsad/aknkaksd/data/repository/m;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sourceFactory"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract z0()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel<",
            "TEvent;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method
