.class public final enum Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;
.super Ljava/lang/Enum;
.source "DnsResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForcedServerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "TEST",
        "IN_CHINA",
        "OUT_OF_CHINA",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum IN_CHINA:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

.field public static final enum NONE:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

.field public static final enum OUT_OF_CHINA:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

.field public static final enum TEST:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

.field private static final synthetic a:[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->NONE:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    const-string v1, "TEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->TEST:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    const-string v1, "IN_CHINA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->IN_CHINA:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    const-string v1, "OUT_OF_CHINA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->OUT_OF_CHINA:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    invoke-static {}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->a()[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->a:[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->NONE:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->TEST:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->IN_CHINA:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->OUT_OF_CHINA:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;
    .locals 1

    const-class v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    return-object p0
.end method

.method public static values()[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;->a:[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;

    return-object v0
.end method
