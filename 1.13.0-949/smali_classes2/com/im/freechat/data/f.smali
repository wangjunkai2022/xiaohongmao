.class public final Lcom/im/freechat/data/f;
.super Ljava/lang/Object;
.source "LoginRepositoryImpl.kt"

# interfaces
.implements Lcom/im/freechat/domain/k;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ApplySharedPref"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010>\u001a\u00020<\u0012\u0006\u0010A\u001a\u00020?\u0012\u0006\u0010D\u001a\u00020B\u0012\u0006\u0010G\u001a\u00020E\u00a2\u0006\u0004\u0008K\u0010LJ\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J7\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\n\u0010\u0010\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\tH\u0016J\u0013\u0010\u0013\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u000cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017JU\u0010 \u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\t2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u001eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!J\u0013\u0010\"\u001a\u00020\u000cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010\u0014J\u0008\u0010#\u001a\u00020\u0007H\u0016J\u0013\u0010$\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008$\u0010\u0014J\u0013\u0010%\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010\u0014J\u001b\u0010\'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(J\u000e\u0010+\u001a\u0008\u0012\u0004\u0012\u00020*0)H\u0016J\u0013\u0010,\u001a\u00020\rH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010\u0014J\u001b\u0010.\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\rH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010/J\u0008\u00100\u001a\u00020\rH\u0016J\u001b\u00101\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\rH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00081\u0010/J\u0008\u00102\u001a\u00020\rH\u0016J\u001b\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u0007H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105J\u0008\u00106\u001a\u00020\u0007H\u0016J\n\u00107\u001a\u0004\u0018\u00010\tH\u0016J\u0013\u00108\u001a\u00020\u001eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u0010\u0014J\u001b\u0010:\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u001eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008:\u0010;R\u0014\u0010>\u001a\u00020<8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010=R\u0014\u0010A\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010@R\u0014\u0010D\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010CR\u0014\u0010G\u001a\u00020E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010FR\u001a\u0010J\u001a\u0008\u0012\u0004\u0012\u00020*0H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010I\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006M"
    }
    d2 = {
        "Lcom/im/freechat/data/f;",
        "Lcom/im/freechat/domain/k;",
        "Lcom/im/freechat/shared/entities/auth/PhoneNumber;",
        "phoneNumber",
        "",
        "b",
        "(Lcom/im/freechat/shared/entities/auth/PhoneNumber;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "smsCode",
        "",
        "deviceId",
        "Lkotlin/Pair;",
        "Lcom/im/freechat/shared/entities/auth/UserInfo;",
        "",
        "f",
        "(Lcom/im/freechat/shared/entities/auth/PhoneNumber;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "m",
        "token",
        "g",
        "c",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "userInfo",
        "p",
        "(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "nickName",
        "avatar",
        "userId",
        "role",
        "isMystery",
        "imToken",
        "",
        "lastSeen",
        "j",
        "(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "v",
        "n",
        "t",
        "q",
        "code",
        "a",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/i;",
        "Lcom/im/freechat/shared/entities/LoginState;",
        "i",
        "h",
        "enabled",
        "d",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "e",
        "r",
        "k",
        "height",
        "l",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "o",
        "u",
        "w",
        "time",
        "s",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/data/sources/api/ApiService;",
        "Lcom/im/freechat/data/sources/api/ApiService;",
        "apiService",
        "Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;",
        "Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;",
        "userResponseMapper",
        "Landroid/content/SharedPreferences;",
        "Landroid/content/SharedPreferences;",
        "authSharedPreferences",
        "Lcom/im/freechat/domain/o;",
        "Lcom/im/freechat/domain/o;",
        "phoneUtil",
        "Lkotlinx/coroutines/flow/t;",
        "Lkotlinx/coroutines/flow/t;",
        "loginStatusFlow",
        "<init>",
        "(Lcom/im/freechat/data/sources/api/ApiService;Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;Landroid/content/SharedPreferences;Lcom/im/freechat/domain/o;)V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/im/freechat/data/sources/api/ApiService;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Landroid/content/SharedPreferences;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/domain/o;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lkotlinx/coroutines/flow/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/t<",
            "Lcom/im/freechat/shared/entities/LoginState;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/data/sources/api/ApiService;Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;Landroid/content/SharedPreferences;Lcom/im/freechat/domain/o;)V
    .locals 1
    .param p1    # Lcom/im/freechat/data/sources/api/ApiService;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/content/SharedPreferences;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/domain/o;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "apiService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userResponseMapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authSharedPreferences"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneUtil"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/f;->a:Lcom/im/freechat/data/sources/api/ApiService;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/f;->b:Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/f;->d:Lcom/im/freechat/domain/o;

    .line 6
    sget-object p1, Lcom/im/freechat/shared/entities/AwaitingLogin;->INSTANCE:Lcom/im/freechat/shared/entities/AwaitingLogin;

    invoke-static {p1}, Lkotlinx/coroutines/flow/j0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/t;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/data/f;->e:Lkotlinx/coroutines/flow/t;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "countryCode"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public b(Lcom/im/freechat/shared/entities/auth/PhoneNumber;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lcom/im/freechat/shared/entities/auth/PhoneNumber;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/shared/entities/auth/PhoneNumber;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/f$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/f$b;

    iget v1, v0, Lcom/im/freechat/data/f$b;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/f$b;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/f$b;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/f$b;-><init>(Lcom/im/freechat/data/f;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/f$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/f$b;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/f;->a:Lcom/im/freechat/data/sources/api/ApiService;

    .line 5
    new-instance v2, Lcom/im/freechat/data/sources/api/entities/auth/RequestSmsBody;

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "+"

    const-string v6, ""

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {v2, v4, p1}, Lcom/im/freechat/data/sources/api/entities/auth/RequestSmsBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iput v3, v0, Lcom/im/freechat/data/f$b;->c:I

    invoke-interface {p2, v2, v0}, Lcom/im/freechat/data/sources/api/ApiService;->requestSMS(Lcom/im/freechat/data/sources/api/entities/auth/RequestSmsBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 10
    :cond_3
    :goto_1
    check-cast p2, Lcom/im/freechat/data/sources/api/entities/Response;

    .line 11
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/api/entities/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 13
    :cond_4
    new-instance p1, Lcom/im/freechat/shared/entities/ApiException;

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/api/entities/Response;->getCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/im/freechat/data/sources/api/entities/Response;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/im/freechat/shared/entities/ApiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
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

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    const-string v0, "deviceUUID"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "it"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public d(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "notificationsOn"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "notificationsOn"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f(Lcom/im/freechat/shared/entities/auth/PhoneNumber;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .param p1    # Lcom/im/freechat/shared/entities/auth/PhoneNumber;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/shared/entities/auth/PhoneNumber;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Lcom/im/freechat/shared/entities/auth/UserInfo;",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/im/freechat/data/f$c;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/data/f$c;

    iget v3, v2, Lcom/im/freechat/data/f$c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/im/freechat/data/f$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/im/freechat/data/f$c;

    invoke-direct {v2, p0, v1}, Lcom/im/freechat/data/f$c;-><init>(Lcom/im/freechat/data/f;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/im/freechat/data/f$c;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lcom/im/freechat/data/f$c;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lcom/im/freechat/data/f$c;->b:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/shared/entities/auth/PhoneNumber;

    iget-object v2, v2, Lcom/im/freechat/data/f$c;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/f;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/im/freechat/data/f;->e:Lkotlinx/coroutines/flow/t;

    sget-object v4, Lcom/im/freechat/shared/entities/AwaitingLogin;->INSTANCE:Lcom/im/freechat/shared/entities/AwaitingLogin;

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-object v1, v0, Lcom/im/freechat/data/f;->a:Lcom/im/freechat/data/sources/api/ApiService;

    .line 6
    new-instance v4, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "+"

    const-string v8, ""

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0x10

    const/4 v13, 0x0

    move-object v6, v4

    move/from16 v9, p2

    move-object/from16 v10, p3

    .line 9
    invoke-direct/range {v6 .. v13}, Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    iput-object v0, v2, Lcom/im/freechat/data/f$c;->a:Ljava/lang/Object;

    move-object v6, p1

    iput-object v6, v2, Lcom/im/freechat/data/f$c;->b:Ljava/lang/Object;

    iput v5, v2, Lcom/im/freechat/data/f$c;->e:I

    invoke-interface {v1, v4, v2}, Lcom/im/freechat/data/sources/api/ApiService;->signInBySms(Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    move-object v2, v0

    move-object v3, v6

    .line 11
    :goto_1
    check-cast v1, Lcom/im/freechat/data/sources/api/entities/Response;

    .line 12
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/Response;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;

    if-eqz v4, :cond_5

    .line 13
    iget-object v6, v2, Lcom/im/freechat/data/f;->e:Lkotlinx/coroutines/flow/t;

    sget-object v7, Lcom/im/freechat/shared/entities/LoggedIn;->INSTANCE:Lcom/im/freechat/shared/entities/LoggedIn;

    invoke-interface {v6, v7}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    .line 14
    new-instance v6, Lkotlin/Pair;

    .line 15
    iget-object v2, v2, Lcom/im/freechat/data/f;->b:Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/auth/PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/auth/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 17
    invoke-virtual {v2, v4, v3, v7}, Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;->map(Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;Ljava/lang/String;Z)Lcom/im/freechat/shared/entities/auth/UserInfo;

    move-result-object v2

    .line 18
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/Response;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;->getFirstLogin()I

    move-result v1

    if-ne v1, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 19
    invoke-direct {v6, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 20
    :cond_5
    iget-object v2, v2, Lcom/im/freechat/data/f;->e:Lkotlinx/coroutines/flow/t;

    sget-object v3, Lcom/im/freechat/shared/entities/LoggedOut;->INSTANCE:Lcom/im/freechat/shared/entities/LoggedOut;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    .line 21
    new-instance v2, Lcom/im/freechat/shared/entities/ApiException;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/Response;->getCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/Response;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/im/freechat/shared/entities/ApiException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public g(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/f;->e:Lkotlinx/coroutines/flow/t;

    sget-object v1, Lcom/im/freechat/shared/entities/AwaitingLogin;->INSTANCE:Lcom/im/freechat/shared/entities/AwaitingLogin;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "imToken"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public h(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p1, Lcom/im/freechat/data/f$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/im/freechat/data/f$a;

    iget v1, v0, Lcom/im/freechat/data/f$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/f$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/f$a;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/f$a;-><init>(Lcom/im/freechat/data/f;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/im/freechat/data/f$a;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/f$a;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Lcom/im/freechat/data/f$a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/im/freechat/data/f;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_3

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
    :try_start_1
    iput-object p0, v0, Lcom/im/freechat/data/f$a;->a:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/f$a;->d:I

    invoke-virtual {p0, v0}, Lcom/im/freechat/data/f;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    :try_start_2
    check-cast p1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getUserId()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getImToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :catch_1
    move-object v0, p0

    .line 7
    :cond_5
    :goto_3
    iget-object p1, v0, Lcom/im/freechat/data/f;->e:Lkotlinx/coroutines/flow/t;

    if-eqz v3, :cond_6

    sget-object v0, Lcom/im/freechat/shared/entities/LoggedIn;->INSTANCE:Lcom/im/freechat/shared/entities/LoggedIn;

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/im/freechat/shared/entities/LoggedOut;->INSTANCE:Lcom/im/freechat/shared/entities/LoggedOut;

    :goto_4
    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    .line 8
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public i()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/shared/entities/LoginState;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/f;->e:Lkotlinx/coroutines/flow/t;

    return-object v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p10    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object v0, p0

    .line 1
    new-instance v11, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;

    const/4 v8, 0x0

    move-object v1, v11

    move v2, p3

    move-object v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v6, p2

    move/from16 v7, p4

    move-wide/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 2
    iget-object v1, v0, Lcom/im/freechat/data/f;->b:Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;

    const-string v2, ""

    move/from16 v3, p5

    invoke-virtual {v1, v11, v2, v3}, Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;->map(Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;Ljava/lang/String;Z)Lcom/im/freechat/shared/entities/auth/UserInfo;

    move-result-object v1

    move-object/from16 v2, p10

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/im/freechat/data/f;->p(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public k()Z
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "soundOn"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "keyboardHeight"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "imToken"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "userID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "keyboardHeight"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public p(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/im/freechat/shared/entities/auth/UserInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/shared/entities/auth/UserInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getUserId()I

    move-result v0

    const-string v1, "userID"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nickname"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const-string v1, "avatar"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getImToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imToken"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "token"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phoneNumber"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "managementRole"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getBio()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bio"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getLastOnline()J

    move-result-wide v0

    const-string v2, "last_online"

    invoke-interface {p2, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->isMystery()Z

    move-result p1

    const-string v0, "is_mystery"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
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

    .annotation build Lm8/h;
    .end annotation

    iget-object p1, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/im/freechat/data/f;->d:Lcom/im/freechat/domain/o;

    invoke-interface {v0}, Lcom/im/freechat/domain/o;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "countryCode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public r(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "soundOn"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v0, "lastSyncTime"

    invoke-interface {p3, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/im/freechat/data/f;->e:Lkotlinx/coroutines/flow/t;

    sget-object v0, Lcom/im/freechat/shared/entities/LoggedOut;->INSTANCE:Lcom/im/freechat/shared/entities/LoggedOut;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "userID"

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "nickname"

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "avatar"

    .line 5
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "imToken"

    .line 6
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "token"

    .line 7
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "phoneNumber"

    .line 8
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "bio"

    .line 9
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public u()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "bio"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/auth/UserInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    const-string v0, "userID"

    const/4 v1, 0x0

    .line 2
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "nickname"

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v0, "token"

    .line 4
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v0, "imToken"

    .line 5
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v0, "avatar"

    .line 6
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "phoneNumber"

    .line 7
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "bio"

    .line 8
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 9
    sget-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v9, "managementRole"

    invoke-interface {p1, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v0, "getString(PREF_MANAGEMEN\u2026anagementRole.NORMAL.name"

    .line 11
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v2}, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->valueOf(Ljava/lang/String;)Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v9

    const-wide v10, 0x7fffffffffffffffL

    const-string v0, "last_online"

    .line 13
    invoke-interface {p1, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v0, "is_mystery"

    .line 14
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 15
    new-instance p1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    const-string v0, "getString(PREF_NICKNAME,\u2026 NoSuchElementException()"

    .line 16
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getString(PREF_TOKEN, nu\u2026 NoSuchElementException()"

    .line 17
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getString(PREF_IM_TOKEN,\u2026 NoSuchElementException()"

    .line 18
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    .line 19
    invoke-direct/range {v2 .. v13}, Lcom/im/freechat/shared/entities/auth/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;)V

    return-object p1

    .line 20
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 22
    :cond_3
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object p1, p0, Lcom/im/freechat/data/f;->c:Landroid/content/SharedPreferences;

    const-string v0, "lastSyncTime"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
