.class final Lcom/google/android/exoplayer2/source/c1$b;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/x0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2


# instance fields
.field private a:I

.field private b:Z

.field final synthetic c:Lcom/google/android/exoplayer2/source/c1;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/c1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c1$b;->c:Lcom/google/android/exoplayer2/source/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/c1;Lcom/google/android/exoplayer2/source/c1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/c1$b;-><init>(Lcom/google/android/exoplayer2/source/c1;)V

    return-void
.end method

.method private b()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/c1$b;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c1$b;->c:Lcom/google/android/exoplayer2/source/c1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/c1;->a(Lcom/google/android/exoplayer2/source/c1;)Lcom/google/android/exoplayer2/source/h0$a;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c1$b;->c:Lcom/google/android/exoplayer2/source/c1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/c1;->j:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a0;->l(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c1$b;->c:Lcom/google/android/exoplayer2/source/c1;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/c1;->j:Lcom/google/android/exoplayer2/Format;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/h0$a;->i(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/c1$b;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c1$b;->c:Lcom/google/android/exoplayer2/source/c1;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/c1;->k:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/c1;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/c1$b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/source/c1$b;->a:I

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c1$b;->c:Lcom/google/android/exoplayer2/source/c1;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/c1;->l:Z

    return v0
.end method

.method public q(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/c1$b;->b()V

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/source/c1$b;->a:I

    const/4 v1, -0x4

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 3
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/a;->e(I)V

    return v1

    :cond_0
    and-int/lit8 v4, p3, 0x2

    const/4 v5, 0x1

    if-nez v4, :cond_6

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c1$b;->c:Lcom/google/android/exoplayer2/source/c1;

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/c1;->l:Z

    if-nez v0, :cond_2

    const/4 p1, -0x3

    return p1

    .line 5
    :cond_2
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/c1;->m:[B

    if-nez p1, :cond_3

    .line 6
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/decoder/a;->e(I)V

    .line 7
    iput v3, p0, Lcom/google/android/exoplayer2/source/c1$b;->a:I

    return v1

    .line 8
    :cond_3
    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/decoder/a;->e(I)V

    const-wide/16 v6, 0x0

    .line 9
    iput-wide v6, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c1$b;->c:Lcom/google/android/exoplayer2/source/c1;

    iget p1, p1, Lcom/google/android/exoplayer2/source/c1;->n:I

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->p(I)V

    .line 11
    iget-object p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/c1$b;->c:Lcom/google/android/exoplayer2/source/c1;

    iget-object v0, p2, Lcom/google/android/exoplayer2/source/c1;->m:[B

    const/4 v2, 0x0

    iget p2, p2, Lcom/google/android/exoplayer2/source/c1;->n:I

    invoke-virtual {p1, v0, v2, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_4
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_5

    .line 12
    iput v3, p0, Lcom/google/android/exoplayer2/source/c1$b;->a:I

    :cond_5
    return v1

    .line 13
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/c1$b;->c:Lcom/google/android/exoplayer2/source/c1;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/c1;->j:Lcom/google/android/exoplayer2/Format;

    iput-object p2, p1, Lcom/google/android/exoplayer2/v0;->b:Lcom/google/android/exoplayer2/Format;

    .line 14
    iput v5, p0, Lcom/google/android/exoplayer2/source/c1$b;->a:I

    const/4 p1, -0x5

    return p1
.end method

.method public t(J)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/c1$b;->b()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    iget p1, p0, Lcom/google/android/exoplayer2/source/c1$b;->a:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/source/c1$b;->a:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
