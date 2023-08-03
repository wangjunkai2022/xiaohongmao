.class public final Lcom/alipay/security/mobile/module/commonutils/crypto/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:I = 0x8

.field public static final d:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "7B726A5DDD72CBF8D1700FB6EB278AFD7559C40A3761E5A71614D0AC9461ED8EE9F6AAEB443CD648"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/g;->a:[B

    const-string v0, "C9582A82777392CAA65AD7F5228150E3F966C09D6A00288B5C6E0CFB441E111B713B4E0822A8C830"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/e;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/g;->b:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .locals 8

    const/16 v0, 0x14

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/b;->b([BBII)Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v3, v0, [B

    invoke-static {v3, v2, v2, v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/b;->b([BBII)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/g;->a:[B

    invoke-static {p0, v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/c;->b([B[B)[B

    move-result-object v0

    array-length v4, v0

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/alipay/security/mobile/module/commonutils/crypto/g;->b:[B

    invoke-static {p0, v0}, Lcom/alipay/security/mobile/module/commonutils/crypto/c;->b([B[B)[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x8

    new-array p0, p0, [B

    const/16 v0, 0x13

    aget-byte v4, v1, v0

    and-int/lit8 v4, v4, 0xf

    aget-byte v5, v1, v4

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    const/4 v6, 0x3

    aput-byte v5, p0, v6

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v7, 0x2

    aput-byte v5, p0, v7

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v7, 0x1

    aput-byte v5, p0, v7

    add-int/2addr v4, v6

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    aget-byte v0, v3, v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    aget-byte v2, v3, v0

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    const/4 v1, 0x5

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    const/4 v1, 0x6

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    const/4 v1, 0x7

    add-int/2addr v0, v6

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "failed to init hash2."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "failed to init hash1."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BI)[B
    .locals 3

    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/crypto/g;->a([B)[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-gtz p1, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x8

    if-lt p1, v0, :cond_2

    return-object p0

    :cond_2
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
