.class public final Lcom/coremedia/iso/boxes/sampleentry/h;
.super Lcom/coremedia/iso/boxes/sampleentry/a;
.source "VisualSampleEntry.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/j;


# static fields
.field public static final A:Ljava/lang/String; = "drmi"

.field public static final B:Ljava/lang/String; = "hvc1"

.field public static final C:Ljava/lang/String; = "hev1"

.field public static final D:Ljava/lang/String; = "encv"

.field static final synthetic E:Z = false

.field public static final w:Ljava/lang/String; = "mp4v"

.field public static final x:Ljava/lang/String; = "s263"

.field public static final y:Ljava/lang/String; = "avc1"

.field public static final z:Ljava/lang/String; = "avc3"


# instance fields
.field private o:I

.field private p:I

.field private q:D

.field private r:D

.field private s:I

.field private t:Ljava/lang/String;

.field private u:I

.field private v:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/coremedia/iso/boxes/sampleentry/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "avc1"

    .line 1
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    .line 2
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->q:D

    .line 3
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->r:D

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->s:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->t:Ljava/lang/String;

    const/16 v0, 0x18

    .line 6
    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->u:I

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 7
    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:[J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    .line 9
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->q:D

    .line 10
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->r:D

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->s:I

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->t:Ljava/lang/String;

    const/16 p1, 0x18

    .line 13
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->u:I

    const/4 p1, 0x3

    new-array p1, p1, [J

    .line 14
    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:[J

    return-void
.end method


# virtual methods
.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->t:Ljava/lang/String;

    return-object v0
.end method

.method public K()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->u:I

    return v0
.end method

.method public L()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->s:I

    return v0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->p:I

    return v0
.end method

.method public W()D
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->q:D

    return-wide v0
.end method

.method public X()D
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->r:D

    return-wide v0
.end method

.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b;->I()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    const/16 v0, 0x4e

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget v1, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->n:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 6
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 7
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:[J

    aget-wide v3, v2, v1

    invoke-static {v0, v3, v4}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 8
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:[J

    const/4 v3, 0x1

    aget-wide v3, v2, v3

    invoke-static {v0, v3, v4}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 9
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:[J

    const/4 v3, 0x2

    aget-wide v3, v2, v3

    invoke-static {v0, v3, v4}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 10
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->b0()I

    move-result v2

    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 11
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->M()I

    move-result v2

    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 12
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->W()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/i;->b(Ljava/nio/ByteBuffer;D)V

    .line 13
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->X()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/i;->b(Ljava/nio/ByteBuffer;D)V

    const-wide/16 v2, 0x0

    .line 14
    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 15
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->L()I

    move-result v2

    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 16
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coremedia/iso/l;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/coremedia/iso/i;->m(Ljava/nio/ByteBuffer;I)V

    .line 17
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coremedia/iso/l;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coremedia/iso/l;->c(Ljava/lang/String;)I

    move-result v2

    :goto_0
    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/sampleentry/h;->K()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    const v1, 0xffff

    .line 20
    invoke-static {v0, v1}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 22
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/d;->A(Ljava/nio/channels/WritableByteChannel;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public b0()I
    .locals 1

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->o:I

    return v0
.end method

.method public d0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->t:Ljava/lang/String;

    return-void
.end method

.method public g0(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->u:I

    return-void
.end method

.method public getSize()J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->E()J

    move-result-wide v0

    const-wide/16 v2, 0x4e

    add-long/2addr v0, v2

    .line 2
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/b;->l:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x8

    add-long/2addr v2, v0

    const-wide v4, 0x100000000L

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v2, 0x10

    :goto_1
    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public h0(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->s:I

    return-void
.end method

.method public l0(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->p:I

    return-void
.end method

.method public n0(D)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->q:D

    return-void
.end method

.method public o0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/mp4parser/b;->k:Ljava/lang/String;

    return-void
.end method

.method public p(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->C()J

    move-result-wide v0

    add-long/2addr v0, p3

    const/16 p2, 0x4e

    .line 2
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 3
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x6

    .line 4
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->n:I

    .line 6
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 7
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 8
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:[J

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 9
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:[J

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 10
    iget-object v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->v:[J

    const/4 v3, 0x2

    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 11
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->o:I

    .line 12
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->p:I

    .line 13
    invoke-static {p2}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->q:D

    .line 14
    invoke-static {p2}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->r:D

    .line 15
    invoke-static {p2}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 16
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->s:I

    .line 17
    invoke-static {p2}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    const/16 v2, 0x1f

    .line 18
    :cond_0
    new-array v4, v2, [B

    .line 19
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 20
    invoke-static {v4}, Lcom/coremedia/iso/l;->a([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->t:Ljava/lang/String;

    if-ge v2, v3, :cond_1

    sub-int/2addr v3, v2

    .line 21
    new-array v2, v3, [B

    .line 22
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 23
    :cond_1
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->u:I

    .line 24
    invoke-static {p2}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 25
    new-instance p2, Lcom/coremedia/iso/boxes/sampleentry/h$a;

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/coremedia/iso/boxes/sampleentry/h$a;-><init>(Lcom/coremedia/iso/boxes/sampleentry/h;JLcom/googlecode/mp4parser/e;)V

    const-wide/16 v0, 0x4e

    sub-long/2addr p3, v0

    .line 26
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/googlecode/mp4parser/b;->G(Lcom/googlecode/mp4parser/e;JLcom/coremedia/iso/c;)V

    return-void
.end method

.method public p0(D)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->r:D

    return-void
.end method

.method public q0(I)V
    .locals 0

    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/h;->o:I

    return-void
.end method
