.class public final Ln/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x80

.field private static final b:I = 0x40

.field private static final c:I = 0x18

.field private static final d:I = 0x8

.field private static final e:I = 0x10

.field private static final f:I = 0x4

.field private static final g:I = -0x80

.field private static final h:C = '='

.field private static final i:[B

.field private static final j:[C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x80

    new-array v1, v0, [B

    .line 1
    sput-object v1, Ln/a;->i:[B

    const/16 v1, 0x40

    new-array v1, v1, [C

    .line 2
    sput-object v1, Ln/a;->j:[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    sget-object v3, Ln/a;->i:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 4
    sget-object v2, Ln/a;->i:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x1a

    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    .line 5
    sget-object v3, Ln/a;->i:[B

    add-int/lit8 v4, v0, -0x61

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v3, 0x34

    const/16 v4, 0x30

    if-lt v0, v4, :cond_3

    .line 6
    sget-object v4, Ln/a;->i:[B

    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v3

    int-to-byte v3, v5

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 7
    :cond_3
    sget-object v0, Ln/a;->i:[B

    const/16 v4, 0x2b

    const/16 v5, 0x3e

    aput-byte v5, v0, v4

    const/16 v6, 0x2f

    const/16 v7, 0x3f

    .line 8
    aput-byte v7, v0, v6

    const/4 v0, 0x0

    :goto_4
    const/16 v8, 0x19

    if-gt v0, v8, :cond_4

    .line 9
    sget-object v8, Ln/a;->j:[C

    add-int/lit8 v9, v0, 0x41

    int-to-char v9, v9

    aput-char v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/16 v8, 0x33

    if-gt v2, v8, :cond_5

    .line 10
    sget-object v8, Ln/a;->j:[C

    add-int/lit8 v9, v0, 0x61

    int-to-char v9, v9

    aput-char v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    const/16 v0, 0x3d

    if-gt v3, v0, :cond_6

    .line 11
    sget-object v0, Ln/a;->j:[C

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 12
    :cond_6
    sget-object v0, Ln/a;->j:[C

    aput-char v4, v0, v5

    .line 13
    aput-char v6, v0, v7

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([C)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 2
    aget-char v4, p0, v2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget-char v5, p0, v2

    aput-char v5, p0, v3

    move v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public static b([B)Ljava/lang/String;
    .locals 15

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    const/16 v1, 0x8

    mul-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 2
    :cond_1
    rem-int/lit8 v2, v0, 0x18

    .line 3
    div-int/lit8 v0, v0, 0x18

    if-eqz v2, :cond_2

    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    mul-int/lit8 v3, v3, 0x4

    .line 4
    new-array v3, v3, [C

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v4, v0, :cond_6

    add-int/lit8 v7, v5, 0x1

    .line 5
    aget-byte v5, p0, v5

    add-int/lit8 v8, v7, 0x1

    .line 6
    aget-byte v7, p0, v7

    add-int/lit8 v9, v8, 0x1

    .line 7
    aget-byte v8, p0, v8

    and-int/lit8 v10, v7, 0xf

    int-to-byte v10, v10

    and-int/lit8 v11, v5, 0x3

    int-to-byte v11, v11

    and-int/lit8 v12, v5, -0x80

    shr-int/lit8 v5, v5, 0x2

    if-nez v12, :cond_3

    goto :goto_2

    :cond_3
    xor-int/lit16 v5, v5, 0xc0

    :goto_2
    int-to-byte v5, v5

    and-int/lit8 v12, v7, -0x80

    shr-int/lit8 v7, v7, 0x4

    if-nez v12, :cond_4

    goto :goto_3

    :cond_4
    xor-int/lit16 v7, v7, 0xf0

    :goto_3
    int-to-byte v7, v7

    and-int/lit8 v12, v8, -0x80

    if-nez v12, :cond_5

    shr-int/lit8 v12, v8, 0x6

    goto :goto_4

    :cond_5
    shr-int/lit8 v12, v8, 0x6

    xor-int/lit16 v12, v12, 0xfc

    :goto_4
    int-to-byte v12, v12

    add-int/lit8 v13, v6, 0x1

    .line 8
    sget-object v14, Ln/a;->j:[C

    aget-char v5, v14, v5

    aput-char v5, v3, v6

    add-int/lit8 v5, v13, 0x1

    shl-int/lit8 v6, v11, 0x4

    or-int/2addr v6, v7

    .line 9
    aget-char v6, v14, v6

    aput-char v6, v3, v13

    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v7, v10, 0x2

    or-int/2addr v7, v12

    .line 10
    aget-char v7, v14, v7

    aput-char v7, v3, v5

    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v7, v8, 0x3f

    .line 11
    aget-char v7, v14, v7

    aput-char v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v5, v9

    goto :goto_1

    :cond_6
    const/16 v0, 0x3d

    if-ne v2, v1, :cond_8

    .line 12
    aget-byte p0, p0, v5

    and-int/lit8 v1, p0, 0x3

    int-to-byte v1, v1

    and-int/lit8 v2, p0, -0x80

    shr-int/lit8 p0, p0, 0x2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    xor-int/lit16 p0, p0, 0xc0

    :goto_5
    int-to-byte p0, p0

    add-int/lit8 v2, v6, 0x1

    .line 13
    sget-object v4, Ln/a;->j:[C

    aget-char p0, v4, p0

    aput-char p0, v3, v6

    add-int/lit8 p0, v2, 0x1

    shl-int/lit8 v1, v1, 0x4

    .line 14
    aget-char v1, v4, v1

    aput-char v1, v3, v2

    add-int/lit8 v1, p0, 0x1

    .line 15
    aput-char v0, v3, p0

    .line 16
    aput-char v0, v3, v1

    goto :goto_8

    :cond_8
    const/16 v1, 0x10

    if-ne v2, v1, :cond_b

    .line 17
    aget-byte v1, p0, v5

    add-int/lit8 v5, v5, 0x1

    .line 18
    aget-byte p0, p0, v5

    and-int/lit8 v2, p0, 0xf

    int-to-byte v2, v2

    and-int/lit8 v4, v1, 0x3

    int-to-byte v4, v4

    and-int/lit8 v5, v1, -0x80

    shr-int/lit8 v1, v1, 0x2

    if-nez v5, :cond_9

    goto :goto_6

    :cond_9
    xor-int/lit16 v1, v1, 0xc0

    :goto_6
    int-to-byte v1, v1

    and-int/lit8 v5, p0, -0x80

    shr-int/lit8 p0, p0, 0x4

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    xor-int/lit16 p0, p0, 0xf0

    :goto_7
    int-to-byte p0, p0

    add-int/lit8 v5, v6, 0x1

    .line 19
    sget-object v7, Ln/a;->j:[C

    aget-char v1, v7, v1

    aput-char v1, v3, v6

    add-int/lit8 v1, v5, 0x1

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr p0, v4

    .line 20
    aget-char p0, v7, p0

    aput-char p0, v3, v5

    add-int/lit8 p0, v1, 0x1

    shl-int/lit8 v2, v2, 0x2

    .line 21
    aget-char v2, v7, v2

    aput-char v2, v3, v1

    .line 22
    aput-char v0, v3, p0

    .line 23
    :cond_b
    :goto_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static c(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 14

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_1

    const/4 v5, 0x0

    goto :goto_3

    .line 2
    :cond_1
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-char v6, p0, v4

    const/16 v7, 0x20

    if-eq v6, v7, :cond_3

    const/16 v7, 0xd

    if-eq v6, v7, :cond_3

    const/16 v7, 0xa

    if-eq v6, v7, :cond_3

    const/16 v7, 0x9

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_4

    add-int/lit8 v6, v5, 0x1

    aget-char v7, p0, v4

    aput-char v7, p0, v5

    move v5, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3
    :cond_5
    :goto_3
    rem-int/lit8 v3, v5, 0x4

    if-eqz v3, :cond_6

    return-object v0

    .line 4
    :cond_6
    div-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_7

    new-array p0, v1, [B

    return-object p0

    :cond_7
    mul-int/lit8 v3, v5, 0x3

    .line 5
    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    add-int/lit8 v8, v5, -0x1

    if-ge v4, v8, :cond_a

    add-int/lit8 v8, v6, 0x1

    .line 6
    aget-char v6, p0, v6

    invoke-static {v6}, Ln/a;->f(C)Z

    move-result v9

    if-eqz v9, :cond_9

    add-int/lit8 v9, v8, 0x1

    aget-char v8, p0, v8

    invoke-static {v8}, Ln/a;->f(C)Z

    move-result v10

    if-eqz v10, :cond_9

    add-int/lit8 v10, v9, 0x1

    aget-char v9, p0, v9

    invoke-static {v9}, Ln/a;->f(C)Z

    move-result v11

    if-eqz v11, :cond_9

    add-int/lit8 v11, v10, 0x1

    aget-char v10, p0, v10

    invoke-static {v10}, Ln/a;->f(C)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_5

    .line 7
    :cond_8
    sget-object v12, Ln/a;->i:[B

    aget-byte v6, v12, v6

    .line 8
    aget-byte v8, v12, v8

    .line 9
    aget-byte v9, v12, v9

    .line 10
    aget-byte v10, v12, v10

    add-int/lit8 v12, v7, 0x1

    shl-int/lit8 v6, v6, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v6, v13

    int-to-byte v6, v6

    .line 11
    aput-byte v6, v3, v7

    add-int/lit8 v6, v12, 0x1

    and-int/lit8 v7, v8, 0xf

    shl-int/lit8 v7, v7, 0x4

    shr-int/lit8 v8, v9, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 12
    aput-byte v7, v3, v12

    add-int/lit8 v7, v6, 0x1

    shl-int/lit8 v8, v9, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    .line 13
    aput-byte v8, v3, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v11

    goto :goto_4

    :cond_9
    :goto_5
    return-object v0

    :cond_a
    add-int/lit8 v2, v6, 0x1

    .line 14
    aget-char v5, p0, v6

    invoke-static {v5}, Ln/a;->f(C)Z

    move-result v6

    if-eqz v6, :cond_11

    add-int/lit8 v6, v2, 0x1

    aget-char v2, p0, v2

    invoke-static {v2}, Ln/a;->f(C)Z

    move-result v8

    if-nez v8, :cond_b

    goto/16 :goto_7

    .line 15
    :cond_b
    sget-object v8, Ln/a;->i:[B

    aget-byte v5, v8, v5

    .line 16
    aget-byte v2, v8, v2

    add-int/lit8 v9, v6, 0x1

    .line 17
    aget-char v6, p0, v6

    .line 18
    aget-char p0, p0, v9

    .line 19
    invoke-static {v6}, Ln/a;->f(C)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {p0}, Ln/a;->f(C)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_6

    .line 20
    :cond_c
    aget-byte v0, v8, v6

    .line 21
    aget-byte p0, v8, p0

    add-int/lit8 v1, v7, 0x1

    shl-int/lit8 v4, v5, 0x2

    shr-int/lit8 v5, v2, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 22
    aput-byte v4, v3, v7

    add-int/lit8 v4, v1, 0x1

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v2, v5

    int-to-byte v2, v2

    .line 23
    aput-byte v2, v3, v1

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p0, v0

    int-to-byte p0, p0

    .line 24
    aput-byte p0, v3, v4

    return-object v3

    .line 25
    :cond_d
    :goto_6
    invoke-static {v6}, Ln/a;->e(C)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-static {p0}, Ln/a;->e(C)Z

    move-result v9

    if-eqz v9, :cond_f

    and-int/lit8 p0, v2, 0xf

    if-eqz p0, :cond_e

    return-object v0

    :cond_e
    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 p0, v4, 0x1

    .line 26
    new-array p0, p0, [B

    .line 27
    invoke-static {v3, v1, p0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v5, 0x2

    shr-int/lit8 v1, v2, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 28
    aput-byte v0, p0, v7

    return-object p0

    .line 29
    :cond_f
    invoke-static {v6}, Ln/a;->e(C)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-static {p0}, Ln/a;->e(C)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 30
    aget-byte p0, v8, v6

    and-int/lit8 v6, p0, 0x3

    if-eqz v6, :cond_10

    return-object v0

    :cond_10
    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v4, 0x2

    .line 31
    new-array v0, v0, [B

    .line 32
    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v7, 0x1

    shl-int/lit8 v3, v5, 0x2

    shr-int/lit8 v4, v2, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 33
    aput-byte v3, v0, v7

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, v2

    int-to-byte p0, p0

    .line 34
    aput-byte p0, v0, v1

    :cond_11
    :goto_7
    return-object v0
.end method

.method private static e(C)Z
    .locals 1

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static f(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Ln/a;->i:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
