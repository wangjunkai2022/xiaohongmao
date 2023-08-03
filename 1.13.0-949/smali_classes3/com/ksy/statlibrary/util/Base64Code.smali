.class public final Lcom/ksy/statlibrary/util/Base64Code;
.super Ljava/lang/Object;
.source "Base64Code.java"


# static fields
.field private static final DECODE_MAP:[B

.field private static final ENCODE_MAP:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/ksy/statlibrary/util/Base64Code;->ENCODE_MAP:[C

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 2
    sput-object v0, Lcom/ksy/statlibrary/util/Base64Code;->DECODE_MAP:[B

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 3
    sget-object v1, Lcom/ksy/statlibrary/util/Base64Code;->DECODE_MAP:[B

    sget-object v2, Lcom/ksy/statlibrary/util/Base64Code;->ENCODE_MAP:[C

    aget-char v2, v2, v0

    aput-byte v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/ksy/statlibrary/util/Base64Code;->DECODE_MAP:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    .line 5
    aput-byte v2, v0, v1

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;[BI)I
    .locals 9

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 5
    rem-int/lit8 v3, v1, 0x4

    const/4 v4, 0x2

    if-nez v3, :cond_0

    add-int v3, p2, v1

    sub-int/2addr v3, v2

    .line 6
    sget-object v5, Lcom/ksy/statlibrary/util/Base64Code;->DECODE_MAP:[B

    aget-byte v6, v0, v1

    aget-byte v5, v5, v6

    shl-int/lit8 v4, v5, 0x2

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    add-int v6, p2, v1

    sub-int/2addr v6, v2

    add-int/lit8 v7, v6, -0x1

    .line 7
    array-length v8, p1

    if-ge v7, v8, :cond_1

    .line 8
    aget-byte v3, p1, v7

    sget-object v4, Lcom/ksy/statlibrary/util/Base64Code;->DECODE_MAP:[B

    aget-byte v5, v0, v1

    aget-byte v5, v4, v5

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p1, v7

    .line 9
    array-length v3, p1

    if-ge v6, v3, :cond_3

    .line 10
    aget-byte v3, v0, v1

    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, p1, v6

    goto :goto_1

    :cond_1
    if-ne v3, v4, :cond_2

    add-int v6, p2, v1

    sub-int/2addr v6, v2

    add-int/lit8 v7, v6, -0x1

    .line 11
    array-length v8, p1

    if-ge v7, v8, :cond_2

    .line 12
    aget-byte v3, p1, v7

    sget-object v5, Lcom/ksy/statlibrary/util/Base64Code;->DECODE_MAP:[B

    aget-byte v8, v0, v1

    aget-byte v8, v5, v8

    ushr-int/lit8 v4, v8, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v7

    .line 13
    array-length v3, p1

    if-ge v6, v3, :cond_3

    .line 14
    aget-byte v3, v0, v1

    aget-byte v3, v5, v3

    shl-int/lit8 v3, v3, 0x6

    int-to-byte v3, v3

    aput-byte v3, p1, v6

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    add-int v3, p2, v1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    .line 15
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 16
    aget-byte v4, p1, v3

    sget-object v5, Lcom/ksy/statlibrary/util/Base64Code;->DECODE_MAP:[B

    aget-byte v6, v0, v1

    aget-byte v5, v5, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_4
    invoke-static {p0}, Lcom/ksy/statlibrary/util/Base64Code;->decodeLength(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/ksy/statlibrary/util/Base64Code;->decodeLength(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Lcom/ksy/statlibrary/util/Base64Code;->decode(Ljava/lang/String;[BI)I

    return-object v0
.end method

.method public static decodeLength(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v1, v0, -0x2

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_1

    mul-int/lit8 v1, v1, 0x3

    .line 3
    div-int/lit8 v1, v1, 0x4

    return v1

    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v3, :cond_2

    mul-int/lit8 v1, v1, 0x3

    .line 5
    div-int/lit8 v1, v1, 0x4

    return v1

    :cond_2
    mul-int/lit8 v0, v0, 0x3

    .line 6
    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ksy/statlibrary/util/Base64Code;->encode([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BII)Ljava/lang/String;
    .locals 11

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_4

    .line 3
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xfc

    shr-int/lit8 v3, v3, 0x2

    .line 4
    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    if-ge v5, v2, :cond_0

    .line 5
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    .line 6
    aget-byte v8, p0, v5

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, v1, 0x2

    if-ge v9, v2, :cond_1

    .line 7
    aget-byte v6, p0, v9

    and-int/lit16 v6, v6, 0xc0

    shr-int/lit8 v6, v6, 0x6

    .line 8
    aget-byte v10, p0, v9

    and-int/lit8 v10, v10, 0x3f

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    if-ge v9, v2, :cond_2

    .line 9
    sget-object v2, Lcom/ksy/statlibrary/util/Base64Code;->ENCODE_MAP:[C

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    or-int v3, v4, v7

    .line 10
    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    or-int v3, v8, v6

    .line 11
    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    aget-char v2, v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const/16 v6, 0x3d

    if-ge v5, v2, :cond_3

    .line 13
    sget-object v2, Lcom/ksy/statlibrary/util/Base64Code;->ENCODE_MAP:[C

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    or-int v3, v4, v7

    .line 14
    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    aget-char v2, v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 17
    :cond_3
    sget-object v2, Lcom/ksy/statlibrary/util/Base64Code;->ENCODE_MAP:[C

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    or-int v3, v4, v7

    .line 18
    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 21
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
