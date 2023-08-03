.class Lcom/auth0/jwt/f$b;
.super Ljava/lang/Object;
.source "JWTVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/jwt/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/auth0/jwt/f$b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/auth0/jwt/f$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/auth0/jwt/f$b;->a:Lcom/auth0/jwt/f$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/auth0/jwt/f$b;

    invoke-direct {v0}, Lcom/auth0/jwt/f$b;-><init>()V

    sput-object v0, Lcom/auth0/jwt/f$b;->a:Lcom/auth0/jwt/f$b;

    .line 3
    :cond_0
    sget-object v0, Lcom/auth0/jwt/f$b;->a:Lcom/auth0/jwt/f$b;

    return-object v0
.end method
