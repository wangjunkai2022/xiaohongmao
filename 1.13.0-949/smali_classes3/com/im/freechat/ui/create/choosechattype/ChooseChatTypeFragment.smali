.class public final Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;
.super Lcom/im/freechat/base/f;
.source "ChooseChatTypeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/f<",
        "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;",
        "Lf4/n;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChooseChatTypeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChooseChatTypeFragment.kt\ncom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,72:1\n40#2,5:73\n40#2,5:78\n254#3,2:83\n254#3,2:85\n*S KotlinDebug\n*F\n+ 1 ChooseChatTypeFragment.kt\ncom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment\n*L\n21#1:73,5\n23#1:78,5\n66#1:83,2\n32#1:85,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u000c\u001a\u00020\u0004H\u0014J\u0008\u0010\r\u001a\u00020\u0004H\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;",
        "Lcom/im/freechat/base/f;",
        "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;",
        "Lf4/n;",
        "",
        "t0",
        "s0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "x0",
        "Z",
        "onResume",
        "direction",
        "Landroid/os/Bundle;",
        "extras",
        "w0",
        "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "p0",
        "()Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;",
        "viewModel",
        "Lcom/im/freechat/ui/chatlist/d;",
        "c",
        "o0",
        "()Lcom/im/freechat/ui/chatlist/d;",
        "adapter",
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/f;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 3
    new-instance v1, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 4
    iput-object v1, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->b:Lkotlin/Lazy;

    .line 5
    new-instance v1, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$special$$inlined$inject$default$2;

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic k0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->q0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic l0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->u0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->v0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Lcom/im/freechat/shared/entities/auth/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->r0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Lcom/im/freechat/shared/entities/auth/UserInfo;)V

    return-void
.end method

.method private final o0()Lcom/im/freechat/ui/chatlist/d;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chatlist/d;

    return-object v0
.end method

.method private static final q0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->o0()Lcom/im/freechat/ui/chatlist/d;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/im/freechat/extend/g;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method private static final r0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Lcom/im/freechat/shared/entities/auth/UserInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/n;

    iget-object p0, p0, Lf4/n;->d:Landroid/widget/LinearLayout;

    const-string v0, "binding.llGroup"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->isSuperUser()Z

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 2
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final s0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lf4/n;

    iget-object v1, v1, Lf4/n;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/n;

    iget-object v0, v0, Lf4/n;->f:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "binding.toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private final t0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/n;

    iget-object v0, v0, Lf4/n;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/im/freechat/ui/create/choosechattype/a;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/create/choosechattype/a;-><init>(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/n;

    iget-object v0, v0, Lf4/n;->d:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/im/freechat/ui/create/choosechattype/b;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/create/choosechattype/b;-><init>(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/n;

    iget-object v0, v0, Lf4/n;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->o0()Lcom/im/freechat/ui/chatlist/d;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$a;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment$a;-><init>(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;)V

    invoke-virtual {v1, v2}, Lcom/im/freechat/ui/chatlist/d;->i(Lkotlin/jvm/functions/Function1;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 8
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private static final u0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;->NAVIGATE_CHOOSE_MEMBER:Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const-string v2, "chatType"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/base/f;->c0(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method

.method private static final v0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;->NAVIGATE_CHOOSE_MEMBER:Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->GROUP:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    const-string v2, "chatType"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/base/f;->c0(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic Y()Lcom/im/freechat/base/a;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->p0()Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;

    move-result-object v0

    return-object v0
.end method

.method protected Z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->p0()Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->m()Lkotlinx/coroutines/j2;

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->t0()V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->p0()Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/create/choosechattype/d;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/create/choosechattype/d;-><init>(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->p0()Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;->l()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/create/choosechattype/c;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/create/choosechattype/c;-><init>(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic a0(Ljava/lang/Enum;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->w0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic g0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->x0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/n;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->s0()V

    return-void
.end method

.method public p0()Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;

    return-object v0
.end method

.method public w0(Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;
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

.method public x0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/n;
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

    invoke-static {p1, p2, v0}, Lf4/n;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/n;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
