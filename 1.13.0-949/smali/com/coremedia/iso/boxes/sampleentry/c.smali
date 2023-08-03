.class public final Lcom/coremedia/iso/boxes/sampleentry/c;
.super Lcom/coremedia/iso/boxes/sampleentry/a;
.source "AudioSampleEntry.java"


# static fields
.field public static final B:Ljava/lang/String; = "samr"

.field public static final C:Ljava/lang/String; = "sawb"

.field public static final D:Ljava/lang/String; = "mp4a"

.field public static final E:Ljava/lang/String; = "drms"

.field public static final F:Ljava/lang/String; = "alac"

.field public static final G:Ljava/lang/String; = "owma"

.field public static final H:Ljava/lang/String; = "ac-3"

.field public static final I:Ljava/lang/String; = "ec-3"

.field public static final J:Ljava/lang/String; = "mlpa"

.field public static final K:Ljava/lang/String; = "dtsl"

.field public static final L:Ljava/lang/String; = "dtsh"

.field public static final M:Ljava/lang/String; = "dtse"

.field public static final N:Ljava/lang/String; = "enca"

.field static final synthetic O:Z


# instance fields
.field private A:[B

.field private o:I

.field private p:I

.field private q:J

.field private r:I

.field private s:I

.field private t:I

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/coremedia/iso/boxes/sampleentry/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A0(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    return-void
.end method

.method public B0([B)V
    .locals 0

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->A:[B

    return-void
.end method

.method public C0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/mp4parser/b;->k:Ljava/lang/String;

    return-void
.end method

.method public J()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    return-wide v0
.end method

.method public K()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    return-wide v0
.end method

.method public L()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    return-wide v0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->o:I

    return v0
.end method

.method public W()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    return v0
.end method

.method public X()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->t:I

    return v0
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 8
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
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/16 v4, 0x10

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v4, v4, 0x1c

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    const/16 v2, 0x24

    :cond_1
    add-int/2addr v4, v2

    .line 3
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x6

    .line 4
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->n:I

    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 6
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 7
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->y:I

    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 8
    iget-wide v6, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->z:J

    invoke-static {v0, v6, v7}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 9
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->o:I

    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 10
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->p:I

    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 11
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 12
    iget v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->t:I

    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 13
    iget-object v2, p0, Lcom/googlecode/mp4parser/b;->k:Ljava/lang/String;

    const-string v4, "mlpa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/c;->g0()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/c;->g0()J

    move-result-wide v6

    shl-long v1, v6, v1

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 16
    :goto_1
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    if-ne v1, v3, :cond_3

    .line 17
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->u:J

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 18
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 19
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 20
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 21
    :cond_3
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    if-ne v1, v5, :cond_4

    .line 22
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->u:J

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 23
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 24
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 25
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 26
    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->A:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 27
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 28
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/d;->A(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method public b0()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->y:I

    return v0
.end method

.method public d0()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->z:J

    return-wide v0
.end method

.method public g0()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->q:J

    return-wide v0
.end method

.method public getSize()J
    .locals 8

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/16 v3, 0x10

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v3, v3, 0x1c

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    const/16 v2, 0x24

    :cond_1
    add-int/2addr v3, v2

    int-to-long v2, v3

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->E()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 3
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/b;->l:Z

    if-nez v0, :cond_3

    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    const-wide v6, 0x100000000L

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :cond_3
    :goto_1
    int-to-long v0, v1

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public h0()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->p:I

    return v0
.end method

.method public l0()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->u:J

    return-wide v0
.end method

.method public n0()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    return v0
.end method

.method public o0()[B
    .locals 1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->A:[B

    return-object v0
.end method

.method public p(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x1c

    .line 1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 2
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x6

    .line 3
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->n:I

    .line 5
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    .line 6
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->y:I

    .line 7
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->z:J

    .line 8
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->o:I

    .line 9
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->p:I

    .line 10
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    .line 11
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->t:I

    .line 12
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->q:J

    .line 13
    iget-object p2, p0, Lcom/googlecode/mp4parser/b;->k:Ljava/lang/String;

    const-string v0, "mlpa"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x10

    if-nez p2, :cond_0

    .line 14
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->q:J

    ushr-long/2addr v1, v0

    iput-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->q:J

    .line 15
    :cond_0
    iget p2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 17
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 18
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 19
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->u:J

    .line 20
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    .line 21
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    .line 22
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    .line 23
    :cond_1
    iget p2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    const/16 v2, 0x24

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 24
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 25
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 26
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 27
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->u:J

    .line 28
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    .line 29
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    .line 30
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    const/16 v4, 0x14

    new-array v4, v4, [B

    .line 31
    iput-object v4, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->A:[B

    .line 32
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 33
    :cond_2
    iget-object p2, p0, Lcom/googlecode/mp4parser/b;->k:Ljava/lang/String;

    const-string v4, "owma"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v5, 0x1c

    const/4 v7, 0x0

    if-eqz p2, :cond_5

    .line 34
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sub-long/2addr p3, v5

    .line 35
    iget p2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    if-ne p2, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    sub-long/2addr p3, v0

    if-ne p2, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    int-to-long v0, v2

    sub-long/2addr p3, v0

    .line 36
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 37
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 38
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/c$a;

    invoke-direct {p1, p0, p3, p4, p2}, Lcom/coremedia/iso/boxes/sampleentry/c$a;-><init>(Lcom/coremedia/iso/boxes/sampleentry/c;JLjava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    goto :goto_4

    :cond_5
    sub-long/2addr p3, v5

    .line 39
    iget p2, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    if-ne p2, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    int-to-long v0, v0

    sub-long/2addr p3, v0

    if-ne p2, v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    int-to-long v0, v2

    sub-long/2addr p3, v0

    .line 40
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/googlecode/mp4parser/b;->G(Lcom/googlecode/mp4parser/e;JLcom/coremedia/iso/c;)V

    :goto_4
    return-void
.end method

.method public p0(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    return-void
.end method

.method public q0(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    return-void
.end method

.method public r0(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    return-void
.end method

.method public s0(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->o:I

    return-void
.end method

.method public t0(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioSampleEntry{bytesPerSample="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->x:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPerFrame="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->w:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPerPacket="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->v:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", samplesPerPacket="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->u:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", packetSize="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compressionId="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soundVersion="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sampleSize="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelCount="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boxes="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->y()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->t:I

    return-void
.end method

.method public v0(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->y:I

    return-void
.end method

.method public w0(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->z:J

    return-void
.end method

.method public x0(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->q:J

    return-void
.end method

.method public y0(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->p:I

    return-void
.end method

.method public z0(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/c;->u:J

    return-void
.end method
