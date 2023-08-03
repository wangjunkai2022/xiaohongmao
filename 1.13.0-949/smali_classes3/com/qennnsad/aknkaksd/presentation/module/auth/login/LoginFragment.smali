.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;
.super Lcom/qennnsad/aknkaksd/presentation/module/auth/login/a;
.source "LoginFragment.kt"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/a<",
        "Le5/j1;",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;",
        ">;",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,213:1\n106#2,15:214\n65#3,16:229\n93#3,3:245\n254#4,2:248\n254#4,2:250\n254#4,2:252\n254#4,2:254\n254#4,2:256\n*S KotlinDebug\n*F\n+ 1 LoginFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment\n*L\n31#1:214,15\n67#1:229,16\n67#1:245,3\n82#1:248,2\n91#1:250,2\n115#1:252,2\n121#1:254,2\n156#1:256,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008O\u0010PJ\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\u0005H\u0002J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0005H\u0002J\u0008\u0010\u0011\u001a\u00020\u0005H\u0002J\u001a\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u001a\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0003H\u0014J\u0012\u0010\u001f\u001a\u00020\u00052\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\rJ\u0018\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\"\u001a\u00020\u0005H\u0016R\u001b\u0010(\u001a\u00020#8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u00108\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R$\u0010@\u001a\u0004\u0018\u0001098\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001b\u0010D\u001a\u00020A8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010%\u001a\u0004\u0008B\u0010CR\u0014\u0010G\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010FR\u0014\u0010I\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010FR\u001c\u0010L\u001a\n J*\u0004\u0018\u00010\r0\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010FR\u0014\u0010N\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010F\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Le5/j1;",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;",
        "",
        "T0",
        "U0",
        "f1",
        "j1",
        "R0",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;",
        "reason",
        "",
        "image",
        "n1",
        "o1",
        "h1",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "i1",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "e",
        "g1",
        "captchaToken",
        "d1",
        "token",
        "B",
        "o",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "Q0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;",
        "viewModel",
        "Lcom/qennnsad/aknkaksd/util/t0;",
        "l",
        "Lcom/qennnsad/aknkaksd/util/t0;",
        "L0",
        "()Lcom/qennnsad/aknkaksd/util/t0;",
        "l1",
        "(Lcom/qennnsad/aknkaksd/util/t0;)V",
        "networkUtility",
        "Landroid/os/CountDownTimer;",
        "m",
        "Landroid/os/CountDownTimer;",
        "P0",
        "()Landroid/os/CountDownTimer;",
        "m1",
        "(Landroid/os/CountDownTimer;)V",
        "smsTimer",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;",
        "n",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;",
        "J0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;",
        "k1",
        "(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;)V",
        "graphCaptchaDialog",
        "",
        "K0",
        "()Z",
        "keepSession",
        "N0",
        "()Ljava/lang/String;",
        "phone",
        "M0",
        "password",
        "kotlin.jvm.PlatformType",
        "I0",
        "countryCode",
        "O0",
        "smsCode",
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

.field public l:Lcom/qennnsad/aknkaksd/util/t0;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field private m:Landroid/os/CountDownTimer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private n:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final o:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/a;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->k:Lkotlin/Lazy;

    .line 6
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$c;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->o:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic A0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->a1(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->S0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->c1(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->W0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->X0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    return-void
.end method

.method public static synthetic F0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->V0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic G0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)Le5/j1;
    .locals 0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->a0()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Le5/j1;

    return-object p0
.end method

.method public static final synthetic H0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->j1()V

    return-void
.end method

.method private final I0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/j1;

    iget-object v0, v0, Le5/j1;->e:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeWithPlus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final K0()Z
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final M0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/j1;

    iget-object v0, v0, Le5/j1;->g:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

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

.method private final N0()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/j1;

    iget-object v0, v0, Le5/j1;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

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

.method private final O0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/j1;

    iget-object v0, v0, Le5/j1;->h:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

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

.method private final R0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/j1;

    iget-object v0, v0, Le5/j1;->c:Landroid/widget/ImageButton;

    const-string v1, "requireBinding().btnConfigShow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/j1;

    iget-object v0, v0, Le5/j1;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/g;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/g;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final S0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;

    invoke-direct {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "config"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final T0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->K0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;->b()Lcom/qennnsad/aknkaksd/BaseBeautyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->clearXMagicCache()V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Q0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->B()V

    :cond_0
    return-void
.end method

.method private final U0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/j1;

    .line 2
    iget-object v1, v0, Le5/j1;->e:Lcom/hbb20/CountryCodePicker;

    const-string v2, "cn"

    invoke-virtual {v1, v2}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingNameCode(Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Le5/j1;->e:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->O()V

    .line 4
    iget-object v1, v0, Le5/j1;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    const-string v2, ""

    .line 5
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$b;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    .line 7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Q0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->F()Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v3, v0, Le5/j1;->i:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v3, v0, Le5/j1;->g:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_0
    iget-object v1, v0, Le5/j1;->e:Lcom/hbb20/CountryCodePicker;

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/k;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/k;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    invoke-virtual {v1, v3}, Lcom/hbb20/CountryCodePicker;->setOnCountryChangeListener(Lcom/hbb20/CountryCodePicker$h;)V

    .line 12
    iget-object v1, v0, Le5/j1;->m:Landroid/widget/Button;

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/c;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v1, v0, Le5/j1;->j:Landroid/widget/TextView;

    const-string v3, "guestLogin"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object v3

    invoke-virtual {v3}, Lg5/a;->e()Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getGuest()Lcom/qennnsad/aknkaksd/data/bean/GuestConfig;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/GuestConfig;->getStatus()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/16 v3, 0x8

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    .line 14
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v1, v0, Le5/j1;->j:Landroid/widget/TextView;

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/d;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v1, v0, Le5/j1;->b:Landroid/widget/ImageButton;

    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->K0()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    .line 18
    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 19
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/f;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/f;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v1, v0, Le5/j1;->o:Landroid/widget/Button;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/e;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/e;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v1, v0, Le5/j1;->p:Landroid/widget/TextView;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/h;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/h;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v1, v0, Le5/j1;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/j;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/j;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, v0, Le5/j1;->d:Landroid/widget/Button;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/i;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/i;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final V0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "requireContext()"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object p0

    invoke-virtual {p0}, Lg5/a;->g()Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getContactUs()Ljava/lang/String;

    move-result-object v2

    const-string p0, "localDataManager.getDns().contactUs"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;Landroid/content/Context;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method

.method private static final W0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->m:Landroid/os/CountDownTimer;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->N0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Q0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object p1

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->N0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->I0()Ljava/lang/String;

    move-result-object p0

    const-string v1, "countryCode"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->M(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final X0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->j1()V

    return-void
.end method

.method private static final Y0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Q0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->N0()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->I0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "countryCode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->M0()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->O0()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final Z0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->K0()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Q0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->K()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private static final a1(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final b1(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/n;->b()Landroidx/navigation/NavDirections;

    move-result-object p1

    const-string v0, "actionLoginFragmentToSignUpFragment()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private static final c1(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->f1()V

    return-void
.end method

.method public static synthetic e1(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->d1(Ljava/lang/String;)V

    return-void
.end method

.method private final f1()V
    .locals 3

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/n;->a()Landroidx/navigation/NavDirections;

    move-result-object v1

    const-string v2, "actionLoginFragmentToFindPassFragment()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method private final h1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    :cond_1
    return-void
.end method

.method private final j1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Q0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->O()V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/j1;

    iget-object v0, v0, Le5/j1;->l:Landroid/widget/LinearLayout;

    const-string v1, "requireBinding().llSmsInput"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    :cond_1
    return-void
.end method

.method private final n1(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->n:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->n:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;->a0(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->n:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 4
    :cond_2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$f;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->n:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "graph"

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final o1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$g;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$g;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->m:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static synthetic x0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Y0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Z0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->b1(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V
    .locals 3
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
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Q0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object p2

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->N0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->I0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "countryCode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->d1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final J0()Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->n:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    return-object v0
.end method

.method public final L0()Lcom/qennnsad/aknkaksd/util/t0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->l:Lcom/qennnsad/aknkaksd/util/t0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "networkUtility"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final P0()Landroid/os/CountDownTimer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->m:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method public Q0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    return-object v0
.end method

.method public final d1(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Q0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->N0()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->I0()Ljava/lang/String;

    move-result-object v3

    const-string v1, "countryCode"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->M0()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->O0()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Q0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object v0

    return-object v0
.end method

.method protected g1(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$a;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->m:Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;

    invoke-virtual {v0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;->b(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$c;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$c;->e()Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->n1(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$d;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$d;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;)V

    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment$e;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;->c(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$e;

    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$e;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$e;->d()Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "recaptcha"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$f;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->Q0()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object p1

    const v0, 0x7f1303d8

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    .line 11
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->m0()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Le5/j1;

    iget-object p1, p1, Le5/j1;->l:Landroid/widget/LinearLayout;

    const-string v0, "requireBinding().llSmsInput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->o1()V

    goto :goto_0

    .line 14
    :cond_4
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$g;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$g;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->o1()V

    goto :goto_0

    .line 15
    :cond_5
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$b;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$b;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->h1()V

    :cond_6
    :goto_0
    return-void
.end method

.method public i1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/j1;
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

    invoke-static {p1, p2, v0}, Le5/j1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/j1;

    move-result-object p1

    const-string p2, "inflate(layoutInflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final k1(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;)V
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->n:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;

    return-void
.end method

.method public bridge synthetic l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->i1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/j1;

    move-result-object p1

    return-object p1
.end method

.method public final l1(Lcom/qennnsad/aknkaksd/util/t0;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/util/t0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->l:Lcom/qennnsad/aknkaksd/util/t0;

    return-void
.end method

.method public final m1(Landroid/os/CountDownTimer;)V
    .locals 0
    .param p1    # Landroid/os/CountDownTimer;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->m:Landroid/os/CountDownTimer;

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->g1(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;)V

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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->R0()V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->U0()V

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;->T0()V

    return-void
.end method
