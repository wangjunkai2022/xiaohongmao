.class Lcom/auth0/jwt/algorithms/f;
.super Lcom/auth0/jwt/algorithms/a;
.source "RSAAlgorithm.java"


# instance fields
.field private final c:Lcom/auth0/jwt/interfaces/j;

.field private final d:Lcom/auth0/jwt/algorithms/b;


# direct methods
.method constructor <init>(Lcom/auth0/jwt/algorithms/b;Ljava/lang/String;Ljava/lang/String;Lcom/auth0/jwt/interfaces/j;)V
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
    iput-object p4, p0, Lcom/auth0/jwt/algorithms/f;->c:Lcom/auth0/jwt/interfaces/j;

    .line 3
    iput-object p1, p0, Lcom/auth0/jwt/algorithms/f;->d:Lcom/auth0/jwt/algorithms/b;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The Key Provider cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/auth0/jwt/interfaces/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/auth0/jwt/algorithms/b;

    invoke-direct {v0}, Lcom/auth0/jwt/algorithms/b;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/auth0/jwt/algorithms/f;-><init>(Lcom/auth0/jwt/algorithms/b;Ljava/lang/String;Ljava/lang/String;Lcom/auth0/jwt/interfaces/j;)V

    return-void
.end method

.method static H(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/interfaces/j;
    .locals 1

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both provided Keys cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/auth0/jwt/algorithms/f$a;

    invoke-direct {v0, p0, p1}, Lcom/auth0/jwt/algorithms/f$a;-><init>(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)V

    return-object v0
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/algorithms/f;->c:Lcom/auth0/jwt/interfaces/j;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/j;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/f;->c:Lcom/auth0/jwt/interfaces/j;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/j;->a()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/f;->d:Lcom/auth0/jwt/algorithms/b;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/a;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/auth0/jwt/algorithms/b;->a(Ljava/lang/String;Ljava/security/PrivateKey;[B)[B

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The given Private Key is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 4
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/f;->c:Lcom/auth0/jwt/interfaces/j;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/j;->a()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/f;->d:Lcom/auth0/jwt/algorithms/b;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/a;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/auth0/jwt/algorithms/b;->b(Ljava/lang/String;Ljava/security/PrivateKey;[B[B)[B

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The given Private Key is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 4
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
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/f;->c:Lcom/auth0/jwt/interfaces/j;

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/auth0/jwt/interfaces/j;->b(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v3, :cond_1

    .line 3
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/f;->d:Lcom/auth0/jwt/algorithms/b;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/a;->A()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/c;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/c;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/auth0/jwt/algorithms/b;->e(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/auth0/jwt/exceptions/SignatureVerificationException;

    invoke-direct {p1, p0}, Lcom/auth0/jwt/exceptions/SignatureVerificationException;-><init>(Lcom/auth0/jwt/algorithms/a;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The given Public Key is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 6
    :goto_0
    new-instance v0, Lcom/auth0/jwt/exceptions/SignatureVerificationException;

    invoke-direct {v0, p0, p1}, Lcom/auth0/jwt/exceptions/SignatureVerificationException;-><init>(Lcom/auth0/jwt/algorithms/a;Ljava/lang/Throwable;)V

    throw v0
.end method
