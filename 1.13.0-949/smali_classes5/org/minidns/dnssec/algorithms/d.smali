.class Lorg/minidns/dnssec/algorithms/d;
.super Lorg/minidns/dnssec/algorithms/f;
.source "EcgostSignatureVerifier.java"


# static fields
.field private static final c:I = 0x20

.field private static final d:Ljava/security/spec/ECParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/EllipticCurve;

    new-instance v2, Ljava/security/spec/ECFieldFp;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD97"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD94"

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "A6"

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljava/security/spec/ECPoint;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "8D91E471E0989CDA27DF505A453F2B7635294F2DDF23E3B122ACC99C9E9F1E14"

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C611070995AD10045841B09B761B893"

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v0, Lorg/minidns/dnssec/algorithms/d;->d:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "ECGOST3410"

    const-string v1, "GOST3411withECGOST3410"

    invoke-direct {p0, v0, v1}, Lorg/minidns/dnssec/algorithms/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e([B)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 2
    array-length v1, p0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 3
    aget-byte v2, p0, v0

    .line 4
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 5
    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    const/16 p1, 0x20

    :try_start_0
    new-array v1, p1, [B

    .line 2
    invoke-interface {v0, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 3
    invoke-static {v1}, Lorg/minidns/dnssec/algorithms/d;->e([B)V

    .line 4
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array p1, p1, [B

    .line 5
    invoke-interface {v0, p1}, Ljava/io/DataInput;->readFully([B)V

    .line 6
    invoke-static {p1}, Lorg/minidns/dnssec/algorithms/d;->e([B)V

    .line 7
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 8
    invoke-virtual {p0}, Lorg/minidns/dnssec/algorithms/f;->b()Ljava/security/KeyFactory;

    move-result-object p1

    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-direct {v3, v2, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v0, Lorg/minidns/dnssec/algorithms/d;->d:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v1, v3, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

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

    .line 9
    :goto_0
    new-instance v0, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v1, "Invalid public key!"

    invoke-direct {v0, v1, p1}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected d([B)[B
    .locals 0

    return-object p1
.end method
