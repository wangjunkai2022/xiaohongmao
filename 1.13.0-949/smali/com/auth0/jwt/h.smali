.class abstract Lcom/auth0/jwt/h;
.super Ljava/lang/Object;
.source "TokenUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    const-string v0, "\\."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-array p0, v2, [Ljava/lang/String;

    .line 3
    aget-object v1, v0, v4

    aput-object v1, p0, v4

    aget-object v0, v0, v5

    aput-object v0, p0, v5

    const-string v0, ""

    aput-object v0, p0, v3

    move-object v0, p0

    .line 4
    :cond_0
    array-length p0, v0

    if-ne p0, v2, :cond_1

    return-object v0

    .line 5
    :cond_1
    new-instance p0, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    new-array v1, v5, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "The token was expected to have 3 parts, but got %s."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
