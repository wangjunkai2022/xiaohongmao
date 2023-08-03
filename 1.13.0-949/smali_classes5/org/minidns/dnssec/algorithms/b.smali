.class Lorg/minidns/dnssec/algorithms/b;
.super Lorg/minidns/dnssec/algorithms/f;
.source "DsaSignatureVerifier.java"


# static fields
.field private static final c:I = 0x14


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "DSA"

    invoke-direct {p0, v0, p1}, Lorg/minidns/dnssec/algorithms/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected c([B)Ljava/security/PublicKey;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 3
    invoke-interface {v0, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 4
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x40

    .line 5
    new-array v1, p1, [B

    .line 6
    invoke-interface {v0, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 7
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 8
    new-array v1, p1, [B

    .line 9
    invoke-interface {v0, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 10
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 11
    new-array p1, p1, [B

    .line 12
    invoke-interface {v0, p1}, Ljava/io/DataInput;->readFully([B)V

    .line 13
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 14
    invoke-virtual {p0}, Lorg/minidns/dnssec/algorithms/f;->b()Ljava/security/KeyFactory;

    move-result-object p1

    new-instance v1, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v1, v0, v4, v2, v5}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

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

    .line 15
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
    invoke-interface {v0}, Ljava/io/DataInput;->readByte()B

    const/16 v2, 0x14

    new-array v3, v2, [B

    .line 5
    invoke-interface {v0, v3}, Ljava/io/DataInput;->readFully([B)V

    const/4 v4, 0x0

    aget-byte v5, v3, v4

    const/16 v6, 0x15

    if-gez v5, :cond_0

    const/16 v5, 0x15

    goto :goto_0

    :cond_0
    const/16 v5, 0x14

    :goto_0
    new-array v7, v2, [B

    .line 6
    invoke-interface {v0, v7}, Ljava/io/DataInput;->readFully([B)V

    aget-byte v0, v7, v4

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v6, 0x14

    :goto_1
    const/16 v0, 0x30

    .line 7
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int v0, v5, v6

    add-int/lit8 v0, v0, 0x4

    .line 8
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v0, 0x2

    .line 9
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 10
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-le v5, v2, :cond_2

    .line 11
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 12
    :cond_2
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 13
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 14
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-le v6, v2, :cond_3

    .line 15
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 16
    :cond_3
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 18
    new-instance v0, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v1, "Invalid signature!"

    invoke-direct {v0, v1, p1}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
