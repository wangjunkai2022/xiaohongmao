.class final Lorg/brotli/dec/n;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final a:[B

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 1
    sput-object v1, Lorg/brotli/dec/n;->a:[B

    new-array v0, v0, [I

    .line 2
    sput-object v0, Lorg/brotli/dec/n;->b:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([BII)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int/lit16 v2, v1, 0x400

    .line 1
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v1

    .line 2
    sget-object v3, Lorg/brotli/dec/n;->a:[B

    add-int v4, p1, v1

    invoke-static {v3, v0, p0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method static b([III)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int/lit16 v2, v1, 0x400

    .line 1
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v1

    .line 2
    sget-object v3, Lorg/brotli/dec/n;->b:[I

    add-int v4, p1, v1

    invoke-static {v3, v0, p0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method
