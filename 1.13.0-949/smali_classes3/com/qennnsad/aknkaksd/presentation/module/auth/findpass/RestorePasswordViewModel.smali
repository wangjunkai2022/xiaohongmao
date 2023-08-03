.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "RestorePasswordViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\u0006\u0010\"\u001a\u00020\u001f\u0012\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008/\u00100J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0015\u0010\n\u001a\u0004\u0018\u00010\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ&\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tJ\u0016\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tJ \u0010\u0014\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\tJ\u0006\u0010\u0015\u001a\u00020\u0003J\u0006\u0010\u0016\u001a\u00020\u0003R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0011\u0010%\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\"\u0010\'\u001a\u00020&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00061"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b;",
        "",
        "F",
        "",
        "exception",
        "",
        "v",
        "",
        "y",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "countryCode",
        "phone",
        "newPassword",
        "smsCode",
        "E",
        "phoneNumber",
        "z",
        "token",
        "C",
        "A",
        "B",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
        "e",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
        "sendSmsUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;",
        "f",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;",
        "getGraphCaptchaUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;",
        "g",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;",
        "changePasswordUseCase",
        "x",
        "()Ljava/lang/String;",
        "contactUs",
        "Lh5/a;",
        "captchaToken",
        "Lh5/a;",
        "w",
        "()Lh5/a;",
        "D",
        "(Lh5/a;)V",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;Lg5/a;)V",
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
.field private final e:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private i:Lh5/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;Lg5/a;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "sendSmsUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getGraphCaptchaUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changePasswordUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->e:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->h:Lg5/a;

    .line 6
    new-instance p1, Lh5/a;

    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-direct {p1, p2, p3, p4, p3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->i:Lh5/a;

    return-void
.end method

.method private final F()V
    .locals 3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic s(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;Ljava/lang/Throwable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->v(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic t(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic u(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->e:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    return-object p0
.end method

.method private final v(Ljava/lang/Throwable;)Z
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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->i:Lh5/a;

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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->i:Lh5/a;

    return v1

    .line 5
    :cond_1
    new-instance p1, Lh5/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->Graph:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, v1, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->i:Lh5/a;

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->A()V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Lh5/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->H:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, v1, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->i:Lh5/a;

    .line 8
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$d;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$d;

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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->i:Lh5/a;

    .line 11
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/b$e;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method private final y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$a;

    iget v1, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$a;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$a;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p0, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$a;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$a;->d:I

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
    iget-object v0, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->i:Lh5/a;

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


# virtual methods
.method public final A()V
    .locals 3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final B()V
    .locals 4

    new-instance v0, Lh5/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->i:Lh5/a;

    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v7}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final D(Lh5/a;)V
    .locals 1
    .param p1    # Lh5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->i:Lh5/a;

    return-void
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "countryCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPassword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f130320

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f130321

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->o(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;

    invoke-direct {v2, p2, p1, p3, p4}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$d;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;)V

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->h(Lcom/qennnsad/aknkaksd/domain/base/h;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/j2;

    :goto_0
    return-void
.end method

.method public final w()Lh5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->i:Lh5/a;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->h:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->g()Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getContactUs()Ljava/lang/String;

    move-result-object v0

    const-string v1, "localDataManager.getDns().contactUs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v0, "phoneNumber"

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
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->i:Lh5/a;

    invoke-virtual {v0}, Lh5/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->F()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
