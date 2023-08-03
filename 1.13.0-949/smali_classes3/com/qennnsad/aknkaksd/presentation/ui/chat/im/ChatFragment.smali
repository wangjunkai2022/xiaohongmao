.class public final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;
.super Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/k;
.source "ChatFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/k<",
        "Le5/a1;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/d;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,88:1\n106#2,15:89\n254#3,2:104\n*S KotlinDebug\n*F\n+ 1 ChatFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment\n*L\n28#1:89,15\n73#1:104,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0003H\u0014R\u001b\u0010\u0018\u001a\u00020\u00138VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Le5/a1;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/d;",
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
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "A0",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;",
        "viewModel",
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
.field private final k:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/k;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;->k:Lkotlin/Lazy;

    return-void
.end method

.method private final B0()V
    .locals 3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;->A0()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/e;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final C0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Le5/a1;

    iget-object p0, p0, Le5/a1;->c:Landroid/widget/ImageView;

    const-string v0, "requireBinding().indicator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    .line 2
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final D0()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [Landroidx/fragment/app/Fragment;

    .line 1
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;

    invoke-direct {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;

    invoke-direct {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 3
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;

    invoke-direct {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;-><init>()V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 4
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    const v3, 0x7f130247

    .line 5
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const v3, 0x7f130248

    .line 6
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const v3, 0x7f13024b

    .line 7
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Le5/a1;

    .line 9
    iget-object v4, v3, Le5/a1;->g:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$a;

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    const-string v7, "childFragmentManager"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v7

    const-string v8, "lifecycle"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {v5, v2, v6, v7}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$a;-><init>(Ljava/util/List;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v4, v5}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v4, v3, Le5/a1;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, v3, Le5/a1;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/f;

    invoke-direct {v6, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/f;-><init>([Ljava/lang/String;)V

    .line 15
    invoke-direct {v2, v4, v5, v6}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 16
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 17
    iget-object v7, v3, Le5/a1;->d:Landroid/widget/ImageView;

    const-string v1, "ivChatNotifications"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$b;

    invoke-direct {v10, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 18
    iget-object v13, v3, Le5/a1;->e:Landroid/widget/ImageView;

    const-string v1, "ivChatSubscribe"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$c;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;)V

    const-wide/16 v14, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v13 .. v18}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private static final E0([Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    const-string v0, "$titles"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method public static synthetic x0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;->C0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic y0([Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;->E0([Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public static final synthetic z0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;)Landroidx/navigation/NavController;
    .locals 0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->c0()Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A0()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;

    return-object v0
.end method

.method protected F0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/d;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/d;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/a1;
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

    invoke-static {p1, p2, v0}, Le5/a1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/a1;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;->A0()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;->G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/a1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/d;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;->F0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/d;)V

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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;->D0()V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;->B0()V

    return-void
.end method
