.class public final Lcom/fasterxml/jackson/core/io/e;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final a:[C

.field private static final b:[B

.field private static final c:I = 0xd800

.field private static final d:I = 0xdbff

.field private static final e:I = 0xdc00

.field private static final f:I = 0xdfff

.field static final g:I = 0x10

.field static final h:I = 0x7d00

.field static final i:I = 0x18

.field static final j:I = 0x7d00

.field private static final k:Lcom/fasterxml/jackson/core/io/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/b;->d()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/e;->a:[C

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/core/io/b;->c()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/e;->b:[B

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/core/io/e;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/e;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/e;->k:Lcom/fasterxml/jackson/core/io/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(IILcom/fasterxml/jackson/core/util/c;I)I
    .locals 1

    .line 1
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/c;->D(I)V

    const/16 p4, 0x5c

    .line 2
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    if-gez p2, :cond_1

    const/16 p2, 0x75

    .line 3
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    const/16 p2, 0xff

    if-le p1, p2, :cond_0

    shr-int/lit8 p2, p1, 0x8

    .line 4
    sget-object p4, Lcom/fasterxml/jackson/core/io/e;->b:[B

    shr-int/lit8 v0, p2, 0x4

    aget-byte v0, p4, v0

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    and-int/lit8 p2, p2, 0xf

    .line 5
    aget-byte p2, p4, p2

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_0
    const/16 p2, 0x30

    .line 6
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    .line 7
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    .line 8
    :goto_0
    sget-object p2, Lcom/fasterxml/jackson/core/io/e;->b:[B

    shr-int/lit8 p4, p1, 0x4

    aget-byte p4, p2, p4

    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    and-int/lit8 p1, p1, 0xf

    .line 9
    aget-byte p1, p2, p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    goto :goto_1

    :cond_1
    int-to-byte p1, p2

    .line 10
    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    .line 11
    :goto_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/util/c;->s()I

    move-result p1

    return p1
.end method

.method private b(I[C)I
    .locals 1

    int-to-char p1, p1

    const/4 v0, 0x1

    aput-char p1, p2, v0

    const/4 p1, 0x2

    return p1
.end method

.method private c(I[C)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x75

    .line 1
    aput-char v1, p2, v0

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/io/e;->a:[C

    shr-int/lit8 v1, p1, 0x4

    aget-char v1, v0, v1

    const/4 v2, 0x4

    aput-char v1, p2, v2

    and-int/lit8 p1, p1, 0xf

    .line 3
    aget-char p1, v0, p1

    const/4 v0, 0x5

    aput-char p1, p2, v0

    const/4 p1, 0x6

    return p1
.end method

.method private static d(II)I
    .locals 3

    const v0, 0xdc00

    if-lt p1, v0, :cond_0

    const v1, 0xdfff

    if-gt p1, v1, :cond_0

    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0xa

    add-int/2addr p0, v1

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", second 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; illegal combination"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static e(I)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/k;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static f(I)I
    .locals 1

    add-int/lit8 v0, p0, 0x6

    shr-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    const/16 p0, 0x18

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x7d00

    .line 2
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method static g(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0x3

    add-int/lit8 v0, v0, 0x6

    const/16 v1, 0x3e8

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr p0, v0

    const/16 v0, 0x10

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x7d00

    .line 3
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private h()[C
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v1, 0x3

    aput-char v2, v0, v1

    return-object v0
.end method

.method public static k()Lcom/fasterxml/jackson/core/io/e;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/io/e;->k:Lcom/fasterxml/jackson/core/io/e;

    return-object v0
.end method


# virtual methods
.method public i(Ljava/lang/CharSequence;)[B
    .locals 11

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/e;->f(I)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v0, :cond_10

    add-int/lit8 v7, v5, 0x1

    .line 3
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    :goto_1
    const/16 v8, 0x7f

    if-gt v5, v8, :cond_3

    if-lt v6, v1, :cond_1

    if-nez v4, :cond_0

    .line 4
    invoke-static {v2, v6}, Lcom/fasterxml/jackson/core/util/c;->q([BI)Lcom/fasterxml/jackson/core/util/c;

    move-result-object v4

    .line 5
    :cond_0
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    .line 6
    array-length v2, v1

    const/4 v6, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_1
    add-int/lit8 v8, v6, 0x1

    int-to-byte v5, v5

    .line 7
    aput-byte v5, v2, v6

    if-lt v7, v0, :cond_2

    move v6, v8

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v5, v7, 0x1

    .line 8
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v7, v5

    move v5, v6

    move v6, v8

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    .line 9
    invoke-static {v2, v6}, Lcom/fasterxml/jackson/core/util/c;->q([BI)Lcom/fasterxml/jackson/core/util/c;

    move-result-object v4

    :cond_4
    if-lt v6, v1, :cond_5

    .line 10
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v2

    .line 11
    array-length v1, v2

    const/4 v6, 0x0

    :cond_5
    const/16 v8, 0x800

    if-ge v5, v8, :cond_6

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v5, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 12
    aput-byte v9, v2, v6

    :goto_2
    move v6, v5

    move v5, v7

    goto/16 :goto_4

    :cond_6
    const v8, 0xd800

    if-lt v5, v8, :cond_d

    const v8, 0xdfff

    if-le v5, v8, :cond_7

    goto :goto_3

    :cond_7
    const v8, 0xdbff

    if-le v5, v8, :cond_8

    .line 13
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/e;->e(I)V

    :cond_8
    if-lt v7, v0, :cond_9

    .line 14
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/e;->e(I)V

    :cond_9
    add-int/lit8 v8, v7, 0x1

    .line 15
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v5, v7}, Lcom/fasterxml/jackson/core/io/e;->d(II)I

    move-result v5

    const v7, 0x10ffff

    if-le v5, v7, :cond_a

    .line 16
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/e;->e(I)V

    :cond_a
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v5, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    .line 17
    aput-byte v9, v2, v6

    if-lt v7, v1, :cond_b

    .line 18
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v2

    .line 19
    array-length v1, v2

    const/4 v7, 0x0

    :cond_b
    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 20
    aput-byte v9, v2, v7

    if-lt v6, v1, :cond_c

    .line 21
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    .line 22
    array-length v2, v1

    const/4 v6, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_c
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 23
    aput-byte v9, v2, v6

    move v6, v5

    move v5, v8

    move v8, v7

    goto :goto_4

    :cond_d
    :goto_3
    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v5, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    .line 24
    aput-byte v9, v2, v6

    if-lt v8, v1, :cond_e

    .line 25
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    .line 26
    array-length v2, v1

    const/4 v8, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_e
    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 27
    aput-byte v9, v2, v8

    move v8, v6

    goto/16 :goto_2

    :goto_4
    if-lt v8, v1, :cond_f

    .line 28
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    .line 29
    array-length v2, v1

    const/4 v8, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_f
    add-int/lit8 v7, v8, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 30
    aput-byte v6, v2, v8

    move v6, v7

    goto/16 :goto_0

    :cond_10
    :goto_5
    if-nez v4, :cond_11

    .line 31
    invoke-static {v2, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 32
    :cond_11
    invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/core/util/c;->k(I)[B

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)[B
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/e;->f(I)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v0, :cond_10

    add-int/lit8 v7, v5, 0x1

    .line 3
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    const/16 v8, 0x7f

    if-gt v5, v8, :cond_3

    if-lt v6, v1, :cond_1

    if-nez v4, :cond_0

    .line 4
    invoke-static {v2, v6}, Lcom/fasterxml/jackson/core/util/c;->q([BI)Lcom/fasterxml/jackson/core/util/c;

    move-result-object v4

    .line 5
    :cond_0
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    .line 6
    array-length v2, v1

    const/4 v6, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_1
    add-int/lit8 v8, v6, 0x1

    int-to-byte v5, v5

    .line 7
    aput-byte v5, v2, v6

    if-lt v7, v0, :cond_2

    move v6, v8

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v5, v7, 0x1

    .line 8
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v5

    move v5, v6

    move v6, v8

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    .line 9
    invoke-static {v2, v6}, Lcom/fasterxml/jackson/core/util/c;->q([BI)Lcom/fasterxml/jackson/core/util/c;

    move-result-object v4

    :cond_4
    if-lt v6, v1, :cond_5

    .line 10
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v2

    .line 11
    array-length v1, v2

    const/4 v6, 0x0

    :cond_5
    const/16 v8, 0x800

    if-ge v5, v8, :cond_6

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v5, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 12
    aput-byte v9, v2, v6

    :goto_2
    move v6, v5

    move v5, v7

    goto/16 :goto_4

    :cond_6
    const v8, 0xd800

    if-lt v5, v8, :cond_d

    const v8, 0xdfff

    if-le v5, v8, :cond_7

    goto :goto_3

    :cond_7
    const v8, 0xdbff

    if-le v5, v8, :cond_8

    .line 13
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/e;->e(I)V

    :cond_8
    if-lt v7, v0, :cond_9

    .line 14
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/e;->e(I)V

    :cond_9
    add-int/lit8 v8, v7, 0x1

    .line 15
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v5, v7}, Lcom/fasterxml/jackson/core/io/e;->d(II)I

    move-result v5

    const v7, 0x10ffff

    if-le v5, v7, :cond_a

    .line 16
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/e;->e(I)V

    :cond_a
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v5, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    .line 17
    aput-byte v9, v2, v6

    if-lt v7, v1, :cond_b

    .line 18
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v2

    .line 19
    array-length v1, v2

    const/4 v7, 0x0

    :cond_b
    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 20
    aput-byte v9, v2, v7

    if-lt v6, v1, :cond_c

    .line 21
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    .line 22
    array-length v2, v1

    const/4 v6, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_c
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 23
    aput-byte v9, v2, v6

    move v6, v5

    move v5, v8

    move v8, v7

    goto :goto_4

    :cond_d
    :goto_3
    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v5, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    .line 24
    aput-byte v9, v2, v6

    if-lt v8, v1, :cond_e

    .line 25
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    .line 26
    array-length v2, v1

    const/4 v8, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_e
    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 27
    aput-byte v9, v2, v8

    move v8, v6

    goto/16 :goto_2

    :goto_4
    if-lt v8, v1, :cond_f

    .line 28
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    .line 29
    array-length v2, v1

    const/4 v8, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_f
    add-int/lit8 v7, v8, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 30
    aput-byte v6, v2, v8

    move v6, v7

    goto/16 :goto_0

    :cond_10
    :goto_5
    if-nez v4, :cond_11

    .line 31
    invoke-static {v2, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 32
    :cond_11
    invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/core/util/c;->k(I)[B

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/b;->e()[I

    move-result-object v0

    .line 2
    array-length v1, v0

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    .line 4
    :cond_0
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v1, :cond_3

    .line 5
    aget v7, v0, v6

    if-eqz v7, :cond_3

    if-nez v4, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/e;->h()[C

    move-result-object v4

    :cond_1
    add-int/lit8 v6, v5, 0x1

    .line 7
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 8
    aget v7, v0, v5

    if-gez v7, :cond_2

    .line 9
    invoke-direct {p0, v5, v4}, Lcom/fasterxml/jackson/core/io/e;->c(I[C)I

    move-result v5

    goto :goto_1

    .line 10
    :cond_2
    invoke-direct {p0, v7, v4}, Lcom/fasterxml/jackson/core/io/e;->b(I[C)I

    move-result v5

    .line 11
    :goto_1
    invoke-virtual {p2, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v5, v6

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v2, :cond_0

    :cond_4
    return-void
.end method

.method public m(Ljava/lang/CharSequence;)[C
    .locals 12

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/e;->n(Ljava/lang/String;)[C

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/e;->g(I)I

    move-result v1

    new-array v1, v1, [C

    .line 5
    invoke-static {}, Lcom/fasterxml/jackson/core/io/b;->e()[I

    move-result-object v2

    .line 6
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v0, :cond_a

    .line 7
    :goto_1
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ge v9, v3, :cond_6

    .line 8
    aget v10, v2, v9

    if-eqz v10, :cond_6

    if-nez v6, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/e;->h()[C

    move-result-object v6

    :cond_1
    add-int/lit8 v9, v7, 0x1

    .line 10
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 11
    aget v10, v2, v7

    if-gez v10, :cond_2

    .line 12
    invoke-direct {p0, v7, v6}, Lcom/fasterxml/jackson/core/io/e;->c(I[C)I

    move-result v7

    goto :goto_2

    .line 13
    :cond_2
    invoke-direct {p0, v10, v6}, Lcom/fasterxml/jackson/core/io/e;->b(I[C)I

    move-result v7

    :goto_2
    add-int v10, v8, v7

    .line 14
    array-length v11, v1

    if-le v10, v11, :cond_5

    .line 15
    array-length v10, v1

    sub-int/2addr v10, v8

    if-lez v10, :cond_3

    .line 16
    invoke-static {v6, v5, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-nez v4, :cond_4

    .line 17
    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/j;->t([C)Lcom/fasterxml/jackson/core/util/j;

    move-result-object v4

    .line 18
    :cond_4
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object v1

    sub-int/2addr v7, v10

    .line 19
    invoke-static {v6, v10, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v7

    goto :goto_3

    .line 20
    :cond_5
    invoke-static {v6, v5, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v10

    :goto_3
    move v7, v9

    goto :goto_0

    .line 21
    :cond_6
    array-length v10, v1

    if-lt v8, v10, :cond_8

    if-nez v4, :cond_7

    .line 22
    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/j;->t([C)Lcom/fasterxml/jackson/core/util/j;

    move-result-object v4

    .line 23
    :cond_7
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object v1

    const/4 v8, 0x0

    :cond_8
    add-int/lit8 v10, v8, 0x1

    .line 24
    aput-char v9, v1, v8

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v0, :cond_9

    move v8, v10

    goto :goto_4

    :cond_9
    move v8, v10

    goto :goto_1

    :cond_a
    :goto_4
    if-nez v4, :cond_b

    .line 25
    invoke-static {v1, v5, v8}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    return-object p1

    .line 26
    :cond_b
    invoke-virtual {v4, v8}, Lcom/fasterxml/jackson/core/util/j;->J(I)V

    .line 27
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->g()[C

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;)[C
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/e;->g(I)I

    move-result v1

    new-array v1, v1, [C

    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/core/io/b;->e()[I

    move-result-object v2

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v0, :cond_9

    .line 5
    :goto_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ge v9, v3, :cond_5

    .line 6
    aget v10, v2, v9

    if-eqz v10, :cond_5

    if-nez v6, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/e;->h()[C

    move-result-object v6

    :cond_0
    add-int/lit8 v9, v7, 0x1

    .line 8
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 9
    aget v10, v2, v7

    if-gez v10, :cond_1

    .line 10
    invoke-direct {p0, v7, v6}, Lcom/fasterxml/jackson/core/io/e;->c(I[C)I

    move-result v7

    goto :goto_2

    .line 11
    :cond_1
    invoke-direct {p0, v10, v6}, Lcom/fasterxml/jackson/core/io/e;->b(I[C)I

    move-result v7

    :goto_2
    add-int v10, v8, v7

    .line 12
    array-length v11, v1

    if-le v10, v11, :cond_4

    .line 13
    array-length v10, v1

    sub-int/2addr v10, v8

    if-lez v10, :cond_2

    .line 14
    invoke-static {v6, v5, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-nez v4, :cond_3

    .line 15
    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/j;->t([C)Lcom/fasterxml/jackson/core/util/j;

    move-result-object v4

    .line 16
    :cond_3
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object v1

    sub-int/2addr v7, v10

    .line 17
    invoke-static {v6, v10, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v7

    goto :goto_3

    .line 18
    :cond_4
    invoke-static {v6, v5, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v10

    :goto_3
    move v7, v9

    goto :goto_0

    .line 19
    :cond_5
    array-length v10, v1

    if-lt v8, v10, :cond_7

    if-nez v4, :cond_6

    .line 20
    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/j;->t([C)Lcom/fasterxml/jackson/core/util/j;

    move-result-object v4

    .line 21
    :cond_6
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object v1

    const/4 v8, 0x0

    :cond_7
    add-int/lit8 v10, v8, 0x1

    .line 22
    aput-char v9, v1, v8

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v0, :cond_8

    move v8, v10

    goto :goto_4

    :cond_8
    move v8, v10

    goto :goto_1

    :cond_9
    :goto_4
    if-nez v4, :cond_a

    .line 23
    invoke-static {v1, v5, v8}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    return-object p1

    .line 24
    :cond_a
    invoke-virtual {v4, v8}, Lcom/fasterxml/jackson/core/util/j;->J(I)V

    .line 25
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/j;->g()[C

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;)[B
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/e;->f(I)I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_12

    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/core/io/b;->e()[I

    move-result-object v6

    .line 4
    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7f

    if-gt v7, v8, :cond_4

    .line 5
    aget v9, v6, v7

    if-eqz v9, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    array-length v8, v1

    if-lt v5, v8, :cond_2

    if-nez v3, :cond_1

    .line 7
    invoke-static {v1, v5}, Lcom/fasterxml/jackson/core/util/c;->q([BI)Lcom/fasterxml/jackson/core/util/c;

    move-result-object v3

    .line 8
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    const/4 v5, 0x0

    :cond_2
    add-int/lit8 v8, v5, 0x1

    int-to-byte v7, v7

    .line 9
    aput-byte v7, v1, v5

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_3

    move v5, v8

    goto/16 :goto_6

    :cond_3
    move v5, v8

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 10
    invoke-static {v1, v5}, Lcom/fasterxml/jackson/core/util/c;->q([BI)Lcom/fasterxml/jackson/core/util/c;

    move-result-object v3

    .line 11
    :cond_5
    array-length v7, v1

    if-lt v5, v7, :cond_6

    .line 12
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    const/4 v5, 0x0

    :cond_6
    add-int/lit8 v7, v4, 0x1

    .line 13
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v8, :cond_7

    .line 14
    aget v1, v6, v4

    .line 15
    invoke-direct {p0, v4, v1, v3, v5}, Lcom/fasterxml/jackson/core/io/e;->a(IILcom/fasterxml/jackson/core/util/c;I)I

    move-result v5

    .line 16
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/c;->r()[B

    move-result-object v1

    move v4, v7

    goto :goto_0

    :cond_7
    const/16 v6, 0x7ff

    if-gt v4, v6, :cond_8

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v4, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    .line 17
    aput-byte v8, v1, v5

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    :goto_3
    move v5, v4

    move v4, v7

    goto/16 :goto_5

    :cond_8
    const v6, 0xd800

    if-lt v4, v6, :cond_f

    const v6, 0xdfff

    if-le v4, v6, :cond_9

    goto :goto_4

    :cond_9
    const v6, 0xdbff

    if-le v4, v6, :cond_a

    .line 18
    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/e;->e(I)V

    :cond_a
    if-lt v7, v0, :cond_b

    .line 19
    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/e;->e(I)V

    :cond_b
    add-int/lit8 v6, v7, 0x1

    .line 20
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v4, v7}, Lcom/fasterxml/jackson/core/io/e;->d(II)I

    move-result v4

    const v7, 0x10ffff

    if-le v4, v7, :cond_c

    .line 21
    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/e;->e(I)V

    :cond_c
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v4, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    .line 22
    aput-byte v8, v1, v5

    .line 23
    array-length v5, v1

    if-lt v7, v5, :cond_d

    .line 24
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    const/4 v7, 0x0

    :cond_d
    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v4, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 25
    aput-byte v8, v1, v7

    .line 26
    array-length v7, v1

    if-lt v5, v7, :cond_e

    .line 27
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    const/4 v5, 0x0

    :cond_e
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 28
    aput-byte v8, v1, v5

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    move v5, v4

    move v4, v6

    move v6, v7

    goto :goto_5

    :cond_f
    :goto_4
    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v4, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    .line 29
    aput-byte v8, v1, v5

    .line 30
    array-length v5, v1

    if-lt v6, v5, :cond_10

    .line 31
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    const/4 v6, 0x0

    :cond_10
    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 32
    aput-byte v8, v1, v6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    move v6, v5

    goto/16 :goto_3

    .line 33
    :goto_5
    array-length v7, v1

    if-lt v6, v7, :cond_11

    .line 34
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/c;->p()[B

    move-result-object v1

    const/4 v6, 0x0

    :cond_11
    add-int/lit8 v7, v6, 0x1

    int-to-byte v5, v5

    .line 35
    aput-byte v5, v1, v6

    move v5, v7

    goto/16 :goto_0

    :cond_12
    :goto_6
    if-nez v3, :cond_13

    .line 36
    invoke-static {v1, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 37
    :cond_13
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/core/util/c;->k(I)[B

    move-result-object p1

    return-object p1
.end method
