.class abstract Lorg/minidns/dnssec/algorithms/c;
.super Lorg/minidns/dnssec/algorithms/f;
.source "EcdsaSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/dnssec/algorithms/c$b;,
        Lorg/minidns/dnssec/algorithms/c$a;
    }
.end annotation


# instance fields
.field private final c:Ljava/security/spec/ECParameterSpec;

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/security/spec/ECParameterSpec;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "EC"

    .line 2
    invoke-direct {p0, v0, p3}, Lorg/minidns/dnssec/algorithms/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput p2, p0, Lorg/minidns/dnssec/algorithms/c;->d:I

    .line 4
    iput-object p1, p0, Lorg/minidns/dnssec/algorithms/c;->c:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>([Ljava/math/BigInteger;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/EllipticCurve;

    new-instance v2, Ljava/security/spec/ECFieldFp;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    const/4 v3, 0x1

    aget-object v4, p1, v3

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-direct {v1, v2, v4, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljava/security/spec/ECPoint;

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    invoke-direct {v2, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v4, 0x5

    aget-object p1, p1, v4

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    invoke-direct {p0, v0, p2, p3}, Lorg/minidns/dnssec/algorithms/c;-><init>(Ljava/security/spec/ECParameterSpec;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected c([B)Ljava/security/PublicKey;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    :try_start_0
    iget p1, p0, Lorg/minidns/dnssec/algorithms/c;->d:I

    new-array p1, p1, [B

    .line 3
    invoke-interface {v0, p1}, Ljava/io/DataInput;->readFully([B)V

    .line 4
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 5
    iget p1, p0, Lorg/minidns/dnssec/algorithms/c;->d:I

    new-array p1, p1, [B

    .line 6
    invoke-interface {v0, p1}, Ljava/io/DataInput;->readFully([B)V

    .line 7
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 8
    invoke-virtual {p0}, Lorg/minidns/dnssec/algorithms/f;->b()Ljava/security/KeyFactory;

    move-result-object p1

    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-direct {v3, v1, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/c;->c:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v2, v3, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    :goto_0
    new-instance v0, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v1, "Invalid public key!"

    invoke-direct {v0, v1, p1}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected d([B)[B
    .locals 8

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    :try_start_0
    iget v2, p0, Lorg/minidns/dnssec/algorithms/c;->d:I

    new-array v2, v2, [B

    .line 5
    invoke-interface {v0, v2}, Ljava/io/DataInput;->readFully([B)V

    const/4 v3, 0x0

    .line 6
    aget-byte v4, v2, v3

    if-gez v4, :cond_0

    iget v4, p0, Lorg/minidns/dnssec/algorithms/c;->d:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lorg/minidns/dnssec/algorithms/c;->d:I

    .line 7
    :goto_0
    iget v5, p0, Lorg/minidns/dnssec/algorithms/c;->d:I

    new-array v5, v5, [B

    .line 8
    invoke-interface {v0, v5}, Ljava/io/DataInput;->readFully([B)V

    .line 9
    aget-byte v0, v5, v3

    if-gez v0, :cond_1

    iget v0, p0, Lorg/minidns/dnssec/algorithms/c;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/minidns/dnssec/algorithms/c;->d:I

    :goto_1
    const/16 v6, 0x30

    .line 10
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int v6, v4, v0

    add-int/lit8 v6, v6, 0x4

    .line 11
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v6, 0x2

    .line 12
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 13
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 14
    iget v7, p0, Lorg/minidns/dnssec/algorithms/c;->d:I

    if-le v4, v7, :cond_2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 15
    :cond_2
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 16
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 17
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 18
    iget v2, p0, Lorg/minidns/dnssec/algorithms/c;->d:I

    if-le v0, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 19
    :cond_3
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 21
    new-instance v0, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v1, "Invalid signature!"

    invoke-direct {v0, v1, p1}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
