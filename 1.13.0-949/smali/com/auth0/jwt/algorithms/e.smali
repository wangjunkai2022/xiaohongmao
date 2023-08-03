.class Lcom/auth0/jwt/algorithms/e;
.super Lcom/auth0/jwt/algorithms/a;
.source "NoneAlgorithm.java"


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "none"

    invoke-direct {p0, v0, v0}, Lcom/auth0/jwt/algorithms/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public E([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public F([B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public G(Lcom/auth0/jwt/interfaces/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureVerificationException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/c;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/d;->x(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    array-length p1, p1

    if-gtz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/auth0/jwt/exceptions/SignatureVerificationException;

    invoke-direct {p1, p0}, Lcom/auth0/jwt/exceptions/SignatureVerificationException;-><init>(Lcom/auth0/jwt/algorithms/a;)V

    throw p1
.end method
