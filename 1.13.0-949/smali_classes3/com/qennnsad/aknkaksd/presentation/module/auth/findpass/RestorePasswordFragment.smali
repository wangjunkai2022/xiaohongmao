.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;
.super Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/a;
.source "RestorePasswordFragment.kt"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/a<",
        "Le5/s1;",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b;",
        ">;",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRestorePasswordFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RestorePasswordFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,143:1\n106#2,15:144\n65#3,16:159\n93#3,3:175\n*S KotlinDebug\n*F\n+ 1 RestorePasswordFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment\n*L\n26#1:144,15\n59#1:159,16\n59#1:175,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008A\u0010BJ\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\u0005H\u0002J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u0005H\u0002J\u001a\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016J\u0006\u0010\u0019\u001a\u00020\u0005J\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0003H\u0014J\u0018\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0008\u0010 \u001a\u00020\u0005H\u0016R\u001b\u0010&\u001a\u00020!8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R$\u0010.\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R$\u00106\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u0014\u00109\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0014\u0010;\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u00108R\u0014\u0010=\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u00108R\u001c\u0010@\u001a\n >*\u0004\u0018\u00010\u000b0\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u00108\u00a8\u0006C"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Le5/s1;",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b;",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;",
        "",
        "K0",
        "M0",
        "a1",
        "Z0",
        "Y0",
        "",
        "image",
        "X0",
        "S0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "T0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "U0",
        "e",
        "R0",
        "token",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;",
        "reason",
        "B",
        "o",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "J0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;",
        "viewModel",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;",
        "l",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;",
        "E0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;",
        "V0",
        "(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;)V",
        "graphCaptchaDialog",
        "Landroid/os/CountDownTimer;",
        "m",
        "Landroid/os/CountDownTimer;",
        "I0",
        "()Landroid/os/CountDownTimer;",
        "W0",
        "(Landroid/os/CountDownTimer;)V",
        "smsTimer",
        "G0",
        "()Ljava/lang/String;",
        "phone",
        "H0",
        "smsCode",
        "F0",
        "newPassword",
        "kotlin.jvm.PlatformType",
        "D0",
        "countryCode",
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

.field private l:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private m:Landroid/os/CountDownTimer;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/a;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->k:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic A0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->N0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->Q0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic C0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)Le5/s1;
    .locals 0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->a0()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Le5/s1;

    return-object p0
.end method

.method private final D0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/s1;

    iget-object v0, v0, Le5/s1;->b:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeWithPlus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final F0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/s1;

    iget-object v0, v0, Le5/s1;->d:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final G0()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/s1;

    iget-object v0, v0, Le5/s1;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final H0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/s1;

    iget-object v0, v0, Le5/s1;->e:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final K0()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/qennnsad/aknkaksd/util/extentions/a;->a(Landroidx/fragment/app/Fragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Le5/s1;

    iget-object v1, v1, Le5/s1;->n:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/s1;

    iget-object v0, v0, Le5/s1;->n:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/d;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final L0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    return-void
.end method

.method private final M0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/s1;

    .line 2
    iget-object v1, v0, Le5/s1;->b:Lcom/hbb20/CountryCodePicker;

    const-string v2, "cn"

    invoke-virtual {v1, v2}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingNameCode(Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Le5/s1;->b:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->O()V

    .line 4
    iget-object v1, v0, Le5/s1;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    iget-object v1, v0, Le5/s1;->k:Landroid/widget/Button;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/e;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/e;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, v0, Le5/s1;->j:Landroid/widget/Button;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/c;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, v0, Le5/s1;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    const-string v2, "phoneNumber"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$b;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    iget-object v1, v0, Le5/s1;->b:Lcom/hbb20/CountryCodePicker;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/g;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/g;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V

    invoke-virtual {v1, v2}, Lcom/hbb20/CountryCodePicker;->setOnCountryChangeListener(Lcom/hbb20/CountryCodePicker$h;)V

    .line 11
    iget-object v0, v0, Le5/s1;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/f;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/f;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final N0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->m:Landroid/os/CountDownTimer;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->J0()Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    move-result-object p1

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->D0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "countryCode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->G0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final O0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->J0()Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    move-result-object p1

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->D0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "countryCode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->G0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->F0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->H0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final P0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->U0()V

    return-void
.end method

.method private static final Q0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;Landroid/view/View;)V
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "requireContext()"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->J0()Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->x()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;Landroid/content/Context;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method

.method private final S0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    :cond_1
    return-void
.end method

.method private final X0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->l:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->l:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;->a0(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->l:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 4
    :cond_2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->FIND_PASSWORD:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$c;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->l:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "graph"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final Y0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$d;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V

    sget-object v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$e;

    invoke-static {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;->c(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final Z0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->FIND_PASSWORD:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    invoke-direct {v0, v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "recaptcha"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final a1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$f;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->m:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static synthetic x0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->O0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->L0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->P0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->J0()Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    move-result-object p2

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->D0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "countryCode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->G0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final E0()Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->l:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    return-object v0
.end method

.method public final I0()Landroid/os/CountDownTimer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->m:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method public J0()Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    return-object v0
.end method

.method protected R0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$a;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->navigateUp()Z

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$b;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$b;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->S0()V

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$c;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->X0(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$d;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->Y0()V

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$e;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->Z0()V

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$f;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->a1()V

    :cond_5
    :goto_0
    return-void
.end method

.method public T0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/s1;
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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Le5/s1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/s1;

    move-result-object p1

    const-string p2, "inflate(layoutInflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final U0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->J0()Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->B()V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    :cond_1
    return-void
.end method

.method public final V0(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;)V
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->l:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    return-void
.end method

.method public final W0(Landroid/os/CountDownTimer;)V
    .locals 0
    .param p1    # Landroid/os/CountDownTimer;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->m:Landroid/os/CountDownTimer;

    return-void
.end method

.method public bridge synthetic e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->J0()Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->T0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/s1;

    move-result-object p1

    return-object p1
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->R0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b;)V

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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->M0()V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;->K0()V

    return-void
.end method
