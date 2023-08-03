.class final Lcom/squareup/moshi/o;
.super Ljava/lang/Object;
.source "JsonValueSource.java"

# interfaces
.implements Lokio/Source;


# static fields
.field static final h:Lokio/ByteString;

.field static final i:Lokio/ByteString;

.field static final j:Lokio/ByteString;

.field static final k:Lokio/ByteString;

.field static final l:Lokio/ByteString;

.field static final m:Lokio/ByteString;


# instance fields
.field private final a:Lokio/BufferedSource;

.field private final b:Lokio/Buffer;

.field private final c:Lokio/Buffer;

.field private d:Lokio/ByteString;

.field private e:I

.field private f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[]{}\"\'/#"

    .line 1
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/o;->h:Lokio/ByteString;

    const-string v0, "\'\\"

    .line 2
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/o;->i:Lokio/ByteString;

    const-string v0, "\"\\"

    .line 3
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/o;->j:Lokio/ByteString;

    const-string v0, "\r\n"

    .line 4
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/o;->k:Lokio/ByteString;

    const-string v0, "*"

    .line 5
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/o;->l:Lokio/ByteString;

    .line 6
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/squareup/moshi/o;->m:Lokio/ByteString;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;)V
    .locals 3

    .line 1
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    sget-object v1, Lcom/squareup/moshi/o;->h:Lokio/ByteString;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/squareup/moshi/o;-><init>(Lokio/BufferedSource;Lokio/Buffer;Lokio/ByteString;I)V

    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;Lokio/Buffer;Lokio/ByteString;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/squareup/moshi/o;->g:Z

    .line 5
    iput-object p1, p0, Lcom/squareup/moshi/o;->a:Lokio/BufferedSource;

    .line 6
    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/moshi/o;->b:Lokio/Buffer;

    .line 7
    iput-object p2, p0, Lcom/squareup/moshi/o;->c:Lokio/Buffer;

    .line 8
    iput-object p3, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    .line 9
    iput p4, p0, Lcom/squareup/moshi/o;->e:I

    return-void
.end method

.method private a(J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_15

    .line 2
    iget-object v2, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    sget-object v3, Lcom/squareup/moshi/o;->m:Lokio/ByteString;

    if-ne v2, v3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/squareup/moshi/o;->b:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 4
    iget-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/squareup/moshi/o;->a:Lokio/BufferedSource;

    invoke-interface {v0, v6, v7}, Lokio/BufferedSource;->require(J)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/squareup/moshi/o;->b:Lokio/Buffer;

    iget-object v1, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    iget-wide v4, p0, Lcom/squareup/moshi/o;->f:J

    invoke-virtual {v0, v1, v4, v5}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    .line 7
    iget-object v0, p0, Lcom/squareup/moshi/o;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    goto :goto_0

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/squareup/moshi/o;->b:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    .line 9
    iget-object v4, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    sget-object v5, Lcom/squareup/moshi/o;->h:Lokio/ByteString;

    const-wide/16 v8, 0x2

    const/16 v10, 0x2f

    if-ne v4, v5, :cond_d

    const/16 v4, 0x22

    if-eq v2, v4, :cond_c

    const/16 v4, 0x23

    if-eq v2, v4, :cond_b

    const/16 v4, 0x27

    if-eq v2, v4, :cond_a

    if-eq v2, v10, :cond_7

    const/16 v4, 0x5b

    if-eq v2, v4, :cond_6

    const/16 v4, 0x5d

    if-eq v2, v4, :cond_4

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_6

    const/16 v4, 0x7d

    if-eq v2, v4, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    iget v2, p0, Lcom/squareup/moshi/o;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/moshi/o;->e:I

    if-nez v2, :cond_5

    .line 11
    iput-object v3, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    :cond_5
    add-long/2addr v0, v6

    .line 12
    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    goto :goto_0

    .line 13
    :cond_6
    iget v2, p0, Lcom/squareup/moshi/o;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/squareup/moshi/o;->e:I

    add-long/2addr v0, v6

    .line 14
    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    goto/16 :goto_0

    .line 15
    :cond_7
    iget-object v2, p0, Lcom/squareup/moshi/o;->a:Lokio/BufferedSource;

    add-long/2addr v8, v0

    invoke-interface {v2, v8, v9}, Lokio/BufferedSource;->require(J)V

    .line 16
    iget-object v2, p0, Lcom/squareup/moshi/o;->b:Lokio/Buffer;

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    if-ne v2, v10, :cond_8

    .line 17
    sget-object v0, Lcom/squareup/moshi/o;->k:Lokio/ByteString;

    iput-object v0, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    .line 18
    iput-wide v8, p0, Lcom/squareup/moshi/o;->f:J

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x2a

    if-ne v2, v3, :cond_9

    .line 19
    sget-object v0, Lcom/squareup/moshi/o;->l:Lokio/ByteString;

    iput-object v0, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    .line 20
    iput-wide v8, p0, Lcom/squareup/moshi/o;->f:J

    goto/16 :goto_0

    .line 21
    :cond_9
    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    goto/16 :goto_0

    .line 22
    :cond_a
    sget-object v2, Lcom/squareup/moshi/o;->i:Lokio/ByteString;

    iput-object v2, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    add-long/2addr v0, v6

    .line 23
    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    goto/16 :goto_0

    .line 24
    :cond_b
    sget-object v2, Lcom/squareup/moshi/o;->k:Lokio/ByteString;

    iput-object v2, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    add-long/2addr v0, v6

    .line 25
    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    goto/16 :goto_0

    .line 26
    :cond_c
    sget-object v2, Lcom/squareup/moshi/o;->j:Lokio/ByteString;

    iput-object v2, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    add-long/2addr v0, v6

    .line 27
    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    goto/16 :goto_0

    .line 28
    :cond_d
    sget-object v11, Lcom/squareup/moshi/o;->i:Lokio/ByteString;

    if-eq v4, v11, :cond_12

    sget-object v11, Lcom/squareup/moshi/o;->j:Lokio/ByteString;

    if-ne v4, v11, :cond_e

    goto :goto_1

    .line 29
    :cond_e
    sget-object v2, Lcom/squareup/moshi/o;->l:Lokio/ByteString;

    if-ne v4, v2, :cond_10

    .line 30
    iget-object v2, p0, Lcom/squareup/moshi/o;->a:Lokio/BufferedSource;

    add-long/2addr v8, v0

    invoke-interface {v2, v8, v9}, Lokio/BufferedSource;->require(J)V

    .line 31
    iget-object v2, p0, Lcom/squareup/moshi/o;->b:Lokio/Buffer;

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    if-ne v2, v10, :cond_f

    .line 32
    iput-wide v8, p0, Lcom/squareup/moshi/o;->f:J

    .line 33
    iput-object v5, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    goto/16 :goto_0

    .line 34
    :cond_f
    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    goto/16 :goto_0

    .line 35
    :cond_10
    sget-object v2, Lcom/squareup/moshi/o;->k:Lokio/ByteString;

    if-ne v4, v2, :cond_11

    add-long/2addr v0, v6

    .line 36
    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    .line 37
    iput-object v5, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    goto/16 :goto_0

    .line 38
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    :goto_1
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_13

    .line 39
    iget-object v2, p0, Lcom/squareup/moshi/o;->a:Lokio/BufferedSource;

    add-long/2addr v0, v8

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 40
    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    goto/16 :goto_0

    .line 41
    :cond_13
    iget v2, p0, Lcom/squareup/moshi/o;->e:I

    if-lez v2, :cond_14

    move-object v3, v5

    :cond_14
    iput-object v3, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    add-long/2addr v0, v6

    .line 42
    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    goto/16 :goto_0

    :cond_15
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/squareup/moshi/o;->g:Z

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    sget-object v1, Lcom/squareup/moshi/o;->m:Lokio/ByteString;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x2000

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/squareup/moshi/o;->a(J)V

    .line 4
    iget-object v0, p0, Lcom/squareup/moshi/o;->a:Lokio/BufferedSource;

    iget-wide v1, p0, Lcom/squareup/moshi/o;->f:J

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/moshi/o;->g:Z

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/squareup/moshi/o;->g:Z

    if-nez v0, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/squareup/moshi/o;->c:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->exhausted()Z

    move-result v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_3

    .line 3
    iget-object v0, p0, Lcom/squareup/moshi/o;->c:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 4
    iget-object v2, p0, Lcom/squareup/moshi/o;->b:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->exhausted()Z

    move-result v2

    if-eqz v2, :cond_1

    return-wide v0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/moshi/o;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_2

    add-long/2addr v0, p1

    :cond_2
    return-wide v0

    .line 6
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/squareup/moshi/o;->a(J)V

    .line 7
    iget-wide v5, p0, Lcom/squareup/moshi/o;->f:J

    cmp-long v2, v5, v0

    if-nez v2, :cond_5

    .line 8
    iget-object p1, p0, Lcom/squareup/moshi/o;->d:Lokio/ByteString;

    sget-object p2, Lcom/squareup/moshi/o;->m:Lokio/ByteString;

    if-ne p1, p2, :cond_4

    return-wide v3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_5
    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 10
    iget-object v0, p0, Lcom/squareup/moshi/o;->b:Lokio/Buffer;

    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 11
    iget-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/squareup/moshi/o;->f:J

    return-wide p2

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/o;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
