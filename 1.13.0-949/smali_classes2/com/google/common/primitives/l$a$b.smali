.class final enum Lcom/google/common/primitives/l$a$b;
.super Ljava/lang/Enum;
.source "UnsignedBytes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/primitives/l$a$b;",
        ">;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation

.annotation build Lh3/d;
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/primitives/l$a$b;

.field static final b:Z

.field static final c:Lsun/misc/Unsafe;

.field static final d:I

.field private static final synthetic e:[Lcom/google/common/primitives/l$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, [B

    new-instance v1, Lcom/google/common/primitives/l$a$b;

    const-string v2, "INSTANCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/primitives/l$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/primitives/l$a$b;->a:Lcom/google/common/primitives/l$a$b;

    const/4 v2, 0x1

    new-array v4, v2, [Lcom/google/common/primitives/l$a$b;

    aput-object v1, v4, v3

    .line 2
    sput-object v4, Lcom/google/common/primitives/l$a$b;->e:[Lcom/google/common/primitives/l$a$b;

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/google/common/primitives/l$a$b;->b:Z

    .line 4
    invoke-static {}, Lcom/google/common/primitives/l$a$b;->b()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lcom/google/common/primitives/l$a$b;->c:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    sput v3, Lcom/google/common/primitives/l$a$b;->d:I

    const-string v4, "sun.arch.data.model"

    .line 6
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "64"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    rem-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v2, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static b()Lsun/misc/Unsafe;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/common/primitives/l$a$b$a;

    invoke-direct {v0}, Lcom/google/common/primitives/l$a$b$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/l$a$b;
    .locals 1

    const-class v0, Lcom/google/common/primitives/l$a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/primitives/l$a$b;

    return-object p0
.end method

.method public static values()[Lcom/google/common/primitives/l$a$b;
    .locals 1

    sget-object v0, Lcom/google/common/primitives/l$a$b;->e:[Lcom/google/common/primitives/l$a$b;

    invoke-virtual {v0}, [Lcom/google/common/primitives/l$a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/l$a$b;

    return-object v0
.end method


# virtual methods
.method public a([B[B)I
    .locals 11

    .line 1
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    and-int/lit8 v1, v0, -0x8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    sget-object v3, Lcom/google/common/primitives/l$a$b;->c:Lsun/misc/Unsafe;

    sget v4, Lcom/google/common/primitives/l$a$b;->d:I

    int-to-long v5, v4

    int-to-long v7, v2

    add-long/2addr v5, v7

    invoke-virtual {v3, p1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    int-to-long v9, v4

    add-long/2addr v9, v7

    .line 3
    invoke-virtual {v3, p2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    .line 4
    sget-boolean p1, Lcom/google/common/primitives/l$a$b;->b:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/n;->a(JJ)I

    move-result p1

    return p1

    :cond_0
    xor-long p1, v5, v3

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    and-int/lit8 p1, p1, -0x8

    ushr-long v0, v5, p1

    const-wide/16 v5, 0xff

    and-long/2addr v0, v5

    long-to-int p2, v0

    ushr-long v0, v3, p1

    and-long/2addr v0, v5

    long-to-int p1, v0

    sub-int/2addr p2, p1

    return p2

    :cond_1
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v0, :cond_4

    .line 7
    aget-byte v1, p1, v2

    aget-byte v3, p2, v2

    invoke-static {v1, v3}, Lcom/google/common/primitives/l;->b(BB)I

    move-result v1

    if-eqz v1, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_4
    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/l$a$b;->a([B[B)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UnsignedBytes.lexicographicalComparator() (sun.misc.Unsafe version)"

    return-object v0
.end method
