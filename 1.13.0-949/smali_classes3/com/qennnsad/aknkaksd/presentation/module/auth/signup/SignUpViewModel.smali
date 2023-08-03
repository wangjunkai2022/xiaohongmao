.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "SignUpViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010$\u001a\u00020!\u0012\u0006\u0010(\u001a\u00020%\u0012\u0006\u0010,\u001a\u00020)\u0012\u0006\u0010G\u001a\u00020F\u00a2\u0006\u0004\u0008H\u0010IJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0015\u0010\n\u001a\u0004\u0018\u00010\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001e\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tJ\u0016\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tJ \u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\tJ\u0006\u0010\u0014\u001a\u00020\u0007J\u0006\u0010\u0015\u001a\u00020\u0007J&\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0019J\u001e\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0019R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R$\u00103\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R$\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u0010.\u001a\u0004\u00085\u00100\"\u0004\u00086\u00102R$\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010.\u001a\u0004\u00088\u00100\"\u0004\u00089\u00102R\"\u0010;\u001a\u00020:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u0011\u0010C\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010BR\u0011\u0010E\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008D\u00100\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006J"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/h;",
        "",
        "exception",
        "",
        "x",
        "",
        "Q",
        "",
        "C",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "countryCode",
        "phone",
        "smsCode",
        "F",
        "H",
        "phoneNumber",
        "token",
        "L",
        "J",
        "K",
        "nickname",
        "password",
        "repeatedPassword",
        "",
        "biospeed",
        "G",
        "I",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;",
        "e",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;",
        "getGraphCaptchaUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
        "f",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
        "sendSmsUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;",
        "g",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;",
        "registerUserUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;",
        "h",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;",
        "linkGuestUseCase",
        "j",
        "Ljava/lang/String;",
        "B",
        "()Ljava/lang/String;",
        "O",
        "(Ljava/lang/String;)V",
        "currentPhone",
        "k",
        "D",
        "P",
        "l",
        "A",
        "N",
        "Lh5/a;",
        "captchaToken",
        "Lh5/a;",
        "y",
        "()Lh5/a;",
        "M",
        "(Lh5/a;)V",
        "E",
        "()Z",
        "isGuest",
        "z",
        "contactUs",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;Lg5/a;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation build Ll6/a;
.end annotation


# instance fields
.field private final e:Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private m:Lh5/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;Lg5/a;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "getGraphCaptchaUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendSmsUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registerUserUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkGuestUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->e:Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->h:Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->i:Lg5/a;

    .line 7
    new-instance p1, Lh5/a;

    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-direct {p1, p2, p3, p4, p3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->m:Lh5/a;

    return-void
.end method

.method private final C(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;

    iget v1, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->e:Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p0, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;->d:I

    invoke-virtual {p1, v2, v0}, Lcom/qennnsad/aknkaksd/domain/base/h;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/user/LoginGCaptchaBean;

    .line 5
    iget-object v0, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->m:Lh5/a;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginGCaptchaBean;->getCaptchaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh5/a;->e(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginGCaptchaBean;->getCaptchaImage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private final Q()V
    .locals 3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic s(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;Ljava/lang/Throwable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->x(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic t(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->C(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic u(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->h:Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;

    return-object p0
.end method

.method public static final synthetic v(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;

    return-object p0
.end method

.method public static final synthetic w(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    return-object p0
.end method

.method private final x(Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/domain/base/RequestException;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lh5/a;

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, v0, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->m:Lh5/a;

    return v1

    .line 3
    :cond_0
    check-cast p1, Lcom/qennnsad/aknkaksd/domain/base/RequestException;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/base/RequestException;->getResponse()Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getCode()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    .line 4
    new-instance p1, Lh5/a;

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, v0, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->m:Lh5/a;

    return v1

    .line 5
    :cond_1
    new-instance p1, Lh5/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->Graph:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, v1, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->m:Lh5/a;

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->J()V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Lh5/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->H:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, v1, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->m:Lh5/a;

    .line 8
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/h$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/h$f;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Weird. Sms is required for send sms"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$b;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_4
    new-instance p1, Lh5/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->Re:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, v1, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->m:Lh5/a;

    .line 11
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/h$g;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/h$g;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_5
    return v1
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Z
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->i:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "countryCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f130320

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f130321

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    goto :goto_0

    .line 3
    :cond_1
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->j:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->l:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->k:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/h$b;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/h$b;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "nickname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repeatedPassword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->E()Z

    move-result v0

    if-nez v0, :cond_1

    const p1, 0x7f13034f

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    goto :goto_2

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->E()Z

    move-result v0

    if-nez v0, :cond_2

    const p1, 0x7f130350

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    goto :goto_2

    .line 3
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    const p1, 0x7f130310

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    goto :goto_2

    .line 4
    :cond_4
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    const p1, 0x7f130359

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    goto :goto_2

    .line 5
    :cond_5
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->I(Ljava/lang/String;Ljava/lang/String;D)V

    :goto_2
    return-void
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "countryCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f130322

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->m:Lh5/a;

    invoke-virtual {v0}, Lh5/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->Q()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "nickname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;Ljava/lang/String;Ljava/lang/String;DLkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v8}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final J()V
    .locals 3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final K()V
    .locals 4

    new-instance v0, Lh5/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->m:Lh5/a;

    return-void
.end method

.method public final L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "countryCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$d;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v7}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final M(Lh5/a;)V
    .locals 1
    .param p1    # Lh5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->m:Lh5/a;

    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->l:Ljava/lang/String;

    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->j:Ljava/lang/String;

    return-void
.end method

.method public final P(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->k:Ljava/lang/String;

    return-void
.end method

.method public final y()Lh5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->m:Lh5/a;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->i:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->g()Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getContactUs()Ljava/lang/String;

    move-result-object v0

    const-string v1, "localDataManager.getDns().contactUs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
