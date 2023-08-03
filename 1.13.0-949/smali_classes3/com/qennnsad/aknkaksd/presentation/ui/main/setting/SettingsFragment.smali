.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;
.super Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/m;
.source "SettingsFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/m<",
        "Le5/u1;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/v;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,98:1\n106#2,15:99\n*S KotlinDebug\n*F\n+ 1 SettingsFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment\n*L\n24#1:99,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0003H\u0014R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Le5/u1;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/v;",
        "",
        "B0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "E0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "e",
        "D0",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "A0",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;",
        "viewModel",
        "Lcom/qennnsad/aknkaksd/util/q;",
        "l",
        "Lcom/qennnsad/aknkaksd/util/q;",
        "z0",
        "()Lcom/qennnsad/aknkaksd/util/q;",
        "F0",
        "(Lcom/qennnsad/aknkaksd/util/q;)V",
        "debugUtil",
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

.field public l:Lcom/qennnsad/aknkaksd/util/q;
    .annotation runtime Lu7/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/m;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;->k:Lkotlin/Lazy;

    return-void
.end method

.method private final B0()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Le5/u1;

    .line 2
    iget-object v2, v1, Le5/u1;->e:Landroid/widget/RelativeLayout;

    const-string v3, "settingRlBlackList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$a;

    invoke-direct {v5, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)V

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 3
    iget-object v2, v1, Le5/u1;->h:Landroid/widget/TextView;

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/util/n;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v3, 0x7f1303ca

    .line 5
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v4, v1, Le5/u1;->f:Landroid/widget/RelativeLayout;

    const-string v2, "settingRlClearCache"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$b;

    invoke-direct {v7, v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$b;-><init>(Le5/u1;Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 8
    iget-object v2, v1, Le5/u1;->k:Landroidx/appcompat/widget/SwitchCompat;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->A()Lkotlinx/coroutines/flow/t;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/t;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_subscribe_notify()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 10
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/w;

    invoke-direct {v3, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/w;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 11
    iget-object v2, v1, Le5/u1;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t;

    invoke-direct {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t;-><init>()V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->A()Lkotlinx/coroutines/flow/t;

    move-result-object v6

    invoke-interface {v6}, Lkotlinx/coroutines/flow/t;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getSettings()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    :cond_2
    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 15
    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$c;

    invoke-direct {v6, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)V

    invoke-virtual {v3, v6}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t;->g(Lkotlin/jvm/functions/Function1;)V

    .line 16
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object v7, v1, Le5/u1;->g:Landroid/widget/RelativeLayout;

    const-string v2, "settingRlModifyPasswd"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$d;

    invoke-direct {v10, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 18
    iget-object v13, v1, Le5/u1;->i:Landroid/widget/TextView;

    const-string v2, "settingTvLogout"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v14, 0x0

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$e;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)V

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v18}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    iget-object v7, v1, Le5/u1;->j:Landroid/widget/TextView;

    const v2, 0x7f1303d2

    new-array v3, v4, [Ljava/lang/Object;

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object v6

    invoke-virtual {v6}, Lg5/a;->J()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qennnsad/aknkaksd/util/x0;->f(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 21
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;->z0()Lcom/qennnsad/aknkaksd/util/q;

    move-result-object v6

    const-string v2, "this"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/qennnsad/aknkaksd/util/q;->e(Lcom/qennnsad/aknkaksd/util/q;Landroid/view/View;ILjava/lang/String;ILjava/lang/Object;)V

    .line 23
    iget-object v12, v1, Le5/u1;->m:Landroid/widget/TextView;

    const-string v2, "tvCustomerSupport"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v13, 0x0

    new-instance v15, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$f;

    invoke-direct {v15, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)V

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 24
    iget-object v2, v1, Le5/u1;->b:Landroid/widget/ImageButton;

    const-string v1, "imgbtnToolbarBack"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$g;

    invoke-direct {v5, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$g;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private static final C0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;->A0()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;->u(Z)V

    return-void
.end method

.method public static synthetic x0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;->C0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static final synthetic y0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)Landroidx/navigation/NavController;
    .locals 0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->c0()Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A0()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;

    return-object v0
.end method

.method protected D0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/v;)V
    .locals 6
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/v;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/v$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/v$a;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity;->k:Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string p1, "requireActivity()"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object p1

    invoke-virtual {p1}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest()Z

    move-result p1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity$a;->d(Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity$a;Landroid/content/Context;Ljava/lang/Integer;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public E0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/u1;
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

    invoke-static {p1, p2, v0}, Le5/u1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/u1;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final F0(Lcom/qennnsad/aknkaksd/util/q;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/util/q;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;->l:Lcom/qennnsad/aknkaksd/util/q;

    return-void
.end method

.method public bridge synthetic e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;->A0()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;->E0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/u1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/v;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;->D0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/v;)V

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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;->B0()V

    return-void
.end method

.method public final z0()Lcom/qennnsad/aknkaksd/util/q;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;->l:Lcom/qennnsad/aknkaksd/util/q;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "debugUtil"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
