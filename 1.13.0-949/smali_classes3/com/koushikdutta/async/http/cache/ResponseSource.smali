.class final enum Lcom/koushikdutta/async/http/cache/ResponseSource;
.super Ljava/lang/Enum;
.source "ResponseSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/async/http/cache/ResponseSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/koushikdutta/async/http/cache/ResponseSource;

.field public static final enum b:Lcom/koushikdutta/async/http/cache/ResponseSource;

.field public static final enum c:Lcom/koushikdutta/async/http/cache/ResponseSource;

.field private static final synthetic d:[Lcom/koushikdutta/async/http/cache/ResponseSource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseSource;

    const-string v1, "CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/cache/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->a:Lcom/koushikdutta/async/http/cache/ResponseSource;

    .line 2
    new-instance v1, Lcom/koushikdutta/async/http/cache/ResponseSource;

    const-string v3, "CONDITIONAL_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/koushikdutta/async/http/cache/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/koushikdutta/async/http/cache/ResponseSource;->b:Lcom/koushikdutta/async/http/cache/ResponseSource;

    .line 3
    new-instance v3, Lcom/koushikdutta/async/http/cache/ResponseSource;

    const-string v5, "NETWORK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/koushikdutta/async/http/cache/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/koushikdutta/async/http/cache/ResponseSource;->c:Lcom/koushikdutta/async/http/cache/ResponseSource;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/koushikdutta/async/http/cache/ResponseSource;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/koushikdutta/async/http/cache/ResponseSource;->d:[Lcom/koushikdutta/async/http/cache/ResponseSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/cache/ResponseSource;
    .locals 1

    const-class v0, Lcom/koushikdutta/async/http/cache/ResponseSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/http/cache/ResponseSource;

    return-object p0
.end method

.method public static values()[Lcom/koushikdutta/async/http/cache/ResponseSource;
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->d:[Lcom/koushikdutta/async/http/cache/ResponseSource;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/cache/ResponseSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/cache/ResponseSource;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->b:Lcom/koushikdutta/async/http/cache/ResponseSource;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->c:Lcom/koushikdutta/async/http/cache/ResponseSource;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
