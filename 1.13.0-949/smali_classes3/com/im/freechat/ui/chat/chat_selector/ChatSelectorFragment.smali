.class public final Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;
.super Lcom/im/freechat/base/f;
.source "ChatSelectorFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/f<",
        "Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;",
        "Lf4/m;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatSelectorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatSelectorFragment.kt\ncom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment\n+ 2 FragmentVM.kt\norg/koin/androidx/viewmodel/ext/android/FragmentVMKt\n+ 3 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 4 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n36#2,7:60\n59#3,7:67\n40#4,5:74\n766#5:79\n857#5,2:80\n*S KotlinDebug\n*F\n+ 1 ChatSelectorFragment.kt\ncom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment\n*L\n21#1:60,7\n21#1:67,7\n22#1:74,5\n39#1:79\n39#1:80,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0016\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u001a\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\n\u001a\u00020\tH\u0014J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016R\u001b\u0010\u0014\u001a\u00020\u000f8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0018R\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0011\u001a\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0011\u001a\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;",
        "Lcom/im/freechat/base/f;",
        "Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;",
        "Lf4/m;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "t0",
        "",
        "Z",
        "direction",
        "Landroid/os/Bundle;",
        "extras",
        "s0",
        "Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "q0",
        "()Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;",
        "viewModel",
        "Lcom/im/freechat/ui/chatlist/d;",
        "c",
        "n0",
        "()Lcom/im/freechat/ui/chatlist/d;",
        "adapter",
        "",
        "d",
        "p0",
        "()[J",
        "forwardedMessageIds",
        "",
        "e",
        "o0",
        "()I",
        "forwardedFromChatId",
        "<init>",
        "()V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final b:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/f;-><init>()V

    .line 2
    new-instance v0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$special$$inlined$viewModel$default$1;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$special$$inlined$viewModel$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    invoke-static {p0}, Lorg/koin/android/ext/android/a;->a(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$special$$inlined$viewModel$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3, v1}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$special$$inlined$viewModel$default$2;-><init>(Lkotlin/jvm/functions/Function0;Lz8/a;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)V

    .line 5
    const-class v1, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v4, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$special$$inlined$viewModel$default$3;

    invoke-direct {v4, v0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$special$$inlined$viewModel$default$3;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0, v1, v4, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->b:Lkotlin/Lazy;

    .line 7
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 8
    new-instance v1, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$special$$inlined$inject$default$1;

    invoke-direct {v1, p0, v3, v3}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->c:Lkotlin/Lazy;

    .line 10
    new-instance v0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$b;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$b;-><init>(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->d:Lkotlin/Lazy;

    .line 11
    new-instance v0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$a;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$a;-><init>(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic k0(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->r0(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic l0(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->o0()I

    move-result p0

    return p0
.end method

.method public static final synthetic m0(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;)[J
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->p0()[J

    move-result-object p0

    return-object p0
.end method

.method private final n0()Lcom/im/freechat/ui/chatlist/d;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chatlist/d;

    return-object v0
.end method

.method private final o0()I
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final p0()[J
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method private static final r0(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->n0()Lcom/im/freechat/ui/chatlist/d;

    move-result-object p0

    if-eqz p1, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/shared/entities/chat/Chat;

    .line 4
    invoke-static {v2}, Lcom/im/freechat/extend/g;->a(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/im/freechat/extend/g;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic Y()Lcom/im/freechat/base/a;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->q0()Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;

    move-result-object v0

    return-object v0
.end method

.method protected Z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/m;

    iget-object v0, v0, Lf4/m;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->n0()Lcom/im/freechat/ui/chatlist/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 4
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->q0()Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;->k()Lkotlinx/coroutines/j2;

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->q0()Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;->j()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/chat/chat_selector/a;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/chat_selector/a;-><init>(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 7
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->n0()Lcom/im/freechat/ui/chatlist/d;

    move-result-object v0

    new-instance v1, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$c;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment$c;-><init>(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/chatlist/d;->i(Lkotlin/jvm/functions/Function1;)V

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/m;

    iget-object v0, v0, Lf4/m;->c:Lf4/b2;

    invoke-virtual {v0}, Lf4/b2;->b()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const-string v1, "binding.toolbar.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/f;->i0(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method public bridge synthetic a0(Ljava/lang/Enum;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->s0(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic g0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->t0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/m;

    move-result-object p1

    return-object p1
.end method

.method public q0()Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;

    return-object v0
.end method

.method public s0(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public t0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/m;
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

    invoke-static {p1, p2, v0}, Lf4/m;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/m;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
