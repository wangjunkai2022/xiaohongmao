.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$b;
.super Ljava/lang/Object;
.source "SplashActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->values()[Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->Ok:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->Error:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;->Progress:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$b;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel$Event;->values()[Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel$Event;->SHOW_APP_RECOVERED:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel$Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel$Event;->NAVIGATE_AUTH_ACTIVITY:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel$Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel$Event;->NAVIGATE_MAIN_ACTIVITY:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel$Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$b;->$EnumSwitchMapping$1:[I

    return-void
.end method
