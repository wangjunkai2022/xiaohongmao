.class public Lcom/mp4parser/iso14496/part30/e;
.super Lcom/coremedia/iso/boxes/sampleentry/a;
.source "XMLSubtitleSampleEntry.java"


# static fields
.field public static final r:Ljava/lang/String; = "stpp"


# instance fields
.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "stpp"

    .line 1
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/mp4parser/iso14496/part30/e;->o:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/mp4parser/iso14496/part30/e;->p:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/mp4parser/iso14496/part30/e;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mp4parser/iso14496/part30/e;->q:Ljava/lang/String;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mp4parser/iso14496/part30/e;->o:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mp4parser/iso14496/part30/e;->p:Ljava/lang/String;

    return-object v0
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mp4parser/iso14496/part30/e;->q:Ljava/lang/String;

    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mp4parser/iso14496/part30/e;->o:Ljava/lang/String;

    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mp4parser/iso14496/part30/e;->p:Ljava/lang/String;

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

    .line 2
    iget-object v0, p0, Lcom/mp4parser/iso14496/part30/e;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/mp4parser/iso14496/part30/e;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mp4parser/iso14496/part30/e;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->n:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 5
    iget-object v1, p0, Lcom/mp4parser/iso14496/part30/e;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->o(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/mp4parser/iso14496/part30/e;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->o(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/mp4parser/iso14496/part30/e;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->o(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 9
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/d;->A(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method public getSize()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->E()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/mp4parser/iso14496/part30/e;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/mp4parser/iso14496/part30/e;->p:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/mp4parser/iso14496/part30/e;->q:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x3

    int-to-long v4, v2

    add-long/2addr v0, v4

    .line 3
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b;->l:Z

    if-nez v2, :cond_0

    const-wide/16 v4, 0x8

    add-long/2addr v4, v0

    const-wide v6, 0x100000000L

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1

    :cond_0
    const/16 v3, 0x10

    :cond_1
    int-to-long v2, v3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public p(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    invoke-static {v0}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->n:I

    .line 5
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->C()J

    move-result-wide v0

    const/16 v2, 0x400

    .line 6
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 8
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/coremedia/iso/g;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mp4parser/iso14496/part30/e;->o:Ljava/lang/String;

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-interface {p1, v3, v4}, Lcom/googlecode/mp4parser/e;->S(J)V

    .line 10
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 11
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/coremedia/iso/g;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mp4parser/iso14496/part30/e;->p:Ljava/lang/String;

    .line 12
    iget-object v3, p0, Lcom/mp4parser/iso14496/part30/e;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v0

    iget-object v5, p0, Lcom/mp4parser/iso14496/part30/e;->p:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    invoke-interface {p1, v3, v4}, Lcom/googlecode/mp4parser/e;->S(J)V

    .line 13
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 14
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/coremedia/iso/g;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mp4parser/iso14496/part30/e;->q:Ljava/lang/String;

    .line 15
    iget-object v2, p0, Lcom/mp4parser/iso14496/part30/e;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/mp4parser/iso14496/part30/e;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/mp4parser/iso14496/part30/e;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/googlecode/mp4parser/e;->S(J)V

    .line 16
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    iget-object v0, p0, Lcom/mp4parser/iso14496/part30/e;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/mp4parser/iso14496/part30/e;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/mp4parser/iso14496/part30/e;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x3

    int-to-long v0, p2

    sub-long/2addr p3, v0

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/googlecode/mp4parser/b;->G(Lcom/googlecode/mp4parser/e;JLcom/coremedia/iso/c;)V

    return-void
.end method
