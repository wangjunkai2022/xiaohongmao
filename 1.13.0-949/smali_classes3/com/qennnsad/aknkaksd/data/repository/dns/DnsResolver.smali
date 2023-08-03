.class public final Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;
.super Ljava/lang/Object;
.source "DnsResolver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;,
        Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;,
        Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;,
        Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$a;,
        Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDnsResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DnsResolver.kt\ncom/qennnsad/aknkaksd/data/repository/dns/DnsResolver\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,267:1\n1549#2:268\n1620#2,3:269\n*S KotlinDebug\n*F\n+ 1 DnsResolver.kt\ncom/qennnsad/aknkaksd/data/repository/dns/DnsResolver\n*L\n187#1:268\n187#1:269,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0085\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u00016\u0008\u0007\u0018\u0000 >2\u00020\u0001:\u0004\"?@AB)\u0008\u0007\u0012\u0006\u0010$\u001a\u00020!\u0012\u0006\u0010(\u001a\u00020%\u0012\u0006\u0010;\u001a\u00020:\u0012\u0006\u0010,\u001a\u00020)\u00a2\u0006\u0004\u0008<\u0010=J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001e\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000e0\u00082\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u000c\u0010\u0011\u001a\u00020\u0006*\u00020\u0010H\u0002J\u000c\u0010\u0013\u001a\u00020\u0006*\u00020\u0012H\u0002J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0008\u0010\u0018\u001a\u00020\u0004H\u0002J\u0008\u0010\u0019\u001a\u00020\u0004H\u0002J\u0008\u0010\u001a\u001a\u00020\u0004H\u0002J\u0008\u0010\u001b\u001a\u00020\u0004H\u0002J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0006\u0010\u001f\u001a\u00020\u0004J\u000e\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R(\u00105\u001a\u0008\u0012\u0004\u0012\u00020.0-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108\u00a8\u0006B"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;",
        "",
        "",
        "isOverseas",
        "",
        "r",
        "Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;",
        "bean",
        "Lio/reactivex/z;",
        "Lretrofit2/Response;",
        "",
        "n",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;",
        "srvHost",
        "",
        "z",
        "Lorg/minidns/hla/d$b;",
        "C",
        "Lorg/minidns/record/u;",
        "D",
        "target",
        "",
        "port",
        "B",
        "k",
        "x",
        "v",
        "w",
        "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;",
        "data",
        "m",
        "q",
        "l",
        "Lcom/qennnsad/aknkaksd/util/t0;",
        "a",
        "Lcom/qennnsad/aknkaksd/util/t0;",
        "networkUtility",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "b",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/h;",
        "d",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/h;",
        "overseasDetector",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "j",
        "()Landroidx/lifecycle/MutableLiveData;",
        "y",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "resultListener",
        "com/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c",
        "f",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;",
        "pingObserver",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/util/t0;Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/dns/h;)V",
        "g",
        "DnsResolutionResult",
        "ForcedDnsResolutionHost",
        "ForcedServerType",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lu7/f;
.end annotation


# static fields
.field public static final g:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final h:Ljava/lang/String; = "DnsResolver"
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/util/t0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private d:Lcom/qennnsad/aknkaksd/data/repository/dns/h;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->g:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$a;

    return-void
.end method

.method public constructor <init>(Lcom/qennnsad/aknkaksd/util/t0;Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/dns/h;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/util/t0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/qennnsad/aknkaksd/data/repository/dns/h;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "networkUtility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overseasDetector"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->a:Lcom/qennnsad/aknkaksd/util/t0;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->c:Lg5/a;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->d:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    .line 6
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->e:Landroidx/lifecycle/MutableLiveData;

    .line 7
    new-instance p1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;-><init>(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->f:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;

    return-void
.end method

.method private static final A(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)Ljava/util/List;
    .locals 4

    const-string v0, "DnsResolver"

    const-string v1, "$srvHost"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lookup against --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lorg/minidns/hla/b;->b:Lorg/minidns/hla/b;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->getHostName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/minidns/hla/b;->e(Ljava/lang/String;)Lorg/minidns/hla/d;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lorg/minidns/hla/c;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All raw answers <-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/minidns/hla/c;->b()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lorg/minidns/hla/c;->b()Ljava/util/Set;

    move-result-object p0

    const-string v1, "it.answersOrEmptySet"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lorg/minidns/record/u;

    const-string v3, "a"

    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->D(Lorg/minidns/record/u;)Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "DNS lookup error"

    .line 11
    invoke-static {v0, v1, p0}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/error/b;->a:Lcom/qennnsad/aknkaksd/analytics/error/b$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/analytics/error/b$a;->a()Lcom/qennnsad/aknkaksd/analytics/error/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/qennnsad/aknkaksd/analytics/error/b;->b(Ljava/lang/Throwable;)V

    .line 13
    invoke-direct {p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->k()V

    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private final B(Ljava/lang/String;I)Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->c:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->g()Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DoH HOST:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DnsResolver"

    invoke-static {v3, v2}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DoH PORT:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->setHost(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->a:Lcom/qennnsad/aknkaksd/util/t0;

    invoke-virtual {v2, p1}, Lcom/qennnsad/aknkaksd/util/t0;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->setIp(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->setPort(Ljava/lang/Integer;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Process Next DoH answer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final C(Lorg/minidns/hla/d$b;)Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;
    .locals 2

    iget-object v0, p1, Lorg/minidns/hla/d$b;->b:Lorg/minidns/record/u;

    iget-object v0, v0, Lorg/minidns/record/u;->f:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0}, Lorg/minidns/dnsname/DnsName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "srv.target.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lorg/minidns/hla/d$b;->b:Lorg/minidns/record/u;

    iget p1, p1, Lorg/minidns/record/u;->e:I

    invoke-direct {p0, v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->B(Ljava/lang/String;I)Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object p1

    return-object p1
.end method

.method private final D(Lorg/minidns/record/u;)Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;
    .locals 2

    iget-object v0, p1, Lorg/minidns/record/u;->f:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0}, Lorg/minidns/dnsname/DnsName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "this.target.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Lorg/minidns/record/u;->e:I

    invoke-direct {p0, v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->B(Ljava/lang/String;I)Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->s(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;Ljava/lang/String;Lretrofit2/Response;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->o(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;Ljava/lang/String;Lretrofit2/Response;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Throwable;)Lio/reactivex/z;
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->p(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->A(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lretrofit2/Response;)Z
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->u(Lretrofit2/Response;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;)Lio/reactivex/e0;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->t(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;)Lio/reactivex/e0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->k()V

    return-void
.end method

.method public static final synthetic h(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->r(Z)V

    return-void
.end method

.method public static final synthetic i(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->x()V

    return-void
.end method

.method private final k()V
    .locals 2

    const-string v0, "Splash"

    const-string v1, "set error"

    .line 1
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->c:Lg5/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg5/a;->a0(Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;)V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->v()V

    return-void
.end method

.method private final m(Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->c:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->g()Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "web"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "http"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getHost()Lcom/qennnsad/aknkaksd/data/bean/HostBean;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/data/bean/HostBean;->setWeb(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final n(Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;)Lio/reactivex/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getHostWithProtocol(Z)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    .line 3
    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/data/repository/b;->ping(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/qennnsad/aknkaksd/data/repository/dns/b;

    invoke-direct {v2, p0, p1, v1}, Lcom/qennnsad/aknkaksd/data/repository/dns/b;-><init>(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lio/reactivex/z;->doOnNext(Ln7/g;)Lio/reactivex/z;

    move-result-object p1

    sget-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/d;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/d;

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/z;->onErrorResumeNext(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "sourceFactory.create()\n \u2026le.empty()\n            })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final o(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;Ljava/lang/String;Lretrofit2/Response;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$bean"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->c:Lg5/a;

    invoke-virtual {p0, p1}, Lg5/a;->a0(Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;)V

    .line 2
    invoke-static {}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getInstance()Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    move-result-object p0

    const-string p1, "api"

    .line 3
    invoke-virtual {p0, p1, p2}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->putDomain(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final p(Ljava/lang/Throwable;)Lio/reactivex/z;
    .locals 2

    const-string v0, "e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ping iterable onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsResolver"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/error/b;->a:Lcom/qennnsad/aknkaksd/analytics/error/b$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/analytics/error/b$a;->a()Lcom/qennnsad/aknkaksd/analytics/error/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/qennnsad/aknkaksd/analytics/error/b;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method private final r(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->c:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->g()Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->c:Lg5/a;

    invoke-virtual {v1}, Lg5/a;->i()Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    move-result-object v1

    sget-object v2, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$b;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const-string v3, "https://api.moonscap.com"

    const/4 v4, 0x0

    const-string v5, "DnsResolver"

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "Not a Chinese Network, setting hardcoded api domain: https://api.moonscap.com"

    .line 3
    invoke-static {v5, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p1, "It\'s likely a Chinese Network, proceed with DOH SRV"

    .line 4
    invoke-static {v5, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Forced out of china network, setting hardcoded api domain: https://api.moonscap.com"

    .line 5
    invoke-static {v5, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "Forced Chinese Network, proceed with DOH SRV"

    .line 6
    invoke-static {v5, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move-object v3, v4

    goto :goto_1

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->a:Lcom/qennnsad/aknkaksd/util/t0;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/util/t0;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dev Server, setting hardcoded api domain: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_1
    invoke-virtual {v0, v3}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->setHost(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->w()V

    .line 11
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getHost()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->c:Lg5/a;

    invoke-virtual {p1}, Lg5/a;->j()Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->z(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;)Lio/reactivex/z;

    move-result-object p1

    sget-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/e;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/e;

    .line 13
    invoke-virtual {p1, v0}, Lio/reactivex/z;->flatMapIterable(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/c;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/c;-><init>(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->flatMap(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    sget-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/f;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/f;

    .line 15
    invoke-virtual {p1, v0}, Lio/reactivex/z;->takeUntil(Ln7/r;)Lio/reactivex/z;

    move-result-object p1

    goto :goto_2

    .line 16
    :cond_5
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->n(Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;)Lio/reactivex/z;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 17
    :goto_2
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->observeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->f:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$c;

    invoke-virtual {p1, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method

.method private static final s(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final t(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;)Lio/reactivex/e0;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->n(Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method private static final u(Lretrofit2/Response;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    return p0
.end method

.method private final v()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->e:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->Error:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final w()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->e:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->Progress:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final x()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->e:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->Ok:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final z(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le9/a;->d(Landroid/content/Context;)Le9/a;

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/a;

    invoke-direct {v0, p1, p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/a;-><init>(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V

    invoke-static {v0}, Lio/reactivex/z;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/b;->d()Lio/reactivex/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "fromCallable {\n         \u2026scribeOn(Schedulers.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final j()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->e:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final l(Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;)Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->d:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->h(Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->a:Lcom/qennnsad/aknkaksd/util/t0;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/util/t0;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getHost()Lcom/qennnsad/aknkaksd/data/bean/HostBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/HostBean;->setApi(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->a:Lcom/qennnsad/aknkaksd/util/t0;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/util/t0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/HostBean;->setStatic(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->a:Lcom/qennnsad/aknkaksd/util/t0;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/util/t0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/HostBean;->setWeb(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->a:Lcom/qennnsad/aknkaksd/util/t0;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/util/t0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/HostBean;->setWebsocket(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getHost()Lcom/qennnsad/aknkaksd/data/bean/HostBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "https://api.moonscap.com"

    .line 10
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/HostBean;->setApi(Ljava/lang/String;)V

    const-string v2, "https://static.moonscap.com"

    .line 11
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/HostBean;->setStatic(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/HostBean;->setWeb(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/HostBean;->setWebsocket(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final q()V
    .locals 2

    const-string v0, "DnsResolver"

    const-string v1, "Resolving DNS..."

    .line 1
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->d:Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    new-instance v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$d;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$d;-><init>(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;->g(Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method

.method public final y(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->e:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
