.class public Lcom/posthog/android/t;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/t$b;,
        Lcom/posthog/android/t$c;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/logging/Logger;

.field private static final h:I = 0x1000

.field private static final i:[B

.field static final j:I = 0x10


# instance fields
.field final a:Ljava/io/RandomAccessFile;

.field b:I

.field private c:I

.field private d:Lcom/posthog/android/t$b;

.field private e:Lcom/posthog/android/t$b;

.field private final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/posthog/android/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/posthog/android/t;->g:Ljava/util/logging/Logger;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 2
    sput-object v0, Lcom/posthog/android/t;->i:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/posthog/android/t;->f:[B

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/posthog/android/t;->k(Ljava/io/File;)V

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/posthog/android/t;->q(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    .line 6
    invoke-direct {p0}, Lcom/posthog/android/t;->y()V

    return-void
.end method

.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lcom/posthog/android/t;->f:[B

    .line 9
    iput-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    .line 10
    invoke-direct {p0}, Lcom/posthog/android/t;->y()V

    return-void
.end method

.method private static A([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method private D()I
    .locals 2

    iget v0, p0, Lcom/posthog/android/t;->b:I

    invoke-direct {p0}, Lcom/posthog/android/t;->L()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private H(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_0

    .line 1
    sget-object v0, Lcom/posthog/android/t;->i:[B

    array-length v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/posthog/android/t;->J(I[BII)V

    sub-int/2addr p2, v1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private J(I[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/posthog/android/t;->M(I)I

    move-result p1

    add-int v0, p1, p4

    .line 2
    iget v1, p0, Lcom/posthog/android/t;->b:I

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    iget-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p1

    .line 5
    iget-object v0, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    iget-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 7
    iget-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    iget-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    :goto_0
    return-void
.end method

.method private K(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 2
    iget-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method private L()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/posthog/android/t;->c:I

    const/16 v1, 0x10

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/posthog/android/t;->e:Lcom/posthog/android/t$b;

    iget v2, v0, Lcom/posthog/android/t$b;->a:I

    iget-object v3, p0, Lcom/posthog/android/t;->d:Lcom/posthog/android/t$b;

    iget v3, v3, Lcom/posthog/android/t$b;->a:I

    if-lt v2, v3, :cond_1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    .line 3
    iget v0, v0, Lcom/posthog/android/t$b;->b:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x4

    .line 4
    iget v0, v0, Lcom/posthog/android/t$b;->b:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/posthog/android/t;->b:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    return v2
.end method

.method private W(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/android/t;->f:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/posthog/android/t;->X([BII)V

    .line 2
    iget-object p1, p0, Lcom/posthog/android/t;->f:[B

    const/4 v0, 0x4

    invoke-static {p1, v0, p2}, Lcom/posthog/android/t;->X([BII)V

    .line 3
    iget-object p1, p0, Lcom/posthog/android/t;->f:[B

    const/16 p2, 0x8

    invoke-static {p1, p2, p3}, Lcom/posthog/android/t;->X([BII)V

    .line 4
    iget-object p1, p0, Lcom/posthog/android/t;->f:[B

    const/16 p2, 0xc

    invoke-static {p1, p2, p4}, Lcom/posthog/android/t;->X([BII)V

    .line 5
    iget-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    iget-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lcom/posthog/android/t;->f:[B

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method private static X([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 1
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 2
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 3
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 4
    aput-byte p2, p0, p1

    return-void
.end method

.method private h(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x4

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/t;->D()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/posthog/android/t;->b:I

    :goto_0
    add-int/2addr v0, v1

    shl-int/lit8 v2, v1, 0x1

    if-lt v2, v1, :cond_5

    if-lt v0, p1, :cond_4

    .line 3
    invoke-direct {p0, v2}, Lcom/posthog/android/t;->K(I)V

    .line 4
    iget-object p1, p0, Lcom/posthog/android/t;->e:Lcom/posthog/android/t$b;

    iget v0, p1, Lcom/posthog/android/t$b;->a:I

    add-int/lit8 v0, v0, 0x4

    iget p1, p1, Lcom/posthog/android/t$b;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/posthog/android/t;->M(I)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/posthog/android/t;->d:Lcom/posthog/android/t$b;

    iget v0, v0, Lcom/posthog/android/t$b;->a:I

    const/16 v1, 0x10

    if-gt p1, v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 7
    iget v0, p0, Lcom/posthog/android/t;->b:I

    int-to-long v3, v0

    invoke-virtual {v8, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sub-int/2addr p1, v1

    const-wide/16 v4, 0x10

    int-to-long v9, p1

    move-object v3, v8

    move-wide v6, v9

    .line 8
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-nez v0, :cond_1

    .line 9
    invoke-direct {p0, v1, p1}, Lcom/posthog/android/t;->H(II)V

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Copied insufficient number of bytes!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 11
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/posthog/android/t;->e:Lcom/posthog/android/t$b;

    iget p1, p1, Lcom/posthog/android/t$b;->a:I

    iget-object v0, p0, Lcom/posthog/android/t;->d:Lcom/posthog/android/t$b;

    iget v0, v0, Lcom/posthog/android/t$b;->a:I

    if-ge p1, v0, :cond_3

    .line 12
    iget v3, p0, Lcom/posthog/android/t;->b:I

    add-int/2addr v3, p1

    sub-int/2addr v3, v1

    .line 13
    iget p1, p0, Lcom/posthog/android/t;->c:I

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/posthog/android/t;->W(IIII)V

    .line 14
    new-instance p1, Lcom/posthog/android/t$b;

    iget-object v0, p0, Lcom/posthog/android/t;->e:Lcom/posthog/android/t$b;

    iget v0, v0, Lcom/posthog/android/t$b;->b:I

    invoke-direct {p1, v3, v0}, Lcom/posthog/android/t$b;-><init>(II)V

    iput-object p1, p0, Lcom/posthog/android/t;->e:Lcom/posthog/android/t$b;

    goto :goto_2

    .line 15
    :cond_3
    iget v1, p0, Lcom/posthog/android/t;->c:I

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/posthog/android/t;->W(IIII)V

    .line 16
    :goto_2
    iput v2, p0, Lcom/posthog/android/t;->b:I

    return-void

    :cond_4
    move v1, v2

    goto :goto_0

    .line 17
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grow file beyond "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static k(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/posthog/android/t;->q(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v1

    const-wide/16 v2, 0x1000

    .line 3
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0x10

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x1000

    .line 5
    invoke-static {v2, v3, v4}, Lcom/posthog/android/t;->X([BII)V

    .line 6
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 8
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Rename failed!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 10
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 11
    throw p0
.end method

.method private static q(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private s(I)Lcom/posthog/android/t$b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/posthog/android/t$b;->c:Lcom/posthog/android/t$b;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/posthog/android/t;->f:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/posthog/android/t;->I(I[BII)V

    .line 3
    iget-object v0, p0, Lcom/posthog/android/t;->f:[B

    invoke-static {v0, v2}, Lcom/posthog/android/t;->A([BI)I

    move-result v0

    .line 4
    new-instance v1, Lcom/posthog/android/t$b;

    invoke-direct {v1, p1, v0}, Lcom/posthog/android/t$b;-><init>(II)V

    return-object v1
.end method

.method private y()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2
    iget-object v0, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/posthog/android/t;->f:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 3
    iget-object v0, p0, Lcom/posthog/android/t;->f:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/posthog/android/t;->A([BI)I

    move-result v0

    iput v0, p0, Lcom/posthog/android/t;->b:I

    .line 4
    iget-object v0, p0, Lcom/posthog/android/t;->f:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/posthog/android/t;->A([BI)I

    move-result v0

    iput v0, p0, Lcom/posthog/android/t;->c:I

    .line 5
    iget-object v0, p0, Lcom/posthog/android/t;->f:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/posthog/android/t;->A([BI)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/posthog/android/t;->f:[B

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/posthog/android/t;->A([BI)I

    move-result v1

    .line 7
    iget v2, p0, Lcom/posthog/android/t;->b:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    .line 8
    iget v2, p0, Lcom/posthog/android/t;->b:I

    const-string v3, ") is invalid."

    if-lez v2, :cond_2

    if-ltz v0, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Lcom/posthog/android/t;->M(I)I

    move-result v4

    if-le v2, v4, :cond_1

    if-ltz v1, :cond_0

    .line 10
    iget v2, p0, Lcom/posthog/android/t;->b:I

    invoke-virtual {p0, v1}, Lcom/posthog/android/t;->M(I)I

    move-result v4

    if-le v2, v4, :cond_0

    .line 11
    invoke-direct {p0, v0}, Lcom/posthog/android/t;->s(I)Lcom/posthog/android/t$b;

    move-result-object v0

    iput-object v0, p0, Lcom/posthog/android/t;->d:Lcom/posthog/android/t$b;

    .line 12
    invoke-direct {p0, v1}, Lcom/posthog/android/t;->s(I)Lcom/posthog/android/t$b;

    move-result-object v0

    iput-object v0, p0, Lcom/posthog/android/t;->e:Lcom/posthog/android/t$b;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is corrupt; last position stored in header ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File is corrupt; first position stored in header ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File is corrupt; length stored in header ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/posthog/android/t;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File is truncated. Expected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/posthog/android/t;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    .line 17
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized E()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/posthog/android/t;->G(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized G(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/posthog/android/t;->p()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    if-ltz p1, :cond_4

    if-nez p1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/posthog/android/t;->c:I

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/posthog/android/t;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :cond_1
    if-gt p1, v0, :cond_3

    .line 6
    :try_start_2
    iget-object v0, p0, Lcom/posthog/android/t;->d:Lcom/posthog/android/t$b;

    iget v1, v0, Lcom/posthog/android/t$b;->a:I

    .line 7
    iget v0, v0, Lcom/posthog/android/t$b;->b:I

    const/4 v2, 0x0

    move v5, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, p1, :cond_2

    add-int/lit8 v6, v0, 0x4

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v0

    .line 8
    invoke-virtual {p0, v5}, Lcom/posthog/android/t;->M(I)I

    move-result v5

    .line 9
    iget-object v0, p0, Lcom/posthog/android/t;->f:[B

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v0, v2, v6}, Lcom/posthog/android/t;->I(I[BII)V

    .line 10
    iget-object v0, p0, Lcom/posthog/android/t;->f:[B

    invoke-static {v0, v2}, Lcom/posthog/android/t;->A([BI)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget v2, p0, Lcom/posthog/android/t;->b:I

    iget v3, p0, Lcom/posthog/android/t;->c:I

    sub-int/2addr v3, p1

    iget-object v6, p0, Lcom/posthog/android/t;->e:Lcom/posthog/android/t$b;

    iget v6, v6, Lcom/posthog/android/t$b;->a:I

    invoke-direct {p0, v2, v3, v5, v6}, Lcom/posthog/android/t;->W(IIII)V

    .line 12
    iget v2, p0, Lcom/posthog/android/t;->c:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/posthog/android/t;->c:I

    .line 13
    new-instance p1, Lcom/posthog/android/t$b;

    invoke-direct {p1, v5, v0}, Lcom/posthog/android/t$b;-><init>(II)V

    iput-object p1, p0, Lcom/posthog/android/t;->d:Lcom/posthog/android/t$b;

    .line 14
    invoke-direct {p0, v1, v4}, Lcom/posthog/android/t;->H(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove more elements ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") than present in queue ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/posthog/android/t;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove negative ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") number of elements."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_5
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method I(I[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/posthog/android/t;->M(I)I

    move-result p1

    add-int v0, p1, p4

    .line 2
    iget v1, p0, Lcom/posthog/android/t;->b:I

    if-gt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    iget-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p1

    .line 5
    iget-object v0, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    iget-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 7
    iget-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    iget-object p1, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    :goto_0
    return-void
.end method

.method M(I)I
    .locals 1

    iget v0, p0, Lcom/posthog/android/t;->b:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x10

    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public a([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/posthog/android/t;->b([BII)V

    return-void
.end method

.method public declared-synchronized b([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_4

    or-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 1
    :try_start_0
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    .line 2
    invoke-direct {p0, p3}, Lcom/posthog/android/t;->h(I)V

    .line 3
    invoke-virtual {p0}, Lcom/posthog/android/t;->p()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/posthog/android/t;->e:Lcom/posthog/android/t$b;

    iget v3, v2, Lcom/posthog/android/t$b;->a:I

    add-int/2addr v3, v1

    iget v2, v2, Lcom/posthog/android/t$b;->b:I

    add-int/2addr v3, v2

    .line 5
    invoke-virtual {p0, v3}, Lcom/posthog/android/t;->M(I)I

    move-result v2

    .line 6
    :goto_0
    new-instance v3, Lcom/posthog/android/t$b;

    invoke-direct {v3, v2, p3}, Lcom/posthog/android/t$b;-><init>(II)V

    .line 7
    iget-object v2, p0, Lcom/posthog/android/t;->f:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, p3}, Lcom/posthog/android/t;->X([BII)V

    .line 8
    iget v2, v3, Lcom/posthog/android/t$b;->a:I

    iget-object v5, p0, Lcom/posthog/android/t;->f:[B

    invoke-direct {p0, v2, v5, v4, v1}, Lcom/posthog/android/t;->J(I[BII)V

    .line 9
    iget v2, v3, Lcom/posthog/android/t$b;->a:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/posthog/android/t;->J(I[BII)V

    if-eqz v0, :cond_1

    .line 10
    iget p1, v3, Lcom/posthog/android/t$b;->a:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/posthog/android/t;->d:Lcom/posthog/android/t$b;

    iget p1, p1, Lcom/posthog/android/t$b;->a:I

    .line 11
    :goto_1
    iget p2, p0, Lcom/posthog/android/t;->b:I

    iget p3, p0, Lcom/posthog/android/t;->c:I

    add-int/lit8 p3, p3, 0x1

    iget v1, v3, Lcom/posthog/android/t$b;->a:I

    invoke-direct {p0, p2, p3, p1, v1}, Lcom/posthog/android/t;->W(IIII)V

    .line 12
    iput-object v3, p0, Lcom/posthog/android/t;->e:Lcom/posthog/android/t$b;

    .line 13
    iget p1, p0, Lcom/posthog/android/t;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/posthog/android/t;->c:I

    if-eqz v0, :cond_2

    .line 14
    iput-object v3, p0, Lcom/posthog/android/t;->d:Lcom/posthog/android/t$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_2
    monitor-exit p0

    return-void

    .line 16
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0x1000

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/posthog/android/t;->W(IIII)V

    .line 2
    iget-object v2, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3
    iget-object v2, p0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    sget-object v3, Lcom/posthog/android/t;->i:[B

    const/16 v4, 0xff0

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 4
    iput v1, p0, Lcom/posthog/android/t;->c:I

    .line 5
    sget-object v1, Lcom/posthog/android/t$b;->c:Lcom/posthog/android/t$b;

    iput-object v1, p0, Lcom/posthog/android/t;->d:Lcom/posthog/android/t$b;

    .line 6
    iput-object v1, p0, Lcom/posthog/android/t;->e:Lcom/posthog/android/t$b;

    .line 7
    iget v1, p0, Lcom/posthog/android/t;->b:I

    if-le v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/posthog/android/t;->K(I)V

    .line 8
    :cond_0
    iput v0, p0, Lcom/posthog/android/t;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i(Lcom/posthog/android/l$a;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/posthog/android/t;->d:Lcom/posthog/android/t$b;

    iget v0, v0, Lcom/posthog/android/t$b;->a:I

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/posthog/android/t;->c:I

    if-ge v1, v2, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcom/posthog/android/t;->s(I)Lcom/posthog/android/t$b;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/posthog/android/t$c;

    invoke-direct {v2, p0, v0}, Lcom/posthog/android/t$c;-><init>(Lcom/posthog/android/t;Lcom/posthog/android/t$b;)V

    iget v3, v0, Lcom/posthog/android/t$b;->b:I

    invoke-interface {p1, v2, v3}, Lcom/posthog/android/l$a;->d(Ljava/io/InputStream;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_0
    :try_start_1
    iget v2, v0, Lcom/posthog/android/t$b;->a:I

    add-int/lit8 v2, v2, 0x4

    iget v0, v0, Lcom/posthog/android/t$b;->b:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/posthog/android/t;->M(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized p()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/posthog/android/t;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/posthog/android/t;->p()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/posthog/android/t;->d:Lcom/posthog/android/t$b;

    iget v1, v0, Lcom/posthog/android/t$b;->b:I

    .line 3
    new-array v2, v1, [B

    .line 4
    iget v0, v0, Lcom/posthog/android/t$b;->a:I

    add-int/lit8 v0, v0, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/posthog/android/t;->I(I[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/posthog/android/t;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "fileLength="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/posthog/android/t;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/posthog/android/t;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", first="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/android/t;->d:Lcom/posthog/android/t$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/android/t;->e:Lcom/posthog/android/t$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", element lengths=["

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :try_start_0
    new-instance v1, Lcom/posthog/android/t$a;

    invoke-direct {v1, p0, v0}, Lcom/posthog/android/t$a;-><init>(Lcom/posthog/android/t;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lcom/posthog/android/t;->i(Lcom/posthog/android/l$a;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    sget-object v2, Lcom/posthog/android/t;->g:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "read error"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v1, "]]"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
