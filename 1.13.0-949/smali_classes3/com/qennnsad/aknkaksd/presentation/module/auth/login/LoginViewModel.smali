.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;
.super Lcom/qennnsad/aknkaksd/presentation/common/l;
.source "LoginViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/common/l<",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001BA\u0008\u0007\u0012\u0006\u0010\\\u001a\u00020[\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010-\u001a\u00020*\u0012\u0006\u00101\u001a\u00020.\u0012\u0006\u00105\u001a\u000202\u0012\u0006\u00109\u001a\u000206\u0012\u0006\u0010=\u001a\u00020:\u00a2\u0006\u0004\u0008]\u0010^J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0015\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0006\u0010\u000f\u001a\u00020\u0003J&\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0015J&\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000cJ0\u0010\u001e\u001a\u00020\u00032\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000cJ\u0006\u0010\u001f\u001a\u00020\u0003J\u000e\u0010 \u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\"\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000cJ \u0010$\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000c2\u0008\u0010#\u001a\u0004\u0018\u00010\u000cJ\u0006\u0010%\u001a\u00020\u0003R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\"\u0010D\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u001d\u0010K\u001a\u0008\u0012\u0004\u0012\u00020F0E8\u0006\u00a2\u0006\u000c\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010JR\u0019\u0010Q\u001a\u0004\u0018\u00010L8\u0006\u00a2\u0006\u000c\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010PR\u0011\u0010S\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010AR\"\u0010U\u001a\u00020T8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010Z\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006_"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b;",
        "",
        "I",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;",
        "captchaFor",
        "T",
        "",
        "exception",
        "",
        "A",
        "",
        "E",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "B",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;",
        "forcedServerType",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;",
        "forceServerResolutionHost",
        "testServerDomain",
        "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;",
        "testServerCaptchaType",
        "P",
        "name",
        "countryCode",
        "password",
        "smsCode",
        "L",
        "captcha",
        "J",
        "K",
        "N",
        "username",
        "M",
        "token",
        "Q",
        "O",
        "Lcom/qennnsad/aknkaksd/domain/usecase/app/s;",
        "f",
        "Lcom/qennnsad/aknkaksd/domain/usecase/app/s;",
        "syncConfigUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/a;",
        "g",
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/a;",
        "clearCurrentUserAndReleaseSocketUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;",
        "h",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;",
        "loginUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;",
        "i",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;",
        "loginGuestUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;",
        "j",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;",
        "getGraphCaptchaUseCase",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
        "k",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
        "sendSmsUseCase",
        "l",
        "Z",
        "G",
        "()Z",
        "S",
        "(Z)V",
        "smsRequired",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;",
        "m",
        "Landroidx/lifecycle/MutableLiveData;",
        "D",
        "()Landroidx/lifecycle/MutableLiveData;",
        "config",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;",
        "n",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;",
        "F",
        "()Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;",
        "predefinedCredentials",
        "H",
        "isGuest",
        "Lh5/a;",
        "captchaToken",
        "Lh5/a;",
        "C",
        "()Lh5/a;",
        "R",
        "(Lh5/a;)V",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/s;Lcom/qennnsad/aknkaksd/domain/usecase/user/a;Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;)V",
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
.field private final e:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/qennnsad/aknkaksd/domain/usecase/app/s;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/qennnsad/aknkaksd/domain/usecase/user/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private l:Z

.field private final m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final n:Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private o:Lh5/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/s;Lcom/qennnsad/aknkaksd/domain/usecase/user/a;Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/domain/usecase/app/s;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/domain/usecase/user/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncConfigUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearCurrentUserAndReleaseSocketUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginGuestUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getGraphCaptchaUseCase"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendSmsUseCase"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->e:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/app/s;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/user/a;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->h:Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->i:Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;

    .line 7
    iput-object p6, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->j:Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;

    .line 8
    iput-object p7, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->k:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    .line 9
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 10
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/h;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/h;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/h;->a()Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->n:Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;

    .line 11
    new-instance p1, Lh5/a;

    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-direct {p1, p2, p3, p4, p3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

    .line 12
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$a;

    invoke-direct {p1, p0, p3}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 13
    sget-object p1, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->gameCenterPointsRefreshPending:Z

    .line 14
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->I()V

    return-void
.end method

.method private final A(Ljava/lang/Throwable;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/domain/base/RequestException;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lh5/a;

    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, p2, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

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

    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, p2, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

    return v1

    .line 5
    :cond_1
    new-instance p1, Lh5/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->Graph:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, v1, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

    .line 6
    invoke-virtual {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->N(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Lh5/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->H:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, v1, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

    .line 8
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$d;

    invoke-direct {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->l:Z

    .line 10
    new-instance p1, Lh5/a;

    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, p2, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

    .line 11
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$f;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_4
    new-instance p1, Lh5/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->Re:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    invoke-direct {p1, v1, v3, v2, v3}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

    .line 13
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$e;

    invoke-direct {p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/b$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method private final E(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$d;

    iget v1, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$d;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$d;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$d;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$d;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$d;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

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
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->j:Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p0, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$d;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$d;->d:I

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
    iget-object v0, v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

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

.method private final I()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->e:Lg5/a;

    invoke-virtual {v1}, Lg5/a;->e()Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final T(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V
    .locals 3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$i;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic s(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Ljava/lang/Throwable;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->A(Ljava/lang/Throwable;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic t(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/user/a;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->g:Lcom/qennnsad/aknkaksd/domain/usecase/user/a;

    return-object p0
.end method

.method public static final synthetic u(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->E(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic v(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->i:Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;

    return-object p0
.end method

.method public static final synthetic w(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->h:Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;

    return-object p0
.end method

.method public static final synthetic x(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->k:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    return-object p0
.end method

.method public static final synthetic y(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;)Lcom/qennnsad/aknkaksd/domain/usecase/app/s;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->f:Lcom/qennnsad/aknkaksd/domain/usecase/app/s;

    return-object p0
.end method

.method public static final synthetic z(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->I()V

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$b;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$c;

    invoke-direct {v0, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->j(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method public final C()Lh5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

    return-object v0
.end method

.method public final D()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final F()Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->n:Lcom/qennnsad/aknkaksd/presentation/module/auth/h$a;

    return-object v0
.end method

.method public final G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->l:Z

    return v0
.end method

.method public final H()Z
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->e:Lg5/a;

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

.method public final J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
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
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsCode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v9, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$e;-><init>(Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v9}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final K()V
    .locals 3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
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

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

    invoke-virtual {v0}, Lh5/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->LOGIN:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->T(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final M(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

    invoke-virtual {v0}, Lh5/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;->SMS:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->T(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final N(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "captchaFor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$g;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final O()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->l:Z

    .line 2
    new-instance v0, Lh5/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;->None:Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lh5/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

    return-void
.end method

.method public final P(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "forcedServerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forceServerResolutionHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "testServerDomain"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "testServerCaptchaType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->e:Lg5/a;

    invoke-virtual {v0, p1}, Lg5/a;->b0(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->e:Lg5/a;

    invoke-virtual {p1, p2}, Lg5/a;->c0(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->e:Lg5/a;

    invoke-virtual {p1, p3}, Lg5/a;->o0(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->e:Lg5/a;

    invoke-virtual {p1, p4}, Lg5/a;->n0(Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;)V

    return-void
.end method

.method public final Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$h;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel$h;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v7}, Lcom/qennnsad/aknkaksd/presentation/common/l;->k(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final R(Lh5/a;)V
    .locals 1
    .param p1    # Lh5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->o:Lh5/a;

    return-void
.end method

.method public final S(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;->l:Z

    return-void
.end method
