.class final Lcom/google/common/hash/z;
.super Lcom/google/common/hash/c;
.source "Murmur3_32HashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/z$a;
    }
.end annotation


# static fields
.field static final b:Lcom/google/common/hash/m;

.field static final c:Lcom/google/common/hash/m;

.field private static final d:I = 0x4

.field private static final e:I = -0x3361d2af

.field private static final f:I = 0x1b873593

.field private static final g:J


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/hash/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/z;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/z;->b:Lcom/google/common/hash/m;

    .line 2
    new-instance v0, Lcom/google/common/hash/z;

    sget v1, Lcom/google/common/hash/o;->a:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/z;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/z;->c:Lcom/google/common/hash/m;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/common/hash/z;->a:I

    return-void
.end method

.method private static A(I)I
    .locals 1

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int p0, p0, v0

    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int p0, p0, v0

    return p0
.end method

.method static synthetic n(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/common/hash/z;->A(I)I

    move-result p0

    return p0
.end method

.method static synthetic o(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/hash/z;->z(II)I

    move-result p0

    return p0
.end method

.method static synthetic p([BI)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/hash/z;->y([BI)I

    move-result p0

    return p0
.end method

.method static synthetic q(C)J
    .locals 2

    invoke-static {p0}, Lcom/google/common/hash/z;->v(C)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic r(C)J
    .locals 2

    invoke-static {p0}, Lcom/google/common/hash/z;->u(C)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic s(I)J
    .locals 2

    invoke-static {p0}, Lcom/google/common/hash/z;->w(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic t(II)Lcom/google/common/hash/l;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/hash/z;->x(II)Lcom/google/common/hash/l;

    move-result-object p0

    return-object p0
.end method

.method private static u(C)J
    .locals 2

    ushr-int/lit8 v0, p0, 0xc

    or-int/lit16 v0, v0, 0x1e0

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static v(C)J
    .locals 2

    ushr-int/lit8 v0, p0, 0x6

    or-int/lit16 v0, v0, 0x3c0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static w(I)J
    .locals 7

    ushr-int/lit8 v0, p0, 0x12

    int-to-long v0, v0

    const-wide/16 v2, 0xf0

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    or-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    and-int/lit8 p0, p0, 0x3f

    int-to-long v2, p0

    or-long/2addr v2, v4

    const/16 p0, 0x18

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static x(II)Lcom/google/common/hash/l;
    .locals 0

    xor-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    const p1, -0x7a143595

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0xd

    xor-int/2addr p0, p1

    const p1, -0x3d4d51cb

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/common/hash/l;->k(I)Lcom/google/common/hash/l;

    move-result-object p0

    return-object p0
.end method

.method private static y([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte p0, p0, p1

    invoke-static {v0, v1, v2, p0}, Lcom/google/common/primitives/f;->k(BBBB)I

    move-result p0

    return p0
.end method

.method private static z(II)I
    .locals 0

    xor-int/2addr p0, p1

    const/16 p1, 0xd

    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    const p1, -0x19ab949c

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/l;
    .locals 11

    .line 1
    sget-object v0, Lcom/google/common/base/e;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/google/common/hash/z;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, 0x4

    const/16 v6, 0x80

    if-gt v5, v0, :cond_0

    .line 4
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v3, 0x1

    .line 5
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v3, 0x2

    .line 6
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    add-int/lit8 v10, v3, 0x3

    .line 7
    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ge v7, v6, :cond_0

    if-ge v8, v6, :cond_0

    if-ge v9, v6, :cond_0

    if-ge v10, v6, :cond_0

    shl-int/lit8 v3, v8, 0x8

    or-int/2addr v3, v7

    shl-int/lit8 v6, v9, 0x10

    or-int/2addr v3, v6

    shl-int/lit8 v6, v10, 0x18

    or-int/2addr v3, v6

    .line 8
    invoke-static {v3}, Lcom/google/common/hash/z;->A(I)I

    move-result v3

    .line 9
    invoke-static {v1, v3}, Lcom/google/common/hash/z;->z(II)I

    move-result v1

    add-int/lit8 v4, v4, 0x4

    move v3, v5

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    :goto_1
    if-ge v3, v0, :cond_7

    .line 10
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ge v5, v6, :cond_1

    int-to-long v9, v5

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    const/16 v9, 0x800

    if-ge v5, v9, :cond_2

    .line 11
    invoke-static {v5}, Lcom/google/common/hash/z;->v(C)J

    move-result-wide v9

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_2
    const v9, 0xd800

    if-lt v5, v9, :cond_5

    const v9, 0xdfff

    if-le v5, v9, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    if-ne v9, v5, :cond_4

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/c;->e([B)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 14
    invoke-static {v9}, Lcom/google/common/hash/z;->w(I)J

    move-result-wide v9

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    add-int/lit8 v4, v4, 0x4

    goto :goto_3

    .line 15
    :cond_5
    :goto_2
    invoke-static {v5}, Lcom/google/common/hash/z;->u(C)J

    move-result-wide v9

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    add-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v4, 0x3

    :goto_3
    const/16 v5, 0x20

    if-lt v2, v5, :cond_6

    long-to-int v9, v7

    .line 16
    invoke-static {v9}, Lcom/google/common/hash/z;->A(I)I

    move-result v9

    .line 17
    invoke-static {v1, v9}, Lcom/google/common/hash/z;->z(II)I

    move-result v1

    ushr-long/2addr v7, v5

    add-int/lit8 v2, v2, -0x20

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    long-to-int p1, v7

    .line 18
    invoke-static {p1}, Lcom/google/common/hash/z;->A(I)I

    move-result p1

    xor-int/2addr p1, v1

    .line 19
    invoke-static {p1, v4}, Lcom/google/common/hash/z;->x(II)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1

    .line 20
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/c;->e([B)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/hash/z;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 3
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    .line 4
    invoke-static {v3}, Lcom/google/common/hash/z;->A(I)I

    move-result v3

    .line 5
    invoke-static {v0, v3}, Lcom/google/common/hash/z;->z(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 8
    invoke-static {v1}, Lcom/google/common/hash/z;->A(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Lcom/google/common/hash/z;->x(II)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/hash/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/hash/z;

    .line 3
    iget v0, p0, Lcom/google/common/hash/z;->a:I

    iget p1, p1, Lcom/google/common/hash/z;->a:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public h()Lcom/google/common/hash/n;
    .locals 2

    new-instance v0, Lcom/google/common/hash/z$a;

    iget v1, p0, Lcom/google/common/hash/z;->a:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/z$a;-><init>(I)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const-class v0, Lcom/google/common/hash/z;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/z;->a:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public i(I)Lcom/google/common/hash/l;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/hash/z;->A(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/google/common/hash/z;->a:I

    invoke-static {v0, p1}, Lcom/google/common/hash/z;->z(II)I

    move-result p1

    const/4 v0, 0x4

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/hash/z;->x(II)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public l(J)Lcom/google/common/hash/l;
    .locals 2

    long-to-int v0, p1

    const/16 v1, 0x20

    ushr-long/2addr p1, v1

    long-to-int p2, p1

    .line 1
    invoke-static {v0}, Lcom/google/common/hash/z;->A(I)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/google/common/hash/z;->a:I

    invoke-static {v0, p1}, Lcom/google/common/hash/z;->z(II)I

    move-result p1

    .line 3
    invoke-static {p2}, Lcom/google/common/hash/z;->A(I)I

    move-result p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/common/hash/z;->z(II)I

    move-result p1

    const/16 p2, 0x8

    .line 5
    invoke-static {p1, p2}, Lcom/google/common/hash/z;->x(II)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public m([BII)Lcom/google/common/hash/l;
    .locals 5

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/a0;->f0(III)V

    .line 2
    iget v0, p0, Lcom/google/common/hash/z;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x4

    if-gt v3, p3, :cond_0

    add-int/2addr v2, p2

    .line 3
    invoke-static {p1, v2}, Lcom/google/common/hash/z;->y([BI)I

    move-result v2

    invoke-static {v2}, Lcom/google/common/hash/z;->A(I)I

    move-result v2

    .line 4
    invoke-static {v0, v2}, Lcom/google/common/hash/z;->z(II)I

    move-result v0

    move v2, v3

    goto :goto_0

    :cond_0
    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v3, p3, :cond_1

    add-int v4, p2, v3

    .line 5
    aget-byte v4, p1, v4

    invoke-static {v4}, Lcom/google/common/primitives/l;->p(B)I

    move-result v4

    shl-int/2addr v4, v2

    xor-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v1}, Lcom/google/common/hash/z;->A(I)I

    move-result p1

    xor-int/2addr p1, v0

    .line 7
    invoke-static {p1, p3}, Lcom/google/common/hash/z;->x(II)Lcom/google/common/hash/l;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashing.murmur3_32("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/common/hash/z;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
