.class public final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;
.super Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/b;
.source "SettingsFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,84:1\n106#2,15:85\n*S KotlinDebug\n*F\n+ 1 SettingsFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment\n*L\n20#1:85,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J&\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u001a\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016R\u001b\u0010\u0013\u001a\u00020\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00198\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001bR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010$\u001a\u00020\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008#\u0010!R\u0016\u0010&\u001a\u00020\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010!\u00a8\u0006)"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "",
        "j0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsViewModelProvider;",
        "f",
        "Lkotlin/Lazy;",
        "h0",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsViewModelProvider;",
        "provider",
        "Lcom/im/freechat/ui/settings/SettingsViewModel;",
        "g",
        "i0",
        "()Lcom/im/freechat/ui/settings/SettingsViewModel;",
        "viewModel",
        "Landroid/widget/TextView;",
        "h",
        "Landroid/widget/TextView;",
        "tvDataUsage",
        "i",
        "tvClearAll",
        "Landroid/widget/CheckedTextView;",
        "j",
        "Landroid/widget/CheckedTextView;",
        "checkBoxShowLastOnline",
        "k",
        "checkBoxNotifications",
        "l",
        "checkBoxSounds",
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
.field private final f:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/CheckedTextView;

.field private k:Landroid/widget/CheckedTextView;

.field private l:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/b;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsViewModelProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->f:Lkotlin/Lazy;

    .line 6
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$b;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic Y(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->q0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic Z(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->k0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Lcom/im/freechat/shared/entities/auth/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->r0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Lcom/im/freechat/shared/entities/auth/UserInfo;)V

    return-void
.end method

.method public static synthetic b0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->p0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->l0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->o0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->m0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->n0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic g0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)Lcom/im/freechat/ui/settings/SettingsViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->i0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final i0()Lcom/im/freechat/ui/settings/SettingsViewModel;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/settings/SettingsViewModel;

    return-object v0
.end method

.method private final j0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "tvDataUsage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/c;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->i:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "tvClearAll"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/d;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->k:Landroid/widget/CheckedTextView;

    if-nez v0, :cond_2

    const-string v0, "checkBoxNotifications"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/f;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/f;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->l:Landroid/widget/CheckedTextView;

    if-nez v0, :cond_3

    const-string v0, "checkBoxSounds"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/g;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/g;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->j:Landroid/widget/CheckedTextView;

    if-nez v0, :cond_4

    const-string v0, "checkBoxShowLastOnline"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/e;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final k0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/DataUsageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final l0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)V

    const p0, 0x7f1303d3

    const v1, 0x7f1303d4

    invoke-static {p1, p0, v1, v0}, Lcom/im/freechat/extend/f;->g(Landroid/app/Activity;IILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final m0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->i0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->k:Landroid/widget/CheckedTextView;

    if-nez p0, :cond_0

    const-string p0, "checkBoxNotifications"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/im/freechat/ui/settings/SettingsViewModel;->B(Z)Lkotlinx/coroutines/j2;

    return-void
.end method

.method private static final n0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->i0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->l:Landroid/widget/CheckedTextView;

    if-nez p0, :cond_0

    const-string p0, "checkBoxSounds"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/im/freechat/ui/settings/SettingsViewModel;->D(Z)Lkotlinx/coroutines/j2;

    return-void
.end method

.method private static final o0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->i0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->j:Landroid/widget/CheckedTextView;

    if-nez p0, :cond_0

    const-string p0, "checkBoxShowLastOnline"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/im/freechat/ui/settings/SettingsViewModel;->C(Z)Lkotlinx/coroutines/j2;

    return-void
.end method

.method private static final p0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->k:Landroid/widget/CheckedTextView;

    if-nez p0, :cond_0

    const-string p0, "checkBoxNotifications"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method private static final q0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->l:Landroid/widget/CheckedTextView;

    if-nez p0, :cond_0

    const-string p0, "checkBoxSounds"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method private static final r0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;Lcom/im/freechat/shared/entities/auth/UserInfo;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->j:Landroid/widget/CheckedTextView;

    if-nez p0, :cond_0

    const-string p0, "checkBoxShowLastOnline"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getLastOnline()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    xor-int/lit8 p1, v1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final h0()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsViewModelProvider;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsViewModelProvider;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d00b0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0165

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.cb_show_last_online)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/CheckedTextView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->j:Landroid/widget/CheckedTextView;

    const p2, 0x7f0a0162

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.cb_notifications)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/CheckedTextView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->k:Landroid/widget/CheckedTextView;

    const p2, 0x7f0a0166

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.cb_sounds)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/CheckedTextView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->l:Landroid/widget/CheckedTextView;

    const p2, 0x7f0a0729

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.tv_data_usage)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->h:Landroid/widget/TextView;

    const p2, 0x7f0a071d

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.tv_clear_all)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->i:Landroid/widget/TextView;

    return-object p1
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->j0()V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->i0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/settings/SettingsViewModel;->y()Lkotlinx/coroutines/j2;

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->i0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/settings/SettingsViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/j;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/j;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->i0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/settings/SettingsViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/i;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/i;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 6
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;->i0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/settings/SettingsViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/h;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/h;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
