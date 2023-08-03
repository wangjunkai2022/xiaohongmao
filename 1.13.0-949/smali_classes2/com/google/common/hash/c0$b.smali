.class final Lcom/google/common/hash/c0$b;
.super Ljava/lang/Object;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final p:Lsun/misc/Unsafe;

.field private static final q:J


# instance fields
.field volatile a:J

.field volatile b:J

.field volatile c:J

.field volatile d:J

.field volatile e:J

.field volatile f:J

.field volatile g:J

.field volatile h:J

.field volatile i:J

.field volatile j:J

.field volatile k:J

.field volatile l:J

.field volatile m:J

.field volatile n:J

.field volatile o:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/common/hash/c0;->d()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/c0$b;->p:Lsun/misc/Unsafe;

    .line 2
    const-class v1, Lcom/google/common/hash/c0$b;

    const-string v2, "h"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/hash/c0$b;->q:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/common/hash/c0$b;->h:J

    return-void
.end method


# virtual methods
.method final a(JJ)Z
    .locals 8

    sget-object v0, Lcom/google/common/hash/c0$b;->p:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/hash/c0$b;->q:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method
