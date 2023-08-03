.class public final Lcom/google/android/exoplayer2/extractor/rawcc/a;
.super Ljava/lang/Object;
.source "RawCcExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/k;


# static fields
.field private static final l:I = 0x9

.field private static final m:I = 0x8

.field private static final n:I = 0x52434301

.field private static final o:I = 0x4

.field private static final p:I = 0x8

.field private static final q:I = 0x0

.field private static final r:I = 0x1

.field private static final s:I = 0x2


# instance fields
.field private final d:Lcom/google/android/exoplayer2/Format;

.field private final e:Lcom/google/android/exoplayer2/util/h0;

.field private f:Lcom/google/android/exoplayer2/extractor/e0;

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->d:Lcom/google/android/exoplayer2/Format;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/util/h0;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->g:I

    return-void
.end method

.method private e(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/l;->i([BIIZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result p1

    const v0, 0x52434301

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->h:I

    return v3

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Input not RawCC"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v2
.end method

.method private f(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 8
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
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->j:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->f:Lcom/google/android/exoplayer2/extractor/e0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 5
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->k:I

    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->j:I

    goto :goto_0

    .line 7
    :cond_0
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->k:I

    if-lez v5, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->f:Lcom/google/android/exoplayer2/extractor/e0;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->i:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    :cond_1
    return-void
.end method

.method private g(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/l;->i([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    const-wide/16 v5, 0x2d

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->i:J

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/l;->i([BIIZ)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->z()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->i:J

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->j:I

    .line 9
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->k:I

    return v1

    .line 10
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->h:I

    const/16 v1, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported version number: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->g:I

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result p1

    const v0, 0x52434301

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->f:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->g:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p2, v1, :cond_1

    if-ne p2, v3, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/rawcc/a;->f(Lcom/google/android/exoplayer2/extractor/l;)V

    .line 4
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->g:I

    return v2

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/rawcc/a;->g(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->g:I

    goto :goto_0

    .line 8
    :cond_2
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->g:I

    return v0

    .line 9
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/rawcc/a;->e(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 10
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->g:I

    goto :goto_0

    :cond_4
    return v0
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/b0$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->f:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/rawcc/a;->d:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->t()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
