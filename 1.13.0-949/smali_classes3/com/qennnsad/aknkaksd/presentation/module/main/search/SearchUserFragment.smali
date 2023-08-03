.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;
.super Lcom/qennnsad/aknkaksd/presentation/module/main/search/a;
.source "SearchUserFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/a<",
        "Le5/t1;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/e;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchUserFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchUserFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n106#2,15:121\n1#3:136\n*S KotlinDebug\n*F\n+ 1 SearchUserFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment\n*L\n33#1:121,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008!\u0010\"J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0003H\u0014R\u001b\u0010\u0018\u001a\u00020\u00138VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Le5/t1;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/e;",
        "",
        "D0",
        "B0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "G0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "e",
        "F0",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "A0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;",
        "viewModel",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;",
        "l",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;",
        "z0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;",
        "H0",
        "(Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;)V",
        "searchAdapter",
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

.field public l:Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/a;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->k:Lkotlin/Lazy;

    return-void
.end method

.method private final B0()V
    .locals 13

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$a;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v7

    new-instance v10, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$b;

    invoke-direct {v10, p0, v6}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->A0()Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->z()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/search/f;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/f;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final C0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Le5/t1;

    iget-object p0, p0, Le5/t1;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method private final D0()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lq5/b;->i(ZLandroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/t1;

    .line 3
    iget-object v1, v0, Le5/t1;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/github/magiepooh/recycleritemdecoration/c;->b(Landroid/content/Context;)Lcom/github/magiepooh/recycleritemdecoration/e$a;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0801c7

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/github/magiepooh/recycleritemdecoration/e$a;->g(II)Lcom/github/magiepooh/recycleritemdecoration/e$a;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/github/magiepooh/recycleritemdecoration/e$a;->a()Lcom/github/magiepooh/recycleritemdecoration/e;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 8
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;

    .line 9
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->A0()Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->B()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v3

    .line 10
    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$c;

    invoke-direct {v4, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$c;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$d;

    invoke-direct {v5, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;)V

    .line 11
    invoke-direct {v2, v3, v4, v5}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 12
    invoke-virtual {p0, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->H0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;)V

    .line 13
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget-object v1, v0, Le5/t1;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v2, "swipeRefreshLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$e;

    invoke-direct {v2, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Le5/t1;)V

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/util/s1;->J(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lkotlin/jvm/functions/Function1;)V

    .line 15
    iget-object v1, v0, Le5/t1;->d:Landroidx/appcompat/widget/SearchView;

    .line 16
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$f;

    invoke-direct {v2, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 17
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/search/g;

    invoke-direct {v2, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/g;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Landroidx/appcompat/widget/SearchView;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    iget-object v5, v0, Le5/t1;->h:Landroid/widget/TextView;

    const-string v1, "tvTitle"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$g;

    invoke-direct {v8, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment$g;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    iget-object v0, v0, Le5/t1;->b:Landroid/widget/ImageView;

    const-string v1, "ivAd"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object v1

    invoke-virtual {v1}, Lg5/a;->b()Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;->getSearchUser()Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->A0()Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;->B()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->Z()Lx4/a;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/s1;->m(Landroid/widget/ImageView;Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;)V

    return-void
.end method

.method private static final E0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Landroidx/appcompat/widget/SearchView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string v0, "it.window"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/im/freechat/extend/f;->y(Landroid/view/View;Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public static synthetic x0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->E0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Landroidx/appcompat/widget/SearchView;)V

    return-void
.end method

.method public static synthetic y0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->C0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public A0()Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    return-object v0
.end method

.method protected F0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/e;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/search/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/t1;
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

    invoke-static {p1, p2, v0}, Le5/t1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/t1;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final H0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;

    return-void
.end method

.method public bridge synthetic e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->A0()Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/t1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/e;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->F0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/e;)V

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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->D0()V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->B0()V

    return-void
.end method

.method public final z0()Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "searchAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
