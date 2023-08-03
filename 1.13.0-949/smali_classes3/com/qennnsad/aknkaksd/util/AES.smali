.class public Lcom/qennnsad/aknkaksd/util/AES;
.super Ljava/lang/Object;
.source "AES.java"


# static fields
.field private static final CIPHERMODEPADDING:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static ivParameter:Ljava/lang/String; = "i4r$cnEQK#fjR$4u"


# instance fields
.field private final HASH_ITERATIONS:I

.field private IV:Ljavax/crypto/spec/IvParameterSpec;

.field private final KEY_GENERATION_ALG:Ljava/lang/String;

.field private final KEY_LENGTH:I

.field private humanPassphrase:[C

.field private iv:[B

.field private keyfactory:Ljavax/crypto/SecretKeyFactory;

.field private myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

.field sKey:Ljava/lang/String;

.field private salt:[B

.field private sk:Ljavax/crypto/SecretKey;

.field private skforAES:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const-string v0, "AESdemo"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "PBEWITHSHAANDTWOFISH-CBC"

    .line 2
    iput-object v1, p0, Lcom/qennnsad/aknkaksd/util/AES;->KEY_GENERATION_ALG:Ljava/lang/String;

    const/16 v2, 0x2710

    .line 3
    iput v2, p0, Lcom/qennnsad/aknkaksd/util/AES;->HASH_ITERATIONS:I

    const/16 v3, 0x80

    .line 4
    iput v3, p0, Lcom/qennnsad/aknkaksd/util/AES;->KEY_LENGTH:I

    const/16 v4, 0x17

    new-array v4, v4, [C

    .line 5
    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/qennnsad/aknkaksd/util/AES;->humanPassphrase:[C

    const-string v4, "I0g2Vq!8U5StM9NE"

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, p0, Lcom/qennnsad/aknkaksd/util/AES;->salt:[B

    .line 7
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/util/AES;->humanPassphrase:[C

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/util/AES;->salt:[B

    invoke-direct {v4, v5, v6, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    iput-object v4, p0, Lcom/qennnsad/aknkaksd/util/AES;->myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lcom/qennnsad/aknkaksd/util/AES;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    .line 9
    iput-object v2, p0, Lcom/qennnsad/aknkaksd/util/AES;->sk:Ljavax/crypto/SecretKey;

    .line 10
    iput-object v2, p0, Lcom/qennnsad/aknkaksd/util/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    .line 11
    sget-object v2, Lcom/qennnsad/aknkaksd/util/AES;->ivParameter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/qennnsad/aknkaksd/util/AES;->iv:[B

    const-string v2, "d$ya*F8j52eGj^UZ"

    .line 12
    iput-object v2, p0, Lcom/qennnsad/aknkaksd/util/AES;->sKey:Ljava/lang/String;

    .line 13
    :try_start_0
    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/util/AES;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    .line 14
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/AES;->myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/util/AES;->sk:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "invalid key spec for PBEWITHSHAANDTWOFISH-CBC"

    .line 15
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string v1, "no key factory support for PBEWITHSHAANDTWOFISH-CBC"

    .line 16
    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/AES;->sKey:Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 18
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/util/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 20
    :goto_1
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/AES;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/AES;->IV:Ljavax/crypto/spec/IvParameterSpec;

    return-void

    :array_0
    .array-data 2
        0x50s
        0x65s
        0x72s
        0x20s
        0x76s
        0x61s
        0x6cs
        0x6cs
        0x75s
        0x6ds
        0x20s
        0x64s
        0x75s
        0x63s
        0x65s
        0x73s
        0x20s
        0x4cs
        0x61s
        0x62s
        0x61s
        0x6es
        0x74s
    .end array-data
.end method

.method private addPadding([B)[B
    .locals 4

    .line 1
    array-length v0, p1

    const/16 v1, 0x10

    rem-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    array-length v0, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 3
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 4
    aget-byte v3, p1, v2

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_1
    array-length v2, p1

    :goto_2
    array-length v3, p1

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    int-to-byte v3, v1

    .line 6
    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public static aesdecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decode AES. key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--secret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "--vector:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AES"

    invoke-static {v3, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 3
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 4
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ASCII"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v4, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5
    new-instance p1, Ljava/lang/String;

    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1, v4, v0, p0}, Lcom/qennnsad/aknkaksd/util/AES;->decrypt2(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 6
    invoke-static {v3, p0}, Lcom/qennnsad/aknkaksd/util/o0;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "{code=1,msg=\"\u6570\u636e\u89e3\u6790\u5931\u8d25\"}"

    return-object p0
.end method

.method public static aesdecrypt_tiger(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 2
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v1, "6v2cOih#uL2rmBj^"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "7#0apwZ0zg*a932y"

    const-string v3, "ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "AES/CBC/PKCS7Padding"

    .line 4
    invoke-static {v2, v1, v0, p0}, Lcom/qennnsad/aknkaksd/util/AES;->decrypt2(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "AES-Tiger"

    .line 6
    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "{code=1,msg=\"\u6570\u636e\u89e3\u6790\u5931\u8d25\"}"

    return-object p0
.end method

.method public static aesdecrypt_tiger2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 2
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v1, "Nz_zu4*xT8-8Z4ve"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "xW.uc8LUi.x7@k!p"

    const-string v3, "ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "AES/CBC/PKCS7Padding"

    .line 4
    invoke-static {v2, v1, v0, p0}, Lcom/qennnsad/aknkaksd/util/AES;->decrypt2(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "AES-Tiger2"

    .line 6
    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "{code=1,msg=\"\u6570\u636e\u89e3\u6790\u5931\u8d25\"}"

    return-object p0
.end method

.method public static aesencrypt_tiger(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aesencrypt_tiger:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_id"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v1, "6v2cOih#uL2rmBj^"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "7#0apwZ0zg*a932y"

    const-string v3, "ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v2, "AES/CBC/PKCS7Padding"

    invoke-static {v2, v1, v0, p0}, Lcom/qennnsad/aknkaksd/util/AES;->encrypt2(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static aesencrypt_tiger2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aesencrypt_tiger:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_id"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v1, "Nz_zu4*xT8-8Z4ve"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "xW.uc8LUi.x7@k!p"

    const-string v3, "ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v2, "AES/CBC/PKCS7Padding"

    invoke-static {v2, v1, v0, p0}, Lcom/qennnsad/aknkaksd/util/AES;->encrypt2(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B
    .locals 3

    const-string v0, "AESdemo"

    .line 3
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v1, v2, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5
    invoke-virtual {v1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "bad padding exception"

    .line 6
    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p1, "illegal block size exception"

    .line 7
    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p1, "invalid algorithm parameter exception"

    .line 8
    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    const-string p1, "invalid key exception"

    .line 9
    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :catch_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no cipher getinstance support for padding "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :catch_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no cipher getinstance support for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static decrypt2(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B
    .locals 3

    const-string v0, "AESdemo"

    .line 1
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v1, v2, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3
    invoke-virtual {v1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "bad padding exception"

    .line 4
    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "illegal block size exception"

    .line 5
    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p0, "invalid algorithm parameter exception"

    .line 6
    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    const-string p0, "invalid key exception"

    .line 7
    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :catch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no cipher getinstance support for padding "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :catch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no cipher getinstance support for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private dropPadding([B)[B
    .locals 5

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    .line 2
    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v0, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    aget-byte v4, p1, v3

    aput-byte v4, v0, v3

    .line 4
    aput-byte v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B
    .locals 3

    const-string v0, "AESdemo"

    .line 3
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5
    invoke-virtual {v1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "bad padding exception"

    .line 6
    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p1, "illegal block size exception"

    .line 7
    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p1, "invalid algorithm parameter exception"

    .line 8
    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    const-string p1, "invalid key exception"

    .line 9
    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :catch_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no cipher getinstance support for padding "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :catch_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no cipher getinstance support for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static encrypt2(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B
    .locals 3

    const-string v0, "AESdemo"

    .line 1
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v2, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3
    invoke-virtual {v1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "bad padding exception"

    .line 4
    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "illegal block size exception"

    .line 5
    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p0, "invalid algorithm parameter exception"

    .line 6
    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    const-string p0, "invalid key exception"

    .line 7
    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :catch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no cipher getinstance support for padding "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :catch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no cipher getinstance support for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/AES;->IV:Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "AES/CBC/PKCS7Padding"

    invoke-direct {p0, v3, v1, v2, p1}, Lcom/qennnsad/aknkaksd/util/AES;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public encrypt([B)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/AES;->IV:Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "AES/CBC/PKCS7Padding"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/qennnsad/aknkaksd/util/AES;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hex(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v1, v2

    .line 3
    new-array v2, v1, [B

    :goto_0
    if-ge v0, v1, :cond_1

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 4
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    new-array p1, v0, [B

    return-object p1
.end method
