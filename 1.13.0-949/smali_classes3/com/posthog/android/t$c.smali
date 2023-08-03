.class final Lcom/posthog/android/t$c;
.super Ljava/io/InputStream;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field final synthetic c:Lcom/posthog/android/t;


# direct methods
.method constructor <init>(Lcom/posthog/android/t;Lcom/posthog/android/t$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/posthog/android/t$c;->c:Lcom/posthog/android/t;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iget v0, p2, Lcom/posthog/android/t$b;->a:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Lcom/posthog/android/t;->M(I)I

    move-result p1

    iput p1, p0, Lcom/posthog/android/t$c;->a:I

    .line 3
    iget p1, p2, Lcom/posthog/android/t$b;->b:I

    iput p1, p0, Lcom/posthog/android/t$c;->b:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget v0, p0, Lcom/posthog/android/t$c;->b:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/posthog/android/t$c;->c:Lcom/posthog/android/t;

    iget-object v0, v0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/posthog/android/t$c;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 9
    iget-object v0, p0, Lcom/posthog/android/t$c;->c:Lcom/posthog/android/t;

    iget-object v0, v0, Lcom/posthog/android/t;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/posthog/android/t$c;->c:Lcom/posthog/android/t;

    iget v2, p0, Lcom/posthog/android/t$c;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/posthog/android/t;->M(I)I

    move-result v1

    iput v1, p0, Lcom/posthog/android/t$c;->a:I

    .line 11
    iget v1, p0, Lcom/posthog/android/t$c;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/posthog/android/t$c;->b:I

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    or-int v0, p2, p3

    if-ltz v0, :cond_2

    .line 1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_2

    .line 2
    iget v0, p0, Lcom/posthog/android/t$c;->b:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p3, v0, :cond_1

    move p3, v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/posthog/android/t$c;->c:Lcom/posthog/android/t;

    iget v1, p0, Lcom/posthog/android/t$c;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/posthog/android/t;->I(I[BII)V

    .line 4
    iget-object p1, p0, Lcom/posthog/android/t$c;->c:Lcom/posthog/android/t;

    iget p2, p0, Lcom/posthog/android/t$c;->a:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/posthog/android/t;->M(I)I

    move-result p1

    iput p1, p0, Lcom/posthog/android/t$c;->a:I

    .line 5
    iget p1, p0, Lcom/posthog/android/t$c;->b:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/posthog/android/t$c;->b:I

    return p3

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
