.class Lcom/auth0/jwt/algorithms/d;
.super Lcom/auth0/jwt/algorithms/a;
.source "HMACAlgorithm.java"


# instance fields
.field private final c:Lcom/auth0/jwt/algorithms/b;

.field private final d:[B


# direct methods
.method constructor <init>(Lcom/auth0/jwt/algorithms/b;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/auth0/jwt/algorithms/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 2
    array-length p2, p4

    invoke-static {p4, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, p0, Lcom/auth0/jwt/algorithms/d;->d:[B

    .line 3
    iput-object p1, p0, Lcom/auth0/jwt/algorithms/d;->c:Lcom/auth0/jwt/algorithms/b;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The Secret cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/auth0/jwt/algorithms/b;

    invoke-direct {v0}, Lcom/auth0/jwt/algorithms/b;-><init>()V

    invoke-static {p3}, Lcom/auth0/jwt/algorithms/d;->H(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/auth0/jwt/algorithms/d;-><init>(Lcom/auth0/jwt/algorithms/b;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/auth0/jwt/algorithms/b;

    invoke-direct {v0}, Lcom/auth0/jwt/algorithms/b;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/auth0/jwt/algorithms/d;-><init>(Lcom/auth0/jwt/algorithms/b;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static H(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Secret cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public E([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/d;->c:Lcom/auth0/jwt/algorithms/b;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/a;->A()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/auth0/jwt/algorithms/d;->d:[B

    invoke-virtual {v0, v1, v2, p1}, Lcom/auth0/jwt/algorithms/b;->c(Ljava/lang/String;[B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2
    :goto_0
    new-instance v0, Lcom/auth0/jwt/exceptions/SignatureGenerationException;

    invoke-direct {v0, p0, p1}, Lcom/auth0/jwt/exceptions/SignatureGenerationException;-><init>(Lcom/auth0/jwt/algorithms/a;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public F([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/d;->c:Lcom/auth0/jwt/algorithms/b;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/a;->A()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/auth0/jwt/algorithms/d;->d:[B

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/auth0/jwt/algorithms/b;->d(Ljava/lang/String;[B[B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2
    :goto_0
    new-instance p2, Lcom/auth0/jwt/exceptions/SignatureGenerationException;

    invoke-direct {p2, p0, p1}, Lcom/auth0/jwt/exceptions/SignatureGenerationException;-><init>(Lcom/auth0/jwt/algorithms/a;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public G(Lcom/auth0/jwt/interfaces/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureVerificationException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/c;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lshaded/org/apache/commons/codec/binary/d;->x(Ljava/lang/String;)[B

    move-result-object v6

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/d;->c:Lcom/auth0/jwt/algorithms/b;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/a;->A()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/auth0/jwt/algorithms/d;->d:[B

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/c;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/c;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/auth0/jwt/algorithms/b;->h(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/auth0/jwt/exceptions/SignatureVerificationException;

    invoke-direct {p1, p0}, Lcom/auth0/jwt/exceptions/SignatureVerificationException;-><init>(Lcom/auth0/jwt/algorithms/a;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 4
    :goto_0
    new-instance v0, Lcom/auth0/jwt/exceptions/SignatureVerificationException;

    invoke-direct {v0, p0, p1}, Lcom/auth0/jwt/exceptions/SignatureVerificationException;-><init>(Lcom/auth0/jwt/algorithms/a;Ljava/lang/Throwable;)V

    throw v0
.end method
