.class public Lcom/coremedia/iso/boxes/sampleentry/e;
.super Lcom/coremedia/iso/boxes/sampleentry/a;
.source "Ovc1VisualSampleEntryImpl.java"


# static fields
.field public static final p:Ljava/lang/String; = "ovc1"


# instance fields
.field private o:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ovc1"

    .line 1
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/e;->o:[B

    return-void
.end method


# virtual methods
.method public J()[B
    .locals 1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/e;->o:[B

    return-object v0
.end method

.method public K([B)V
    .locals 0

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/e;->o:[B

    return-void
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b;->I()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    const/16 v0, 0x8

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->n:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 6
    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/e;->o:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public getSize()J
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/b;->l:Z

    const/16 v1, 0x10

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/e;->o:[B

    array-length v0, v0

    add-int/2addr v0, v1

    int-to-long v2, v0

    const-wide v4, 0x100000000L

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :cond_1
    :goto_0
    int-to-long v0, v1

    .line 2
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/e;->o:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public p(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 2
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x6

    .line 3
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->n:I

    .line 5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/e;->o:[B

    .line 6
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method
