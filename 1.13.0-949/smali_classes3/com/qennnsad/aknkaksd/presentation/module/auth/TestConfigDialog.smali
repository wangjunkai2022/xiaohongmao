.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;
.super Lcom/qennnsad/aknkaksd/presentation/module/auth/g;
.source "TestConfigDialog.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTestConfigDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestConfigDialog.kt\ncom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,93:1\n172#2,9:94\n254#3,2:103\n*S KotlinDebug\n*F\n+ 1 TestConfigDialog.kt\ncom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog\n*L\n25#1:94,9\n39#1:103,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u000c\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0002J&\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016R\u001b\u0010\u0012\u001a\u00020\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "Le5/r3;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;",
        "d0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;",
        "f",
        "Lkotlin/Lazy;",
        "e0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;",
        "viewModel",
        "Lcom/qennnsad/aknkaksd/util/t0;",
        "g",
        "Lcom/qennnsad/aknkaksd/util/t0;",
        "c0",
        "()Lcom/qennnsad/aknkaksd/util/t0;",
        "j0",
        "(Lcom/qennnsad/aknkaksd/util/t0;)V",
        "networkUtility",
        "Lg5/a;",
        "localDataManager",
        "Lg5/a;",
        "b0",
        "()Lg5/a;",
        "i0",
        "(Lg5/a;)V",
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

.field public g:Lcom/qennnsad/aknkaksd/util/t0;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field public h:Lg5/a;
    .annotation runtime Lu7/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/g;-><init>()V

    .line 2
    const-class v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog$special$$inlined$activityViewModels$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog$special$$inlined$activityViewModels$default$3;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic Y(Le5/r3;Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->h0(Le5/r3;Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Le5/r3;Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->g0(Le5/r3;Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic a0(Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->f0(Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Landroid/view/View;)V

    return-void
.end method

.method private final d0(Le5/r3;)Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;
    .locals 1

    .line 1
    iget-object p1, p1, Le5/r3;->d:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v0, 0x7f0a031b

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0330

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0570

    if-eq p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->Re:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->H:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->Graph:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    :goto_0
    return-object p1
.end method

.method private static final f0(Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private static final g0(Le5/r3;Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/RadioGroup;I)V
    .locals 1

    const-string p3, "$this_apply"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$forcedDnsResolutionHost"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0a0167

    if-ne p4, p3, :cond_0

    .line 1
    iget-object p3, p0, Le5/r3;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Le5/r3;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    const p3, 0x7f0a015f

    if-ne p4, p3, :cond_1

    .line 2
    iget-object p0, p0, Le5/r3;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->c0()Lcom/qennnsad/aknkaksd/util/t0;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "requireContext()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog$b;

    invoke-direct {p3, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p1, p3}, Lcom/qennnsad/aknkaksd/util/t0;->v(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method private static final h0(Le5/r3;Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 2

    const-string p3, "$this_apply"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$forcedDnsResolutionHost"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p3, p0, Le5/r3;->o:Landroid/widget/RadioGroup;

    invoke-virtual {p3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p3

    const v0, 0x7f0a015f

    if-eq p3, v0, :cond_2

    const v0, 0x7f0a0163

    if-eq p3, v0, :cond_1

    const v0, 0x7f0a0167

    if-eq p3, v0, :cond_0

    .line 2
    sget-object p3, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->NONE:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p3, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->TEST:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p3, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->OUT_OF_CHINA:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p3, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->IN_CHINA:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->e0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object v0

    .line 7
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    .line 8
    iget-object v1, p0, Le5/r3;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->d0(Le5/r3;)Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    move-result-object p0

    .line 10
    invoke-virtual {v0, p3, p2, v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->P(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;)V

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "requireActivity()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/util/c1;->d(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final b0()Lg5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->h:Lg5/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "localDataManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c0()Lcom/qennnsad/aknkaksd/util/t0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->g:Lcom/qennnsad/aknkaksd/util/t0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "networkUtility"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    return-object v0
.end method

.method public final i0(Lg5/a;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->h:Lg5/a;

    return-void
.end method

.method public final j0(Lcom/qennnsad/aknkaksd/util/t0;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/util/t0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->g:Lcom/qennnsad/aknkaksd/util/t0;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Le5/r3;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/r3;

    move-result-object p1

    .line 2
    iget-object p2, p1, Le5/r3;->b:Landroid/widget/ImageView;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/i;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/i;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p2, p1, Le5/r3;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->b0()Lg5/a;

    move-result-object v0

    invoke-virtual {v0}, Lg5/a;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p1, Le5/r3;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    const-string v0, "etTestServerDomain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->b0()Lg5/a;

    move-result-object p2

    invoke-virtual {p2}, Lg5/a;->i()Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    move-result-object p2

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p1, Le5/r3;->o:Landroid/widget/RadioGroup;

    const p3, 0x7f0a0163

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p1, Le5/r3;->o:Landroid/widget/RadioGroup;

    const p3, 0x7f0a015f

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p1, Le5/r3;->o:Landroid/widget/RadioGroup;

    const v3, 0x7f0a0167

    invoke-virtual {p2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 10
    iget-object p2, p1, Le5/r3;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p2, p1, Le5/r3;->o:Landroid/widget/RadioGroup;

    const p3, 0x7f0a0160

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->check(I)V

    .line 12
    :goto_0
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object p3, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->PROD:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 13
    iget-object p3, p1, Le5/r3;->o:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/auth/k;

    invoke-direct {v3, p1, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/k;-><init>(Le5/r3;Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p3, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 14
    iget-object p3, p1, Le5/r3;->d:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->b0()Lg5/a;

    move-result-object v3

    invoke-virtual {v3}, Lg5/a;->A()Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    move-result-object v3

    sget-object v4, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v2, :cond_6

    if-eq v3, v1, :cond_5

    if-eq v3, v0, :cond_4

    const v0, 0x7f0a04cf

    goto :goto_1

    :cond_4
    const v0, 0x7f0a031b

    goto :goto_1

    :cond_5
    const v0, 0x7f0a0330

    goto :goto_1

    :cond_6
    const v0, 0x7f0a0570

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 15
    iget-object p3, p1, Le5/r3;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/j;

    invoke-direct {v0, p1, p0, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/j;-><init>(Le5/r3;Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p1}, Le5/r3;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method
