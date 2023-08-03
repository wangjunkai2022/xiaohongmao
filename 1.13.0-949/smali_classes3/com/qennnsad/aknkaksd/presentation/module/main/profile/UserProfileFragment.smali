.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;
.super Lcom/qennnsad/aknkaksd/presentation/module/main/profile/a;
.source "UserProfileFragment.kt"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/ui/base/o;


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/a<",
        "Le5/z1;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e;",
        ">;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/o;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserProfileFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,276:1\n106#2,15:277\n254#3,2:292\n254#3,2:294\n254#3,2:297\n254#3,2:299\n254#3,2:301\n252#3,4:303\n254#3,2:309\n254#3,2:312\n254#3,2:314\n1#4:296\n1860#5,2:307\n1862#5:311\n*S KotlinDebug\n*F\n+ 1 UserProfileFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment\n*L\n37#1:277,15\n112#1:292,2\n115#1:294,2\n126#1:297,2\n182#1:299,2\n201#1:301,2\n202#1:303,4\n206#1:309,2\n222#1:312,2\n228#1:314,2\n204#1:307,2\n204#1:311\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008.\u0010/J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0012\u0010\n\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\u0018\u0010\u000e\u001a\u00020\u00052\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0002J\u0012\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u0005H\u0002J\u0008\u0010\u0014\u001a\u00020\u0013H\u0002J\u0008\u0010\u0015\u001a\u00020\u0005H\u0002J\u001a\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010 \u001a\u00020\u0005H\u0016J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0003H\u0014R\u001b\u0010(\u001a\u00020#8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u001b\u0010-\u001a\u00020)8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010%\u001a\u0004\u0008+\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Le5/z1;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/o;",
        "",
        "N0",
        "I0",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "user",
        "O",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        "list",
        "S0",
        "Lcom/im/freechat/shared/entities/chat/Status;",
        "friendStatus",
        "V0",
        "R0",
        "Landroid/app/Dialog;",
        "T0",
        "U0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Q0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "onResume",
        "e",
        "P0",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "H0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;",
        "viewModel",
        "",
        "l",
        "G0",
        "()I",
        "userId",
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

.field private final l:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/a;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->k:Lkotlin/Lazy;

    .line 6
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$l;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$l;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->l:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic A0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->L0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic B0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->J0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    return-void
.end method

.method public static final synthetic C0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic D0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->R0()V

    return-void
.end method

.method public static final synthetic E0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)Landroid/app/Dialog;
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->T0()Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic F0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->U0()V

    return-void
.end method

.method private final I0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->G0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->D(I)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/h;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/h;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/j;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/j;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->E()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/i;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/i;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/g;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/g;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final J0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->O(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    return-void
.end method

.method private static final K0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->S0(Ljava/util/List;)V

    return-void
.end method

.method private static final L0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Le5/z1;

    iget-object p0, p0, Le5/z1;->x:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f130424

    goto :goto_0

    :cond_1
    const v0, 0x7f1303da

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setActivated(Z)V

    return-void
.end method

.method private static final M0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Lcom/im/freechat/shared/entities/chat/FriendStatus;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/FriendStatus;->getStatus()Lcom/im/freechat/shared/entities/chat/Status;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->V0(Lcom/im/freechat/shared/entities/chat/Status;)V

    return-void
.end method

.method private final N0()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lq5/b;->i(ZLandroid/app/Activity;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Le5/z1;

    .line 3
    iget-object v3, v1, Le5/z1;->A:Landroid/widget/TextView;

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/f;

    invoke-direct {v4, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/f;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v5, v1, Le5/z1;->x:Landroid/widget/TextView;

    const-string v3, "tvFollowUser"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$b;

    invoke-direct {v8, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    iget-object v11, v1, Le5/z1;->o:Landroid/widget/TextView;

    const-string v3, "tvBlacklistUser"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$c;

    invoke-direct {v14, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    iget-object v3, v1, Le5/z1;->F:Landroid/widget/TextView;

    const-string v4, "tvOpenStream"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$d;

    invoke-direct {v6, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 7
    iget-object v9, v1, Le5/z1;->p:Landroid/widget/TextView;

    const-string v3, "tvChat"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$e;

    invoke-direct {v12, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 8
    iget-object v3, v1, Le5/z1;->n:Landroid/widget/TextView;

    const-string v4, "tvAddFriend"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$f;

    invoke-direct {v6, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    const-wide/16 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    iget-object v9, v1, Le5/z1;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "clContributors"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$g;

    invoke-direct {v12, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$g;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    invoke-static/range {v9 .. v14}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 10
    iget-object v3, v1, Le5/z1;->d:Landroid/widget/ImageButton;

    const-string v4, "ibBack"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$h;

    invoke-direct {v6, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$h;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    const-wide/16 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object v3

    invoke-virtual {v3}, Lg5/a;->b()Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;->getOtherUserProfile()Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    .line 12
    iget-object v11, v1, Le5/z1;->l:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;

    .line 13
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;->getContent()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-nez v5, :cond_0

    .line 14
    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;->getContent()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;->getTextColor()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x23

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;->getTextColor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 20
    :cond_1
    invoke-virtual {v11, v5, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->e(Ljava/lang/String;I)V

    const-wide/16 v6, 0x0

    .line 21
    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$i;

    invoke-direct {v8, v0, v3}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$i;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v11

    invoke-static/range {v5 .. v10}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    if-nez v11, :cond_3

    .line 22
    iget-object v1, v1, Le5/z1;->l:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;

    const-string v2, "scrollText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private final O(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->isMystery()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->x()Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const p1, 0x7f1302b8

    .line 2
    invoke-static {p1, v2, v1, v4}, Lcom/qennnsad/aknkaksd/util/toast/a;->m(IZILjava/lang/Object;)V

    return-void

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/z1;

    .line 4
    iget-object v3, v0, Le5/z1;->f:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->z()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v4

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getSnap()Ljava/lang/String;

    move-result-object v5

    const-string v6, "user.snap"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f0803e1

    const v7, 0x7f0803e1

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 6
    invoke-static/range {v3 .. v9}, Lcom/qennnsad/aknkaksd/util/img/e;->f(Landroid/widget/ImageView;Landroid/net/Uri;ZIIILjava/lang/Object;)V

    .line 7
    iget-object v3, v0, Le5/z1;->E:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v3, v0, Le5/z1;->A:Landroid/widget/TextView;

    const v4, 0x7f13043e

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p0, v4, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v3, v0, Le5/z1;->I:Landroid/widget/TextView;

    const-string v4, "tvSex"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getSex()I

    move-result v4

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getAge()Ljava/lang/String;

    move-result-object v6

    const-string v7, "user.age"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4, v6}, Lcom/qennnsad/aknkaksd/util/s1;->x(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 10
    iget-object v3, v0, Le5/z1;->j:Landroid/widget/ImageView;

    const-string v4, "ivLevel"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->isMystery()Z

    move-result v6

    invoke-static {v3, v4, v6}, Lcom/qennnsad/aknkaksd/util/s1;->A(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 11
    iget-object v3, v0, Le5/z1;->k:Landroid/widget/ImageView;

    const-string v4, "ivPeerage"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getPeerage_id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qennnsad/aknkaksd/util/s1;->B(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    .line 12
    iget-object v3, v0, Le5/z1;->w:Landroid/widget/TextView;

    const-string v4, "tvFamilyLevel"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getFamilyLevel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qennnsad/aknkaksd/util/s1;->v(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 13
    iget-object v3, v0, Le5/z1;->v:Landroid/widget/TextView;

    iget-object v4, v0, Le5/z1;->w:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v3, v0, Le5/z1;->s:Landroid/widget/TextView;

    const v4, 0x7f130444

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getTotalContribution()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p0, v4, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v3, v0, Le5/z1;->y:Landroid/widget/TextView;

    const v4, 0x7f1302e1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getFollowersCount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p0, v4, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v3, v0, Le5/z1;->z:Landroid/widget/TextView;

    const v4, 0x7f1302e2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getFolloweesCount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p0, v4, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v3, v0, Le5/z1;->o:Landroid/widget/TextView;

    .line 18
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getIsHit()I

    move-result v4

    if-ne v4, v5, :cond_3

    const v4, 0x7f130340

    goto :goto_1

    :cond_3
    const v4, 0x7f13033f

    .line 19
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 20
    iget-object v3, v0, Le5/z1;->F:Landroid/widget/TextView;

    const-string v4, "tvOpenStream"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getBroadcasting()Ljava/lang/String;

    move-result-object v4

    const-string v6, "y"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    const/16 v4, 0x8

    .line 21
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v3, v0, Le5/z1;->H:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getProfessional()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    const-string v7, "--"

    if-eqz v6, :cond_6

    move-object v4, v7

    :cond_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v3, v0, Le5/z1;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_8

    move-object v4, v7

    :cond_8
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v3, v0, Le5/z1;->C:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getIntro()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_9

    const/4 v2, 0x1

    :cond_9
    if-eqz v2, :cond_a

    move-object v4, v7

    :cond_a
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, v0, Le5/z1;->t:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getEmotion()Ljava/lang/String;

    move-result-object p1

    const-string v2, "user.emotion"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_5

    .line 26
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_c

    const p1, 0x7f130336

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_c
    :goto_5
    if-nez p1, :cond_d

    goto :goto_6

    .line 27
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_e

    const p1, 0x7f130333

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_e
    :goto_6
    if-nez p1, :cond_f

    goto :goto_7

    .line 28
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_10

    const p1, 0x7f130334

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_10
    :goto_7
    const/4 v1, 0x3

    if-nez p1, :cond_11

    goto :goto_8

    .line 29
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_12

    const p1, 0x7f130335

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v1, 0x4

    if-nez p1, :cond_13

    goto :goto_9

    .line 30
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_14

    const p1, 0x7f130332

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 31
    :cond_14
    :goto_9
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final O0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string p1, "requireActivity()"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->C()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/util/h1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final R0()V
    .locals 10

    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$j;

    invoke-direct {v7, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$j;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    const-string v1, "\u53d1\u9001\u597d\u53cb\u8bf7\u6c42"

    const-string v2, "\u8bf7\u8f93\u5165\u8bf7\u6c42\u5185\u5bb9"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/qennnsad/aknkaksd/util/l;->J(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/text/InputFilter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final S0(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/z1;

    .line 2
    iget-object v1, v0, Le5/z1;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "clContributors"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    xor-int/2addr v5, v4

    const/16 v6, 0x8

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    .line 3
    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, v0, Le5/z1;->b:Landroid/view/View;

    const-string v5, "cardDivider"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Le5/z1;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    xor-int/2addr v2, v4

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    const/16 v2, 0x8

    .line 6
    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/ImageView;

    .line 7
    iget-object v2, v0, Le5/z1;->g:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, v0, Le5/z1;->h:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v0, v0, Le5/z1;->i:Landroid/widget/ImageView;

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v1, 0x1

    if-gez v1, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    check-cast v2, Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 9
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    const-string v7, "imageView"

    .line 10
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    const/4 v7, 0x1

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_8

    const/4 v7, 0x0

    goto :goto_8

    :cond_8
    const/16 v7, 0x8

    .line 11
    :goto_8
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->z()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v7

    if-eqz v1, :cond_a

    .line 13
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getAvatar()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_9

    .line 14
    :cond_9
    invoke-virtual {v7, v1}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const v7, 0x7f0803e2

    .line 15
    invoke-static {v2, v1, v4, v7, v7}, Lcom/qennnsad/aknkaksd/util/img/e;->g(Landroid/widget/ImageView;Landroid/net/Uri;ZII)V

    :cond_a
    :goto_9
    move v1, v5

    goto :goto_5

    :cond_b
    return-void
.end method

.method private final T0()Landroid/app/Dialog;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/im/freechat/shared/entities/chat/FriendStatus;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/chat/FriendStatus;->getReason()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    move-object v2, v1

    const v1, 0x7f1300d9

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1300da

    .line 4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$k;

    invoke-direct {v5, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$k;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    const-string v1, "\u597d\u53cb\u8bf7\u6c42"

    invoke-static/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/util/l;->P(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private final U0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;->Companion:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getBroadcastingTab()Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user.id"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType$a;->a(Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e3:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "requireActivity()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lb5/a;->p(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    move-result-object v0

    .line 6
    invoke-virtual {v2, v3, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;->b(Landroid/app/Activity;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V

    return-void
.end method

.method private final V0(Lcom/im/freechat/shared/entities/chat/Status;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/z1;

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->x()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    .line 3
    iget-object v2, v0, Le5/z1;->p:Landroid/widget/TextView;

    const-string v3, "tvChat"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lb5/a;->h(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 4
    sget-object v3, Lcom/im/freechat/shared/entities/chat/Status;->FRIEND:Lcom/im/freechat/shared/entities/chat/Status;

    if-eq p1, v3, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isAdmin()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_single_conversation()I

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getEmceelevel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    const/16 v6, 0x32

    if-lt v3, v6, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    const/16 v6, 0x8

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/16 v3, 0x8

    .line 6
    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, v0, Le5/z1;->n:Landroid/widget/TextView;

    const-string v2, ""

    .line 8
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lb5/a;->h(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->FRIEND:Lcom/im/freechat/shared/entities/chat/Status;

    if-eq p1, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_7

    const/4 v6, 0x0

    .line 9
    :cond_7
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_8

    const/4 v1, -0x1

    goto :goto_6

    .line 10
    :cond_8
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    :goto_6
    if-eq v1, v4, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    const v1, 0x7f1300b1

    goto :goto_7

    :cond_9
    const v1, 0x7f1301b5

    goto :goto_7

    :cond_a
    const v1, 0x7f13035f

    .line 11
    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    if-eqz p1, :cond_c

    .line 12
    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->NONE:Lcom/im/freechat/shared/entities/chat/Status;

    if-eq p1, v1, :cond_c

    sget-object v1, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_RECEIVED:Lcom/im/freechat/shared/entities/chat/Status;

    if-ne p1, v1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    .line 13
    :cond_c
    :goto_8
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setActivated(Z)V

    return-void
.end method

.method public static synthetic x0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->K0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic y0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Lcom/im/freechat/shared/entities/chat/FriendStatus;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->M0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Lcom/im/freechat/shared/entities/chat/FriendStatus;)V

    return-void
.end method

.method public static synthetic z0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->O0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final G0()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    return-object v0
.end method

.method public P(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/o$a;->a(Lcom/qennnsad/aknkaksd/presentation/ui/base/o;Z)V

    return-void
.end method

.method protected P0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e;)V
    .locals 9
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v0, "requireActivity()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e$a;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e$a;->d()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/a;->f(Landroid/app/Activity;ILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e$b;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e$b;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e$b;->d()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/qennnsad/aknkaksd/util/toast/a;->m(IZILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Le5/z1;

    iget-object p1, p1, Le5/z1;->d:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public Q0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/z1;
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

    invoke-static {p1, p2, v0}, Le5/z1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/z1;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v0

    return-object v0
.end method

.method public l(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/o$a;->b(Lcom/qennnsad/aknkaksd/presentation/ui/base/o;I)V

    return-void
.end method

.method public bridge synthetic l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->Q0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/z1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->P0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->G0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->F(I)V

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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->N0()V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->I0()V

    return-void
.end method
