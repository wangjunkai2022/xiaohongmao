.class abstract enum Lcom/google/common/hash/s$d;
.super Ljava/lang/Enum;
.source "LittleEndianByteArray.java"

# interfaces
.implements Lcom/google/common/hash/s$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/s$d;",
        ">;",
        "Lcom/google/common/hash/s$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/s$d;

.field public static final enum b:Lcom/google/common/hash/s$d;

.field private static final c:Lsun/misc/Unsafe;

.field private static final d:I

.field private static final synthetic e:[Lcom/google/common/hash/s$d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, [B

    new-instance v1, Lcom/google/common/hash/s$d$a;

    const-string v2, "UNSAFE_LITTLE_ENDIAN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/hash/s$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/hash/s$d;->a:Lcom/google/common/hash/s$d;

    .line 2
    new-instance v2, Lcom/google/common/hash/s$d$b;

    const-string v4, "UNSAFE_BIG_ENDIAN"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/google/common/hash/s$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/common/hash/s$d;->b:Lcom/google/common/hash/s$d;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/common/hash/s$d;

    aput-object v1, v4, v3

    aput-object v2, v4, v5

    .line 3
    sput-object v4, Lcom/google/common/hash/s$d;->e:[Lcom/google/common/hash/s$d;

    .line 4
    invoke-static {}, Lcom/google/common/hash/s$d;->e()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lcom/google/common/hash/s$d;->c:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lcom/google/common/hash/s$d;->d:I

    .line 6
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v5, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/s$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/s$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/google/common/hash/s$d;->d:I

    return v0
.end method

.method static synthetic d()Lsun/misc/Unsafe;
    .locals 1

    sget-object v0, Lcom/google/common/hash/s$d;->c:Lsun/misc/Unsafe;

    return-object v0
.end method

.method private static e()Lsun/misc/Unsafe;
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
    new-instance v0, Lcom/google/common/hash/s$d$c;

    invoke-direct {v0}, Lcom/google/common/hash/s$d$c;-><init>()V

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/s$d;
    .locals 1

    const-class v0, Lcom/google/common/hash/s$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/s$d;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/s$d;
    .locals 1

    sget-object v0, Lcom/google/common/hash/s$d;->e:[Lcom/google/common/hash/s$d;

    invoke-virtual {v0}, [Lcom/google/common/hash/s$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/s$d;

    return-object v0
.end method
