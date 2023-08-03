.class public final enum Lcom/giphy/sdk/ui/pagination/Status;
.super Ljava/lang/Enum;
.source "NetworkState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/giphy/sdk/ui/pagination/Status;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/pagination/Status;",
        "",
        "(Ljava/lang/String;I)V",
        "RUNNING",
        "RUNNING_INITIAL",
        "SUCCESS",
        "SUCCESS_INITIAL",
        "FAILED",
        "FAILED_INITIAL",
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
.field public static final enum FAILED:Lcom/giphy/sdk/ui/pagination/Status;

.field public static final enum FAILED_INITIAL:Lcom/giphy/sdk/ui/pagination/Status;

.field public static final enum RUNNING:Lcom/giphy/sdk/ui/pagination/Status;

.field public static final enum RUNNING_INITIAL:Lcom/giphy/sdk/ui/pagination/Status;

.field public static final enum SUCCESS:Lcom/giphy/sdk/ui/pagination/Status;

.field public static final enum SUCCESS_INITIAL:Lcom/giphy/sdk/ui/pagination/Status;

.field private static final synthetic a:[Lcom/giphy/sdk/ui/pagination/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/giphy/sdk/ui/pagination/Status;

    new-instance v1, Lcom/giphy/sdk/ui/pagination/Status;

    const-string v2, "RUNNING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/ui/pagination/Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/ui/pagination/Status;->RUNNING:Lcom/giphy/sdk/ui/pagination/Status;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/pagination/Status;

    const-string v2, "RUNNING_INITIAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/ui/pagination/Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/ui/pagination/Status;->RUNNING_INITIAL:Lcom/giphy/sdk/ui/pagination/Status;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/pagination/Status;

    const-string v2, "SUCCESS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/ui/pagination/Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/ui/pagination/Status;->SUCCESS:Lcom/giphy/sdk/ui/pagination/Status;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/pagination/Status;

    const-string v2, "SUCCESS_INITIAL"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/ui/pagination/Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/ui/pagination/Status;->SUCCESS_INITIAL:Lcom/giphy/sdk/ui/pagination/Status;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/pagination/Status;

    const-string v2, "FAILED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/ui/pagination/Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/ui/pagination/Status;->FAILED:Lcom/giphy/sdk/ui/pagination/Status;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/pagination/Status;

    const-string v2, "FAILED_INITIAL"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/giphy/sdk/ui/pagination/Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/giphy/sdk/ui/pagination/Status;->FAILED_INITIAL:Lcom/giphy/sdk/ui/pagination/Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/giphy/sdk/ui/pagination/Status;->a:[Lcom/giphy/sdk/ui/pagination/Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/giphy/sdk/ui/pagination/Status;
    .locals 1

    const-class v0, Lcom/giphy/sdk/ui/pagination/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/giphy/sdk/ui/pagination/Status;

    return-object p0
.end method

.method public static values()[Lcom/giphy/sdk/ui/pagination/Status;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/ui/pagination/Status;->a:[Lcom/giphy/sdk/ui/pagination/Status;

    invoke-virtual {v0}, [Lcom/giphy/sdk/ui/pagination/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/giphy/sdk/ui/pagination/Status;

    return-object v0
.end method
