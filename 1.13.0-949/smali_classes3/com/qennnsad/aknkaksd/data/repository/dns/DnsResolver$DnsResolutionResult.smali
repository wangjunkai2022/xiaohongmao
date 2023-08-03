.class public final enum Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;
.super Ljava/lang/Enum;
.source "DnsResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DnsResolutionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;",
        "",
        "(Ljava/lang/String;I)V",
        "Ok",
        "Error",
        "Progress",
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
.field public static final enum Error:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

.field public static final enum Ok:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

.field public static final enum Progress:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

.field private static final synthetic a:[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    const-string v1, "Ok"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->Ok:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    const-string v1, "Error"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->Error:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    const-string v1, "Progress"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->Progress:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    invoke-static {}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->a()[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->a:[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

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

.method private static final synthetic a()[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->Ok:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->Error:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->Progress:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;
    .locals 1

    const-class v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    return-object p0
.end method

.method public static values()[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->a:[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    return-object v0
.end method
