.class final Lcom/google/common/hash/b0$a;
.super Lcom/google/common/hash/f;
.source "SipHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final l:I = 0x8


# instance fields
.field private final d:I

.field private final e:I

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J


# direct methods
.method constructor <init>(IIJJ)V
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/hash/f;-><init>(I)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/common/hash/b0$a;->j:J

    .line 3
    iput-wide v0, p0, Lcom/google/common/hash/b0$a;->k:J

    .line 4
    iput p1, p0, Lcom/google/common/hash/b0$a;->d:I

    .line 5
    iput p2, p0, Lcom/google/common/hash/b0$a;->e:I

    const-wide p1, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long/2addr p1, p3

    .line 6
    iput-wide p1, p0, Lcom/google/common/hash/b0$a;->f:J

    const-wide p1, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long/2addr p1, p5

    .line 7
    iput-wide p1, p0, Lcom/google/common/hash/b0$a;->g:J

    const-wide p1, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long/2addr p1, p3

    .line 8
    iput-wide p1, p0, Lcom/google/common/hash/b0$a;->h:J

    const-wide p1, 0x7465646279746573L    # 4.901176695720602E252

    xor-long/2addr p1, p5

    .line 9
    iput-wide p1, p0, Lcom/google/common/hash/b0$a;->i:J

    return-void
.end method

.method private p(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/common/hash/b0$a;->i:J

    xor-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/b0$a;->i:J

    .line 2
    iget v0, p0, Lcom/google/common/hash/b0$a;->d:I

    invoke-direct {p0, v0}, Lcom/google/common/hash/b0$a;->q(I)V

    .line 3
    iget-wide v0, p0, Lcom/google/common/hash/b0$a;->f:J

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/hash/b0$a;->f:J

    return-void
.end method

.method private q(I)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1
    iget-wide v1, p0, Lcom/google/common/hash/b0$a;->f:J

    iget-wide v3, p0, Lcom/google/common/hash/b0$a;->g:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/hash/b0$a;->f:J

    .line 2
    iget-wide v1, p0, Lcom/google/common/hash/b0$a;->h:J

    iget-wide v5, p0, Lcom/google/common/hash/b0$a;->i:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/common/hash/b0$a;->h:J

    const/16 v1, 0xd

    .line 3
    invoke-static {v3, v4, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/hash/b0$a;->g:J

    .line 4
    iget-wide v1, p0, Lcom/google/common/hash/b0$a;->i:J

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    .line 5
    iget-wide v3, p0, Lcom/google/common/hash/b0$a;->g:J

    iget-wide v5, p0, Lcom/google/common/hash/b0$a;->f:J

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/hash/b0$a;->g:J

    .line 6
    iget-wide v3, p0, Lcom/google/common/hash/b0$a;->h:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/hash/b0$a;->i:J

    const/16 v1, 0x20

    .line 7
    invoke-static {v5, v6, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    .line 8
    iget-wide v4, p0, Lcom/google/common/hash/b0$a;->h:J

    iget-wide v6, p0, Lcom/google/common/hash/b0$a;->g:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/hash/b0$a;->h:J

    .line 9
    iget-wide v4, p0, Lcom/google/common/hash/b0$a;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/b0$a;->f:J

    const/16 v2, 0x11

    .line 10
    invoke-static {v6, v7, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/hash/b0$a;->g:J

    .line 11
    iget-wide v2, p0, Lcom/google/common/hash/b0$a;->i:J

    const/16 v4, 0x15

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    .line 12
    iget-wide v4, p0, Lcom/google/common/hash/b0$a;->g:J

    iget-wide v6, p0, Lcom/google/common/hash/b0$a;->h:J

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/hash/b0$a;->g:J

    .line 13
    iget-wide v4, p0, Lcom/google/common/hash/b0$a;->f:J

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/b0$a;->i:J

    .line 14
    invoke-static {v6, v7, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/hash/b0$a;->h:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public j()Lcom/google/common/hash/l;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/hash/b0$a;->k:J

    iget-wide v2, p0, Lcom/google/common/hash/b0$a;->j:J

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/b0$a;->k:J

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/common/hash/b0$a;->p(J)V

    .line 3
    iget-wide v0, p0, Lcom/google/common/hash/b0$a;->h:J

    const-wide/16 v2, 0xff

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/b0$a;->h:J

    .line 4
    iget v0, p0, Lcom/google/common/hash/b0$a;->e:I

    invoke-direct {p0, v0}, Lcom/google/common/hash/b0$a;->q(I)V

    .line 5
    iget-wide v0, p0, Lcom/google/common/hash/b0$a;->f:J

    iget-wide v2, p0, Lcom/google/common/hash/b0$a;->g:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/b0$a;->h:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/b0$a;->i:J

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/hash/l;->l(J)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method protected m(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/common/hash/b0$a;->j:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/b0$a;->j:J

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/common/hash/b0$a;->p(J)V

    return-void
.end method

.method protected n(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/common/hash/b0$a;->j:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/b0$a;->j:J

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, p0, Lcom/google/common/hash/b0$a;->k:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    shl-long/2addr v3, v0

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/hash/b0$a;->k:J

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return-void
.end method
