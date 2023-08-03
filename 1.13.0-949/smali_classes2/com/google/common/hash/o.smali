.class public final Lcom/google/common/hash/o;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/o$d;,
        Lcom/google/common/hash/o$c;,
        Lcom/google/common/hash/o$b;,
        Lcom/google/common/hash/o$i;,
        Lcom/google/common/hash/o$h;,
        Lcom/google/common/hash/o$g;,
        Lcom/google/common/hash/o$f;,
        Lcom/google/common/hash/o$e;
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/google/common/hash/o;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Lcom/google/common/hash/m;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/hash/o$f;->a:Lcom/google/common/hash/m;

    return-object v0
.end method

.method public static B()Lcom/google/common/hash/m;
    .locals 1

    sget-object v0, Lcom/google/common/hash/o$g;->a:Lcom/google/common/hash/m;

    return-object v0
.end method

.method public static C()Lcom/google/common/hash/m;
    .locals 1

    sget-object v0, Lcom/google/common/hash/o$h;->a:Lcom/google/common/hash/m;

    return-object v0
.end method

.method public static D()Lcom/google/common/hash/m;
    .locals 1

    sget-object v0, Lcom/google/common/hash/o$i;->a:Lcom/google/common/hash/m;

    return-object v0
.end method

.method public static E()Lcom/google/common/hash/m;
    .locals 1

    sget-object v0, Lcom/google/common/hash/b0;->e:Lcom/google/common/hash/m;

    return-object v0
.end method

.method public static F(JJ)Lcom/google/common/hash/m;
    .locals 8

    new-instance v7, Lcom/google/common/hash/b0;

    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v0, v7

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/hash/b0;-><init>(IIJJ)V

    return-object v7
.end method

.method public static a()Lcom/google/common/hash/m;
    .locals 1

    sget-object v0, Lcom/google/common/hash/o$b;->c:Lcom/google/common/hash/o$b;

    iget-object v0, v0, Lcom/google/common/hash/o$b;->a:Lcom/google/common/hash/m;

    return-object v0
.end method

.method static b(I)I
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Number of bits must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1f

    and-int/lit8 p0, p0, -0x20

    return p0
.end method

.method public static c(Ljava/lang/Iterable;)Lcom/google/common/hash/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/l;",
            ">;)",
            "Lcom/google/common/hash/l;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Must be at least 1 hash code to combine."

    invoke-static {v1, v2}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/l;

    invoke-virtual {v0}, Lcom/google/common/hash/l;->d()I

    move-result v0

    .line 4
    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/hash/l;

    .line 6
    invoke-virtual {v2}, Lcom/google/common/hash/l;->a()[B

    move-result-object v2

    .line 7
    array-length v3, v2

    const/4 v4, 0x0

    if-ne v3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v5, "All hashcodes must have the same bit length."

    invoke-static {v3, v5}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 8
    :goto_1
    array-length v3, v2

    if-ge v4, v3, :cond_0

    .line 9
    aget-byte v3, v1, v4

    mul-int/lit8 v3, v3, 0x25

    aget-byte v5, v2, v4

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v1}, Lcom/google/common/hash/l;->j([B)Lcom/google/common/hash/l;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Iterable;)Lcom/google/common/hash/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/l;",
            ">;)",
            "Lcom/google/common/hash/l;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Must be at least 1 hash code to combine."

    invoke-static {v1, v2}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/l;

    invoke-virtual {v0}, Lcom/google/common/hash/l;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/hash/l;

    .line 5
    invoke-virtual {v2}, Lcom/google/common/hash/l;->a()[B

    move-result-object v2

    .line 6
    array-length v3, v2

    const/4 v4, 0x0

    if-ne v3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v5, "All hashcodes must have the same bit length."

    invoke-static {v3, v5}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 7
    :goto_1
    array-length v3, v2

    if-ge v4, v3, :cond_0

    .line 8
    aget-byte v3, v1, v4

    aget-byte v5, v2, v4

    add-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v1}, Lcom/google/common/hash/l;->j([B)Lcom/google/common/hash/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e(Lcom/google/common/hash/m;Lcom/google/common/hash/m;[Lcom/google/common/hash/m;)Lcom/google/common/hash/m;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    new-instance p0, Lcom/google/common/hash/o$c;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/common/hash/m;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/common/hash/m;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/o$c;-><init>([Lcom/google/common/hash/m;Lcom/google/common/hash/o$a;)V

    return-object p0
.end method

.method public static f(Ljava/lang/Iterable;)Lcom/google/common/hash/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/m;",
            ">;)",
            "Lcom/google/common/hash/m;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/m;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "number of hash functions (%s) must be > 0"

    invoke-static {p0, v3, v2}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    .line 6
    new-instance p0, Lcom/google/common/hash/o$c;

    new-array v1, v1, [Lcom/google/common/hash/m;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/m;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/hash/o$c;-><init>([Lcom/google/common/hash/m;Lcom/google/common/hash/o$a;)V

    return-object p0
.end method

.method public static g(JI)I
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "buckets must be positive: %s"

    .line 1
    invoke-static {v1, v2, p2}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    .line 2
    new-instance v1, Lcom/google/common/hash/o$d;

    invoke-direct {v1, p0, p1}, Lcom/google/common/hash/o$d;-><init>(J)V

    :goto_1
    add-int/lit8 p0, v0, 0x1

    int-to-double p0, p0

    .line 3
    invoke-virtual {v1}, Lcom/google/common/hash/o$d;->a()D

    move-result-wide v2

    div-double/2addr p0, v2

    double-to-int p0, p0

    if-ltz p0, :cond_1

    if-ge p0, p2, :cond_1

    move v0, p0

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static h(Lcom/google/common/hash/l;I)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/hash/l;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/hash/o;->g(JI)I

    move-result p0

    return p0
.end method

.method public static i()Lcom/google/common/hash/m;
    .locals 1

    sget-object v0, Lcom/google/common/hash/o$b;->b:Lcom/google/common/hash/o$b;

    iget-object v0, v0, Lcom/google/common/hash/o$b;->a:Lcom/google/common/hash/m;

    return-object v0
.end method

.method public static j()Lcom/google/common/hash/m;
    .locals 1

    sget-object v0, Lcom/google/common/hash/i;->a:Lcom/google/common/hash/m;

    return-object v0
.end method

.method public static k()Lcom/google/common/hash/m;
    .locals 1

    sget-object v0, Lcom/google/common/hash/j;->a:Lcom/google/common/hash/m;

    return-object v0
.end method

.method public static l(I)Lcom/google/common/hash/m;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/hash/o;->b(I)I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/google/common/hash/z;->c:Lcom/google/common/hash/m;

    return-object p0

    :cond_0
    const/16 v0, 0x80

    if-gt p0, v0, :cond_1

    .line 3
    sget-object p0, Lcom/google/common/hash/y;->c:Lcom/google/common/hash/m;

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x7f

    .line 4
    div-int/2addr p0, v0

    .line 5
    new-array v0, p0, [Lcom/google/common/hash/m;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/common/hash/y;->c:Lcom/google/common/hash/m;

    aput-object v2, v0, v1

    .line 7
    sget v1, Lcom/google/common/hash/o;->a:I

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p0, :cond_2

    const v3, 0x596f0ddf

    add-int/2addr v1, v3

    .line 8
    invoke-static {v1}, Lcom/google/common/hash/o;->x(I)Lcom/google/common/hash/m;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    new-instance p0, Lcom/google/common/hash/o$c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/hash/o$c;-><init>([Lcom/google/common/hash/m;Lcom/google/common/hash/o$a;)V

    return-object p0
.end method

.method public static m(Ljava/security/Key;)Lcom/google/common/hash/m;
    .locals 3

    new-instance v0, Lcom/google/common/hash/w;

    const-string v1, "hmacMd5"

    invoke-static {v1, p0}, Lcom/google/common/hash/o;->u(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacMD5"

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/hash/w;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static n([B)Lcom/google/common/hash/m;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "HmacMD5"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/o;->m(Ljava/security/Key;)Lcom/google/common/hash/m;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/security/Key;)Lcom/google/common/hash/m;
    .locals 3

    new-instance v0, Lcom/google/common/hash/w;

    const-string v1, "hmacSha1"

    invoke-static {v1, p0}, Lcom/google/common/hash/o;->u(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA1"

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/hash/w;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static p([B)Lcom/google/common/hash/m;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/o;->o(Ljava/security/Key;)Lcom/google/common/hash/m;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/security/Key;)Lcom/google/common/hash/m;
    .locals 3

    new-instance v0, Lcom/google/common/hash/w;

    const-string v1, "hmacSha256"

    invoke-static {v1, p0}, Lcom/google/common/hash/o;->u(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/hash/w;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static r([B)Lcom/google/common/hash/m;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/o;->q(Ljava/security/Key;)Lcom/google/common/hash/m;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/security/Key;)Lcom/google/common/hash/m;
    .locals 3

    new-instance v0, Lcom/google/common/hash/w;

    const-string v1, "hmacSha512"

    invoke-static {v1, p0}, Lcom/google/common/hash/o;->u(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA512"

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/hash/w;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static t([B)Lcom/google/common/hash/m;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/o;->s(Ljava/security/Key;)Lcom/google/common/hash/m;

    move-result-object p0

    return-object p0
.end method

.method private static u(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "Hashing.%s(Key[algorithm=%s, format=%s])"

    .line 2
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v()Lcom/google/common/hash/m;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/hash/o$e;->a:Lcom/google/common/hash/m;

    return-object v0
.end method

.method public static w()Lcom/google/common/hash/m;
    .locals 1

    sget-object v0, Lcom/google/common/hash/y;->b:Lcom/google/common/hash/m;

    return-object v0
.end method

.method public static x(I)Lcom/google/common/hash/m;
    .locals 1

    new-instance v0, Lcom/google/common/hash/y;

    invoke-direct {v0, p0}, Lcom/google/common/hash/y;-><init>(I)V

    return-object v0
.end method

.method public static y()Lcom/google/common/hash/m;
    .locals 1

    sget-object v0, Lcom/google/common/hash/z;->b:Lcom/google/common/hash/m;

    return-object v0
.end method

.method public static z(I)Lcom/google/common/hash/m;
    .locals 1

    new-instance v0, Lcom/google/common/hash/z;

    invoke-direct {v0, p0}, Lcom/google/common/hash/z;-><init>(I)V

    return-object v0
.end method
