.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;
.super Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/l;
.source "ModifyPasswordFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/l<",
        "Le5/m1;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/n;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifyPasswordFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifyPasswordFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,77:1\n106#2,15:78\n275#3,2:93\n*S KotlinDebug\n*F\n+ 1 ModifyPasswordFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment\n*L\n24#1:78,15\n38#1:93,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0003H\u0014R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Le5/m1;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/n;",
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
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "y0",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;",
        "viewModel",
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


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/l;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;->k:Lkotlin/Lazy;

    return-void
.end method

.method private static final B0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;Landroid/content/DialogInterface;I)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity;->k:Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string p0, "requireActivity()"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity$a;->d(Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity$a;Landroid/content/Context;Ljava/lang/Integer;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic x0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;->B0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final z0()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Le5/m1;

    .line 2
    iget-object v2, v1, Le5/m1;->l:Landroid/widget/TextView;

    const-string v3, "tvRecoverPassword"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v5, v1, Le5/m1;->l:Landroid/widget/TextView;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$a;

    invoke-direct {v8, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    iget-object v11, v1, Le5/m1;->k:Landroid/widget/TextView;

    const-string v2, "tvModifyPassword"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$b;

    invoke-direct {v14, v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$b;-><init>(Le5/m1;Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;)V

    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    iget-object v2, v1, Le5/m1;->j:Landroid/widget/TextView;

    const-string v3, "tvCustomerSupport"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$c;

    invoke-direct {v5, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;)V

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 7
    iget-object v8, v1, Le5/m1;->e:Landroid/widget/ImageButton;

    const-string v1, "imgbtnToolbarBack"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$d;

    invoke-direct {v11, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;)V

    const-wide/16 v9, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected A0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/n;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/n;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/n$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/n$a;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u63d0\u793a"

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u4fee\u6539\u5bc6\u7801\u6210\u529f"

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/o;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/o;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;)V

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public C0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/m1;
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

    invoke-static {p1, p2, v0}, Le5/m1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/m1;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;->C0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/m1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/n;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;->A0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/n;)V

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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;->z0()V

    return-void
.end method

.method public y0()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;

    return-object v0
.end method
