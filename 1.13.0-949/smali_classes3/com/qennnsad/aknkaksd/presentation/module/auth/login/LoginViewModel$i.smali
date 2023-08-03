.class final Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->T(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/s0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginViewModel.kt\ncom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$showCaptcha$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/s0;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel$showCaptcha$1"
    f = "LoginViewModel.kt"
    i = {}
    l = {
        0x73
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

.field final synthetic c:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    invoke-direct {p1, v0, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->C()Lh5/a;

    move-result-object p1

    invoke-virtual {p1}, Lh5/a;->b()Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    move-result-object p1

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v3, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    iput v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->a:I

    invoke-static {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->u(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    .line 6
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$c;

    invoke-direct {v1, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_1

    .line 7
    :cond_4
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$d;

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    invoke-direct {v2, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V

    goto :goto_1

    .line 8
    :cond_5
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$e;

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    invoke-direct {v2, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    .line 9
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    invoke-virtual {p1, v2}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    .line 10
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
