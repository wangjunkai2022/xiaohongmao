.class public abstract Lcom/google/common/hash/l;
.super Ljava/lang/Object;
.source "HashCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/l$a;,
        Lcom/google/common/hash/l$c;,
        Lcom/google/common/hash/l$b;
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/l;->a:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal hexadecimal character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i([B)Lcom/google/common/hash/l;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "A HashCode must contain at least 1 byte."

    invoke-static {v1, v0}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Lcom/google/common/hash/l;->j([B)Lcom/google/common/hash/l;

    move-result-object p0

    return-object p0
.end method

.method static j([B)Lcom/google/common/hash/l;
    .locals 1

    new-instance v0, Lcom/google/common/hash/l$a;

    invoke-direct {v0, p0}, Lcom/google/common/hash/l$a;-><init>([B)V

    return-object v0
.end method

.method public static k(I)Lcom/google/common/hash/l;
    .locals 1

    new-instance v0, Lcom/google/common/hash/l$b;

    invoke-direct {v0, p0}, Lcom/google/common/hash/l$b;-><init>(I)V

    return-object v0
.end method

.method public static l(J)Lcom/google/common/hash/l;
    .locals 1

    new-instance v0, Lcom/google/common/hash/l$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/l$c;-><init>(J)V

    return-object v0
.end method

.method public static m(Ljava/lang/String;)Lcom/google/common/hash/l;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "input string (%s) must have at least 2 characters"

    .line 2
    invoke-static {v0, v4, p0}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/2addr v0, v3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "input string (%s) must have an even number of characters"

    .line 4
    invoke-static {v1, v0, p0}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v3

    new-array v0, v0, [B

    .line 6
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 7
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/common/hash/l;->e(C)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v3, v2, 0x1

    .line 8
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/common/hash/l;->e(C)I

    move-result v3

    .line 9
    div-int/lit8 v4, v2, 0x2

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 10
    :cond_2
    invoke-static {v0}, Lcom/google/common/hash/l;->j([B)Lcom/google/common/hash/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()[B
.end method

.method public abstract b()I
.end method

.method public abstract c()J
.end method

.method public abstract d()I
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/hash/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/hash/l;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/hash/l;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/common/hash/l;->d()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/hash/l;->h(Lcom/google/common/hash/l;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method abstract h(Lcom/google/common/hash/l;)Z
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/hash/l;->d()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/hash/l;->b()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/hash/l;->n()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    .line 5
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 6
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method n()[B
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/hash/l;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public abstract o()J
.end method

.method public p([BII)I
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/hash/l;->d()I

    move-result p3

    div-int/lit8 p3, p3, 0x8

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/f;->u([I)I

    move-result p3

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/a0;->f0(III)V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/l;->q([BII)V

    return p3
.end method

.method abstract q([BII)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/common/hash/l;->n()[B

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .line 4
    sget-object v5, Lcom/google/common/hash/l;->a:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
