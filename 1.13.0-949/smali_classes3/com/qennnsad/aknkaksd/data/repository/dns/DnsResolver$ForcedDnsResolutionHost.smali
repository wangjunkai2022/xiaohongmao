.class public final enum Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;
.super Ljava/lang/Enum;
.source "DnsResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForcedDnsResolutionHost"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getHostName",
        "()Ljava/lang/String;",
        "hostName",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "PROD",
        "DEBUG",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

.field public static final enum PROD:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

.field private static final synthetic b:[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    const-string v1, "PROD"

    const/4 v2, 0x0

    const-string v3, "_sd._tls.api.moonscap.com"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->PROD:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    const-string v3, "_debug._tls.api.moonscap.com"

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->DEBUG:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    invoke-static {}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->a()[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->b:[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->a:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->PROD:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->DEBUG:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;
    .locals 1

    const-class v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    return-object p0
.end method

.method public static values()[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->b:[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    return-object v0
.end method


# virtual methods
.method public final getHostName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;->a:Ljava/lang/String;

    return-object v0
.end method
