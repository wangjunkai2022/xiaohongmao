.class public Lcom/auth0/jwt/exceptions/JWTDecodeException;
.super Lcom/auth0/jwt/exceptions/JWTVerificationException;
.source "JWTDecodeException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/exceptions/JWTVerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
