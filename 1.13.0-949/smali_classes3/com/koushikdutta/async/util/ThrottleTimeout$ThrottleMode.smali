.class public final enum Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;
.super Ljava/lang/Enum;
.source "ThrottleTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/ThrottleTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThrottleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Collect:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

.field public static final enum Meter:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

.field private static final synthetic a:[Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    const-string v1, "Collect"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;->Collect:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    .line 2
    new-instance v1, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    const-string v3, "Meter"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;->Meter:Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;->a:[Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;
    .locals 1

    const-class v0, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    return-object p0
.end method

.method public static values()[Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;->a:[Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/util/ThrottleTimeout$ThrottleMode;

    return-object v0
.end method
