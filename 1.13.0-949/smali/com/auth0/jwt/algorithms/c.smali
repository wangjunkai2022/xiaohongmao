.class Lcom/auth0/jwt/algorithms/c;
.super Lcom/auth0/jwt/algorithms/a;
.source "ECDSAAlgorithm.java"


# instance fields
.field private final c:Lcom/auth0/jwt/interfaces/d;

.field private final d:Lcom/auth0/jwt/algorithms/b;

.field private final e:I


# direct methods
.method constructor <init>(Lcom/auth0/jwt/algorithms/b;Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/auth0/jwt/algorithms/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 2
    iput-object p5, p0, Lcom/auth0/jwt/algorithms/c;->c:Lcom/auth0/jwt/interfaces/d;

    .line 3
    iput-object p1, p0, Lcom/auth0/jwt/algorithms/c;->d:Lcom/auth0/jwt/algorithms/b;

    .line 4
    iput p4, p0, Lcom/auth0/jwt/algorithms/c;->e:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The Key Provider cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 6
    new-instance v1, Lcom/auth0/jwt/algorithms/b;

    invoke-direct {v1}, Lcom/auth0/jwt/algorithms/b;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/auth0/jwt/algorithms/c;-><init>(Lcom/auth0/jwt/algorithms/b;Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/d;)V

    return-void
.end method

.method private J([BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    .line 1
    aget-byte v2, p1, v1

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0x7f

    if-le p1, p2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method static K(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/interfaces/d;
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
    new-instance v0, Lcom/auth0/jwt/algorithms/c$a;

    invoke-direct {v0, p0, p1}, Lcom/auth0/jwt/algorithms/c$a;-><init>(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V

    return-object v0
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/algorithms/c;->c:Lcom/auth0/jwt/interfaces/d;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/d;->c()Ljava/lang/String;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/c;->c:Lcom/auth0/jwt/interfaces/d;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/d;->a()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/c;->d:Lcom/auth0/jwt/algorithms/b;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/a;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/auth0/jwt/algorithms/b;->a(Ljava/lang/String;Ljava/security/PrivateKey;[B)[B

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/auth0/jwt/algorithms/c;->H([B)[B

    move-result-object p1

    return-object p1

    .line 4
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

    .line 5
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
    iget-object v0, p0, Lcom/auth0/jwt/algorithms/c;->c:Lcom/auth0/jwt/interfaces/d;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/d;->a()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/c;->d:Lcom/auth0/jwt/algorithms/b;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/a;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/auth0/jwt/algorithms/b;->b(Ljava/lang/String;Ljava/security/PrivateKey;[B[B)[B

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/auth0/jwt/algorithms/c;->H([B)[B

    move-result-object p1

    return-object p1

    .line 4
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

    .line 5
    :goto_0
    new-instance p2, Lcom/auth0/jwt/exceptions/SignatureGenerationException;

    invoke-direct {p2, p0, p1}, Lcom/auth0/jwt/exceptions/SignatureGenerationException;-><init>(Lcom/auth0/jwt/algorithms/a;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public G(Lcom/auth0/jwt/interfaces/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureVerificationException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/c;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lshaded/org/apache/commons/codec/binary/d;->x(Ljava/lang/String;)[B

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/auth0/jwt/algorithms/c;->c:Lcom/auth0/jwt/interfaces/d;

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/auth0/jwt/interfaces/d;->b(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    if-eqz v4, :cond_1

    .line 3
    iget-object v2, p0, Lcom/auth0/jwt/algorithms/c;->d:Lcom/auth0/jwt/algorithms/b;

    invoke-virtual {p0}, Lcom/auth0/jwt/algorithms/a;->A()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/c;->j()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/c;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0}, Lcom/auth0/jwt/algorithms/c;->I([B)[B

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/auth0/jwt/algorithms/b;->e(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;[B)Z

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

.method H([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget-byte v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x30

    if-ne v1, v4, :cond_0

    array-length v1, p1

    iget v4, p0, Lcom/auth0/jwt/algorithms/c;->e:I

    mul-int/lit8 v4, v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Invalid DER signature format."

    if-eqz v1, :cond_5

    .line 2
    iget v1, p0, Lcom/auth0/jwt/algorithms/c;->e:I

    mul-int/lit8 v5, v1, 0x2

    new-array v5, v5, [B

    .line 3
    aget-byte v6, p1, v3

    const/16 v7, -0x7f

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v6, v2, 0x1

    .line 4
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 5
    array-length v7, p1

    sub-int/2addr v7, v6

    if-ne v2, v7, :cond_4

    add-int/2addr v6, v3

    add-int/lit8 v2, v6, 0x1

    .line 6
    aget-byte v6, p1, v6

    add-int/lit8 v7, v1, 0x1

    if-gt v6, v7, :cond_3

    sub-int/2addr v1, v6

    neg-int v7, v1

    .line 7
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v6

    invoke-static {p1, v7, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v3

    add-int/2addr v2, v6

    add-int/lit8 v1, v2, 0x1

    .line 8
    aget-byte v2, p1, v2

    .line 9
    iget v3, p0, Lcom/auth0/jwt/algorithms/c;->e:I

    add-int/lit8 v6, v3, 0x1

    if-gt v2, v6, :cond_2

    sub-int/2addr v3, v2

    neg-int v4, v3

    .line 10
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lcom/auth0/jwt/algorithms/c;->e:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v2, v0

    invoke-static {p1, v1, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    .line 11
    :cond_2
    new-instance p1, Ljava/security/SignatureException;

    invoke-direct {p1, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/security/SignatureException;

    invoke-direct {p1, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/security/SignatureException;

    invoke-direct {p1, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/security/SignatureException;

    invoke-direct {p1, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method I([B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    iget v1, p0, Lcom/auth0/jwt/algorithms/c;->e:I

    mul-int/lit8 v2, v1, 0x2

    const-string v3, "Invalid JOSE signature format."

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/auth0/jwt/algorithms/c;->J([BII)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/auth0/jwt/algorithms/c;->e:I

    array-length v4, p1

    invoke-direct {p0, p1, v2, v4}, Lcom/auth0/jwt/algorithms/c;->J([BII)I

    move-result v2

    .line 4
    iget v4, p0, Lcom/auth0/jwt/algorithms/c;->e:I

    sub-int v5, v4, v1

    sub-int v6, v4, v2

    add-int/lit8 v7, v5, 0x2

    const/4 v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    const/16 v9, 0xff

    if-gt v7, v9, :cond_3

    const/16 v3, 0x7f

    const/4 v10, 0x1

    if-le v7, v3, :cond_0

    add-int/lit8 v3, v7, 0x3

    .line 5
    new-array v3, v3, [B

    const/16 v11, -0x7f

    .line 6
    aput-byte v11, v3, v10

    const/4 v10, 0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v7, 0x2

    .line 7
    new-array v3, v3, [B

    :goto_0
    const/16 v11, 0x30

    .line 8
    aput-byte v11, v3, v0

    add-int/lit8 v11, v10, 0x1

    and-int/2addr v7, v9

    int-to-byte v7, v7

    .line 9
    aput-byte v7, v3, v10

    add-int/lit8 v7, v11, 0x1

    .line 10
    aput-byte v8, v3, v11

    add-int/lit8 v9, v7, 0x1

    int-to-byte v10, v5

    .line 11
    aput-byte v10, v3, v7

    if-gez v1, :cond_1

    add-int/lit8 v1, v9, 0x1

    .line 12
    aput-byte v0, v3, v9

    .line 13
    invoke-static {p1, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v4, p0, Lcom/auth0/jwt/algorithms/c;->e:I

    add-int/2addr v1, v4

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 16
    invoke-static {p1, v1, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, v9, v4

    :goto_1
    add-int/lit8 v4, v1, 0x1

    .line 17
    aput-byte v8, v3, v1

    add-int/lit8 v1, v4, 0x1

    int-to-byte v5, v6

    .line 18
    aput-byte v5, v3, v4

    if-gez v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 19
    aput-byte v0, v3, v1

    .line 20
    iget v0, p0, Lcom/auth0/jwt/algorithms/c;->e:I

    invoke-static {p1, v0, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 21
    :cond_2
    iget v0, p0, Lcom/auth0/jwt/algorithms/c;->e:I

    add-int/2addr v2, v0

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-object v3

    .line 22
    :cond_3
    new-instance p1, Ljava/security/SignatureException;

    invoke-direct {p1, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_4
    new-instance p1, Ljava/security/SignatureException;

    invoke-direct {p1, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
