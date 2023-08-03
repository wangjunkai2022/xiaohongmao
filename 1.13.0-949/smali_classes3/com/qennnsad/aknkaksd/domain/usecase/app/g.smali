.class public final Lcom/qennnsad/aknkaksd/domain/usecase/app/g;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "RequestAppConfigUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "Lkotlin/Unit;",
        "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B1\u0008\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001d\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0015R\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/app/g;",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;",
        "params",
        "Lio/reactivex/z;",
        "e",
        "(Lkotlin/Unit;)Lio/reactivex/z;",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "a",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;",
        "c",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;",
        "dnsResolver",
        "Lcom/qennnsad/aknkaksd/util/t0;",
        "d",
        "Lcom/qennnsad/aknkaksd/util/t0;",
        "networkUtility",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/h;",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/h;",
        "overseasDetector",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "f",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "h",
        "()Lcom/qennnsad/aknkaksd/domain/base/d;",
        "responseMapper",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/util/t0;Lcom/qennnsad/aknkaksd/data/repository/dns/h;)V",
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
.field private final a:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/qennnsad/aknkaksd/util/t0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lcom/qennnsad/aknkaksd/data/repository/dns/h;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/qennnsad/aknkaksd/domain/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/util/t0;Lcom/qennnsad/aknkaksd/data/repository/dns/h;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/qennnsad/aknkaksd/util/t0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/qennnsad/aknkaksd/data/repository/dns/h;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "sourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dnsResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtility"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overseasDetector"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/base/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->b:Lg5/a;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->c:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->d:Lcom/qennnsad/aknkaksd/util/t0;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->e:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    .line 7
    new-instance p1, Lcom/qennnsad/aknkaksd/domain/base/d;

    const-class p3, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    invoke-direct {p1, p3, p2}, Lcom/qennnsad/aknkaksd/domain/base/d;-><init>(Ljava/lang/reflect/Type;Lg5/a;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->f:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->g(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/domain/usecase/app/g;Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->f(Lcom/qennnsad/aknkaksd/domain/usecase/app/g;Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;)V

    return-void
.end method

.method private static final f(Lcom/qennnsad/aknkaksd/domain/usecase/app/g;Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/data/repository/m;->g:Lcom/qennnsad/aknkaksd/data/repository/m$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/repository/m$a;->c()V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->b:Lg5/a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->c:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->l(Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;)Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg5/a;->X(Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->b:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->g()Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getHost()Lcom/qennnsad/aknkaksd/data/bean/HostBean;

    .line 5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getHost()Lcom/qennnsad/aknkaksd/data/bean/HostBean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/HostBean;->getApi()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/HostBean;->getWeb()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    :cond_1
    move-object v2, v1

    .line 9
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->e:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->h(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->d:Lcom/qennnsad/aknkaksd/util/t0;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/util/t0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    :cond_3
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->setHost(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->d:Lcom/qennnsad/aknkaksd/util/t0;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/qennnsad/aknkaksd/util/t0;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->setIp(Ljava/lang/String;)V

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getCustomerService()Lcom/qennnsad/aknkaksd/data/bean/CustomerServiceBean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/CustomerServiceBean;->getContactUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/CustomerServiceBean;->getContactUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->setContactUs(Ljava/lang/String;)V

    .line 18
    :cond_5
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->b:Lg5/a;

    invoke-virtual {p0, v0}, Lg5/a;->a0(Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;)V

    return-void
.end method

.method private static final synthetic g(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/qennnsad/aknkaksd/domain/base/d;->b(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->e(Lkotlin/Unit;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lkotlin/Unit;)Lio/reactivex/z;
    .locals 3
    .param p1    # Lkotlin/Unit;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/z<",
            "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->getAppConfig()Lio/reactivex/z;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->f:Lcom/qennnsad/aknkaksd/domain/base/d;

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/app/f;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/domain/usecase/app/f;-><init>(Lcom/qennnsad/aknkaksd/domain/base/d;)V

    invoke-virtual {p1, v1}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/app/e;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/app/e;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/app/g;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->doOnNext(Ln7/g;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "sourceFactory.create().a\u2026(cachedDnsBean)\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h()Lcom/qennnsad/aknkaksd/domain/base/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;->f:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-object v0
.end method
