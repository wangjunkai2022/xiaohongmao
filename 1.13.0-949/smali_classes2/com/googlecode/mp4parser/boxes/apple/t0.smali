.class public Lcom/googlecode/mp4parser/boxes/apple/t0;
.super Lcom/coremedia/iso/boxes/sampleentry/a;
.source "QuicktimeTextSampleEntry.java"


# static fields
.field public static final E:Ljava/lang/String; = "text"


# instance fields
.field A:I

.field B:I

.field C:Ljava/lang/String;

.field D:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:J

.field u:J

.field v:S

.field w:S

.field x:B

.field y:S

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "text"

    .line 1
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    const v0, 0xffff

    .line 2
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->z:I

    .line 3
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->A:I

    .line 4
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->B:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A0(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->A:I

    return-void
.end method

.method public B0(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->z:I

    return-void
.end method

.method public C0(J)V
    .locals 0

    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->u:J

    return-void
.end method

.method public D(Lcom/coremedia/iso/boxes/d;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "QuicktimeTextSampleEntries may not have child boxes"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D0(B)V
    .locals 0

    iput-byte p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->x:B

    return-void
.end method

.method public E0(S)V
    .locals 0

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->y:S

    return-void
.end method

.method public F0(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->p:I

    return-void
.end method

.method public J()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->s:I

    return v0
.end method

.method public K()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->r:I

    return v0
.end method

.method public L()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->q:I

    return v0
.end method

.method public M()J
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->t:J

    return-wide v0
.end method

.method public W()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->o:I

    return v0
.end method

.method public X()S
    .locals 1

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->w:S

    return v0
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 3
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
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x34

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->D:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 5
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->o:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->p:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->q:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 8
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->r:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 9
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->s:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 10
    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->t:J

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->l(Ljava/nio/ByteBuffer;J)V

    .line 11
    iget-wide v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->u:J

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->l(Ljava/nio/ByteBuffer;J)V

    .line 12
    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->v:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 13
    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->w:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 14
    iget-byte v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->x:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 15
    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->y:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 16
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->z:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 17
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->A:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 18
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->B:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 19
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 21
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 22
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/d;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "QuicktimeTextSampleEntries may not have child boxes"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:Ljava/lang/String;

    return-object v0
.end method

.method public d0()S
    .locals 1

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->v:S

    return v0
.end method

.method public g0()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->B:I

    return v0
.end method

.method public getSize()J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->E()J

    move-result-wide v0

    const-wide/16 v2, 0x34

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b;->l:Z

    if-nez v2, :cond_2

    const-wide/16 v2, 0x8

    add-long/2addr v2, v0

    const-wide v4, 0x100000000L

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v2, 0x10

    :goto_2
    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public h0()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->A:I

    return v0
.end method

.method public l0()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->z:I

    return v0
.end method

.method public n0()J
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->u:J

    return-wide v0
.end method

.method public o0()B
    .locals 1

    iget-byte v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->x:B

    return v0
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

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->D:I

    .line 5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->o:I

    .line 6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->p:I

    .line 7
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->q:I

    .line 8
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->r:I

    .line 9
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->s:I

    .line 10
    invoke-static {p2}, Lcom/coremedia/iso/g;->o(Ljava/nio/ByteBuffer;)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->t:J

    .line 11
    invoke-static {p2}, Lcom/coremedia/iso/g;->o(Ljava/nio/ByteBuffer;)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->u:J

    .line 12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->v:S

    .line 13
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->w:S

    .line 14
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    iput-byte p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->x:B

    .line 15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->y:S

    .line 16
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->z:I

    .line 17
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->A:I

    .line 18
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->B:I

    .line 19
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-lez p1, :cond_0

    .line 20
    invoke-static {p2}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 21
    new-array p1, p1, [B

    .line 22
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 23
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p2, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public p0()S
    .locals 1

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->y:S

    return v0
.end method

.method public q0()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->p:I

    return v0
.end method

.method public r0(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->s:I

    return-void
.end method

.method public s0(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->r:I

    return-void
.end method

.method public t0(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->q:I

    return-void
.end method

.method public u0(J)V
    .locals 0

    iput-wide p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->t:J

    return-void
.end method

.method public v0(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->o:I

    return-void
.end method

.method public w0(S)V
    .locals 0

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->w:S

    return-void
.end method

.method public x0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->C:Ljava/lang/String;

    return-void
.end method

.method public y0(S)V
    .locals 0

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->v:S

    return-void
.end method

.method public z0(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/t0;->B:I

    return-void
.end method
