.class abstract Lcom/google/android/exoplayer2/extractor/ogg/i;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/i$c;,
        Lcom/google/android/exoplayer2/extractor/ogg/i$b;
    }
.end annotation


# static fields
.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2

.field private static final q:I = 0x3


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/ogg/e;

.field private b:Lcom/google/android/exoplayer2/extractor/e0;

.field private c:Lcom/google/android/exoplayer2/extractor/m;

.field private d:Lcom/google/android/exoplayer2/extractor/ogg/g;

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Lcom/google/android/exoplayer2/extractor/ogg/i$b;

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->a:Lcom/google/android/exoplayer2/extractor/ogg/e;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/i$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/i$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->j:Lcom/google/android/exoplayer2/extractor/ogg/i$b;

    return-void
.end method

.method private a()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackOutput",
            "extractorOutput"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->b:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->c:Lcom/google/android/exoplayer2/extractor/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private h(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "setupData.format"
        }
        result = true
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->a:Lcom/google/android/exoplayer2/extractor/ogg/e;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/e;->d(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->h:I

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->k:J

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->a:Lcom/google/android/exoplayer2/extractor/ogg/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/e;->c()Lcom/google/android/exoplayer2/util/h0;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->f:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->j:Lcom/google/android/exoplayer2/extractor/ogg/i$b;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ogg/i;->i(Lcom/google/android/exoplayer2/util/h0;JLcom/google/android/exoplayer2/extractor/ogg/i$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->f:J

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private j(Lcom/google/android/exoplayer2/extractor/l;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/i;->h(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->j:Lcom/google/android/exoplayer2/extractor/ogg/i$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->a:Lcom/google/android/exoplayer2/Format;

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->i:I

    .line 3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->m:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->b:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    .line 5
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->m:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->j:Lcom/google/android/exoplayer2/extractor/ogg/i$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->b:Lcom/google/android/exoplayer2/extractor/ogg/g;

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->d:Lcom/google/android/exoplayer2/extractor/ogg/g;

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getLength()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/i$c;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/i$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->d:Lcom/google/android/exoplayer2/extractor/ogg/g;

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->a:Lcom/google/android/exoplayer2/extractor/ogg/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/e;->b()Lcom/google/android/exoplayer2/extractor/ogg/f;

    move-result-object v0

    .line 11
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/f;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    .line 12
    :goto_0
    new-instance v12, Lcom/google/android/exoplayer2/extractor/ogg/a;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->f:J

    .line 13
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getLength()J

    move-result-wide v4

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/f;->h:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/ogg/f;->i:I

    add-int/2addr v1, v6

    int-to-long v6, v1

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/ogg/f;->c:J

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/extractor/ogg/a;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/i;JJJJZ)V

    iput-object v12, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->d:Lcom/google/android/exoplayer2/extractor/ogg/g;

    :goto_1
    const/4 v0, 0x2

    .line 14
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->h:I

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->a:Lcom/google/android/exoplayer2/extractor/ogg/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/e;->f()V

    return v11
.end method

.method private k(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput",
            "oggSeeker",
            "extractorOutput"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->d:Lcom/google/android/exoplayer2/extractor/ogg/g;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/ogg/g;->a(Lcom/google/android/exoplayer2/extractor/l;)J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    move-object/from16 v7, p2

    .line 2
    iput-wide v2, v7, Lcom/google/android/exoplayer2/extractor/z;->a:J

    return v4

    :cond_0
    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    const-wide/16 v9, 0x2

    add-long/2addr v2, v9

    neg-long v2, v2

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ogg/i;->e(J)V

    .line 4
    :cond_1
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->l:Z

    if-nez v2, :cond_2

    .line 5
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->d:Lcom/google/android/exoplayer2/extractor/ogg/g;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ogg/g;->b()Lcom/google/android/exoplayer2/extractor/b0;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/b0;

    .line 6
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->c:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 7
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->l:Z

    .line 8
    :cond_2
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->k:J

    cmp-long v4, v2, v5

    if-gtz v4, :cond_4

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->a:Lcom/google/android/exoplayer2/extractor/ogg/e;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/ogg/e;->d(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    .line 9
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->h:I

    const/4 v1, -0x1

    return v1

    .line 10
    :cond_4
    :goto_0
    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->k:J

    .line 11
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->a:Lcom/google/android/exoplayer2/extractor/ogg/e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ogg/e;->c()Lcom/google/android/exoplayer2/util/h0;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/i;->f(Lcom/google/android/exoplayer2/util/h0;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_5

    .line 13
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->g:J

    add-long v9, v4, v2

    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->e:J

    cmp-long v6, v9, v11

    if-ltz v6, :cond_5

    .line 14
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/ogg/i;->b(J)J

    move-result-wide v10

    .line 15
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->b:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 16
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->b:Lcom/google/android/exoplayer2/extractor/e0;

    const/4 v12, 0x1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 17
    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->e:J

    .line 18
    :cond_5
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->g:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/i;->g:J

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected b(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->i:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method protected c(J)J
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->i:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method d(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->c:Lcom/google/android/exoplayer2/extractor/m;

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->b:Lcom/google/android/exoplayer2/extractor/e0;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/i;->l(Z)V

    return-void
.end method

.method protected e(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->g:J

    return-void
.end method

.method protected abstract f(Lcom/google/android/exoplayer2/util/h0;)J
.end method

.method final g(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/i;->a()V

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->h:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->d:Lcom/google/android/exoplayer2/extractor/ogg/g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/i;->k(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I

    move-result p1

    return p1

    .line 6
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->f:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    .line 7
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->h:I

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/i;->j(Lcom/google/android/exoplayer2/extractor/l;)I

    move-result p1

    return p1
.end method

.method protected abstract i(Lcom/google/android/exoplayer2/util/h0;JLcom/google/android/exoplayer2/extractor/ogg/i$b;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation
.end method

.method protected l(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/i$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/i$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->j:Lcom/google/android/exoplayer2/extractor/ogg/i$b;

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->f:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->e:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->g:J

    return-void
.end method

.method final m(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->a:Lcom/google/android/exoplayer2/extractor/ogg/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/e;->e()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/i;->l(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->h:I

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/ogg/i;->c(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->e:J

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->d:Lcom/google/android/exoplayer2/extractor/ogg/g;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/ogg/g;

    iget-wide p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->e:J

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ogg/g;->c(J)V

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/i;->h:I

    :cond_1
    :goto_0
    return-void
.end method
