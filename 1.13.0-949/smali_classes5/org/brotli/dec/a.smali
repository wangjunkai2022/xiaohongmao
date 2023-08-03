.class final Lorg/brotli/dec/a;
.super Ljava/lang/Object;
.source "BitReader.java"


# static fields
.field private static final j:I = 0x400

.field private static final k:I = 0x10

.field private static final l:I = 0x410

.field private static final m:I = 0x1000

.field private static final n:I = 0x1040


# instance fields
.field private final a:[B

.field private final b:[I

.field private final c:Lorg/brotli/dec/i;

.field private d:Ljava/io/InputStream;

.field private e:Z

.field f:J

.field g:I

.field private h:I

.field private i:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1040

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/brotli/dec/a;->a:[B

    const/16 v0, 0x410

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lorg/brotli/dec/a;->b:[I

    .line 4
    new-instance v0, Lorg/brotli/dec/i;

    invoke-direct {v0}, Lorg/brotli/dec/i;-><init>()V

    iput-object v0, p0, Lorg/brotli/dec/a;->c:Lorg/brotli/dec/i;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/brotli/dec/a;->i:I

    return-void
.end method

.method static a(Lorg/brotli/dec/a;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/brotli/dec/a;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lorg/brotli/dec/a;->h:I

    shl-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/brotli/dec/a;->g:I

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x8

    .line 3
    iget p0, p0, Lorg/brotli/dec/a;->i:I

    if-gt v0, p0, :cond_3

    if-eqz p1, :cond_2

    if-ne v0, p0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Lorg/brotli/dec/c;

    const-string p1, "Unused bytes after end"

    invoke-direct {p0, p1}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void

    .line 5
    :cond_3
    new-instance p0, Lorg/brotli/dec/c;

    const-string p1, "Read after end"

    invoke-direct {p0, p1}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Lorg/brotli/dec/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/a;->d:Ljava/io/InputStream;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lorg/brotli/dec/a;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method static c(Lorg/brotli/dec/a;[BII)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/brotli/dec/a;->g:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_8

    .line 2
    :goto_0
    iget v0, p0, Lorg/brotli/dec/a;->g:I

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_0

    add-int/lit8 v1, p2, 0x1

    .line 3
    iget-wide v2, p0, Lorg/brotli/dec/a;->f:J

    ushr-long/2addr v2, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p1, p2

    add-int/lit8 v0, v0, 0x8

    .line 4
    iput v0, p0, Lorg/brotli/dec/a;->g:I

    add-int/lit8 p3, p3, -0x1

    move p2, v1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {p0}, Lorg/brotli/dec/a;->f(Lorg/brotli/dec/a;)I

    move-result v0

    shr-int/lit8 v1, p3, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    iget v1, p0, Lorg/brotli/dec/a;->h:I

    shl-int/lit8 v1, v1, 0x2

    .line 7
    iget-object v2, p0, Lorg/brotli/dec/a;->a:[B

    shl-int/lit8 v3, v0, 0x2

    invoke-static {v2, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    .line 8
    iget v1, p0, Lorg/brotli/dec/a;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/brotli/dec/a;->h:I

    :cond_2
    if-nez p3, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-static {p0}, Lorg/brotli/dec/a;->f(Lorg/brotli/dec/a;)I

    move-result v0

    if-lez v0, :cond_5

    .line 10
    invoke-static {p0}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    :goto_1
    if-eqz p3, :cond_4

    add-int/lit8 v0, p2, 0x1

    .line 11
    iget-wide v1, p0, Lorg/brotli/dec/a;->f:J

    iget v3, p0, Lorg/brotli/dec/a;->g:I

    ushr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p1, p2

    add-int/lit8 v3, v3, 0x8

    .line 12
    iput v3, p0, Lorg/brotli/dec/a;->g:I

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 13
    invoke-static {p0, p1}, Lorg/brotli/dec/a;->a(Lorg/brotli/dec/a;Z)V

    return-void

    :cond_5
    :goto_2
    if-lez p3, :cond_7

    .line 14
    :try_start_0
    iget-object v0, p0, Lorg/brotli/dec/a;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_2

    .line 15
    :cond_6
    new-instance p0, Lorg/brotli/dec/c;

    const-string p1, "Unexpected end of input"

    invoke-direct {p0, p1}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Lorg/brotli/dec/c;

    const-string p2, "Failed to read input"

    invoke-direct {p1, p2, p0}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    return-void

    .line 17
    :cond_8
    new-instance p0, Lorg/brotli/dec/c;

    const-string p1, "Unaligned copyBytes"

    invoke-direct {p0, p1}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static d(Lorg/brotli/dec/a;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/brotli/dec/a;->g:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v2, p0, Lorg/brotli/dec/a;->b:[I

    iget v3, p0, Lorg/brotli/dec/a;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/brotli/dec/a;->h:I

    aget v2, v2, v3

    int-to-long v2, v2

    shl-long/2addr v2, v1

    iget-wide v4, p0, Lorg/brotli/dec/a;->f:J

    ushr-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/brotli/dec/a;->f:J

    sub-int/2addr v0, v1

    .line 3
    iput v0, p0, Lorg/brotli/dec/a;->g:I

    :cond_0
    return-void
.end method

.method static e(Lorg/brotli/dec/a;Ljava/io/InputStream;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/brotli/dec/a;->d:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/brotli/dec/a;->c:Lorg/brotli/dec/i;

    iget-object v1, p0, Lorg/brotli/dec/a;->a:[B

    iget-object v2, p0, Lorg/brotli/dec/a;->b:[I

    invoke-static {v0, v1, v2}, Lorg/brotli/dec/i;->b(Lorg/brotli/dec/i;[B[I)V

    .line 3
    iput-object p1, p0, Lorg/brotli/dec/a;->d:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lorg/brotli/dec/a;->f:J

    const/16 p1, 0x40

    .line 5
    iput p1, p0, Lorg/brotli/dec/a;->g:I

    const/16 p1, 0x400

    .line 6
    iput p1, p0, Lorg/brotli/dec/a;->h:I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lorg/brotli/dec/a;->e:Z

    .line 8
    invoke-static {p0}, Lorg/brotli/dec/a;->h(Lorg/brotli/dec/a;)V

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Bit reader already has associated input stream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static f(Lorg/brotli/dec/a;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/brotli/dec/a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lorg/brotli/dec/a;->i:I

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    .line 3
    :goto_0
    iget p0, p0, Lorg/brotli/dec/a;->h:I

    sub-int/2addr v0, p0

    return v0
.end method

.method static g(Lorg/brotli/dec/a;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/brotli/dec/a;->g:I

    rsub-int/lit8 v0, v0, 0x40

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->i(Lorg/brotli/dec/a;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Lorg/brotli/dec/c;

    const-string v0, "Corrupted padding bits"

    invoke-direct {p0, v0}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static h(Lorg/brotli/dec/a;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/brotli/dec/a;->j(Lorg/brotli/dec/a;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lorg/brotli/dec/a;->a(Lorg/brotli/dec/a;Z)V

    .line 3
    invoke-static {p0}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 4
    invoke-static {p0}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    return-void
.end method

.method static i(Lorg/brotli/dec/a;I)I
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/brotli/dec/a;->d(Lorg/brotli/dec/a;)V

    .line 2
    iget-wide v0, p0, Lorg/brotli/dec/a;->f:J

    iget v2, p0, Lorg/brotli/dec/a;->g:I

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x1

    shl-int v3, v0, p1

    sub-int/2addr v3, v0

    and-int v0, v1, v3

    add-int/2addr v2, p1

    .line 3
    iput v2, p0, Lorg/brotli/dec/a;->g:I

    return v0
.end method

.method static j(Lorg/brotli/dec/a;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/brotli/dec/a;->h:I

    const/16 v1, 0x3f7

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lorg/brotli/dec/a;->e:Z

    if-eqz v1, :cond_2

    .line 3
    invoke-static {p0}, Lorg/brotli/dec/a;->f(Lorg/brotli/dec/a;)I

    move-result p0

    const/4 v0, -0x2

    if-lt p0, v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p0, Lorg/brotli/dec/c;

    const-string v0, "No more input"

    invoke-direct {p0, v0}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    shl-int/lit8 v0, v0, 0x2

    rsub-int v1, v0, 0x1000

    .line 5
    iget-object v2, p0, Lorg/brotli/dec/a;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput v3, p0, Lorg/brotli/dec/a;->h:I

    :goto_0
    const/16 v0, 0x1000

    if-ge v1, v0, :cond_4

    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/brotli/dec/a;->d:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/brotli/dec/a;->a:[B

    rsub-int v3, v1, 0x1000

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/brotli/dec/a;->e:Z

    .line 9
    iput v1, p0, Lorg/brotli/dec/a;->i:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    :cond_3
    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lorg/brotli/dec/c;

    const-string v1, "Failed to read input"

    invoke-direct {v0, v1, p0}, Lorg/brotli/dec/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 11
    :cond_4
    :goto_1
    iget-object p0, p0, Lorg/brotli/dec/a;->c:Lorg/brotli/dec/i;

    shr-int/lit8 v0, v1, 0x2

    invoke-static {p0, v0}, Lorg/brotli/dec/i;->a(Lorg/brotli/dec/i;I)V

    return-void
.end method

.method static k(Lorg/brotli/dec/a;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/brotli/dec/a;->g:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lorg/brotli/dec/a;->h(Lorg/brotli/dec/a;)V

    :cond_0
    return-void
.end method
