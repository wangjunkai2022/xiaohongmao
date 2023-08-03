.class Lcom/auth0/jwt/algorithms/b;
.super Ljava/lang/Object;
.source "CryptoHelper.java"


# static fields
.field private static final a:B = 0x2et


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/security/PrivateKey;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 3
    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    .line 4
    invoke-virtual {p1}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/String;Ljava/security/PrivateKey;[B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 3
    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    const/16 p2, 0x2e

    .line 4
    invoke-virtual {p1, p2}, Ljava/security/Signature;->update(B)V

    .line 5
    invoke-virtual {p1, p4}, Ljava/security/Signature;->update([B)V

    .line 6
    invoke-virtual {p1}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    return-object p1
.end method

.method c(Ljava/lang/String;[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 3
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method d(Ljava/lang/String;[B[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 3
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update([B)V

    const/16 p1, 0x2e

    .line 4
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    .line 5
    invoke-virtual {v0, p4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method e(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/auth0/jwt/algorithms/b;->g(Ljava/lang/String;Ljava/security/PublicKey;[B[B[B)Z

    move-result p1

    return p1
.end method

.method f(Ljava/lang/String;Ljava/security/PublicKey;[B[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 3
    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    .line 4
    invoke-virtual {p1, p4}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method

.method g(Ljava/lang/String;Ljava/security/PublicKey;[B[B[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 3
    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    const/16 p2, 0x2e

    .line 4
    invoke-virtual {p1, p2}, Ljava/security/Signature;->update(B)V

    .line 5
    invoke-virtual {p1, p4}, Ljava/security/Signature;->update([B)V

    .line 6
    invoke-virtual {p1, p5}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method

.method h(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/auth0/jwt/algorithms/b;->j(Ljava/lang/String;[B[B[B[B)Z

    move-result p1

    return p1
.end method

.method i(Ljava/lang/String;[B[B[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/auth0/jwt/algorithms/b;->c(Ljava/lang/String;[B[B)[B

    move-result-object p1

    invoke-static {p1, p4}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1

    return p1
.end method

.method j(Ljava/lang/String;[B[B[B[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/auth0/jwt/algorithms/b;->d(Ljava/lang/String;[B[B[B)[B

    move-result-object p1

    invoke-static {p1, p5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1

    return p1
.end method
