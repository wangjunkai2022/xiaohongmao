.class public final enum Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;
.super Ljava/lang/Enum;
.source "GPHApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/core/network/api/GPHApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTPMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;",
        "",
        "(Ljava/lang/String;I)V",
        "GET",
        "POST",
        "PUT",
        "DELETE",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

.field public static final enum GET:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

.field public static final enum POST:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

.field public static final enum PUT:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

.field private static final synthetic a:[Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    new-instance v1, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->GET:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    const-string v2, "POST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->POST:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    const-string v2, "PUT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->PUT:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    const-string v2, "DELETE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->DELETE:Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->a:[Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;
    .locals 1

    const-class v0, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    return-object p0
.end method

.method public static values()[Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->a:[Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    invoke-virtual {v0}, [Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;

    return-object v0
.end method
