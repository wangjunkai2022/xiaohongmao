.class final Lcom/google/android/exoplayer2/extractor/wav/b$c;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/wav/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/wav/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/m;

.field private final b:Lcom/google/android/exoplayer2/extractor/e0;

.field private final c:Lcom/google/android/exoplayer2/extractor/wav/c;

.field private final d:Lcom/google/android/exoplayer2/Format;

.field private final e:I

.field private f:J

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/extractor/wav/c;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->a:Lcom/google/android/exoplayer2/extractor/m;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->b:Lcom/google/android/exoplayer2/extractor/e0;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->c:Lcom/google/android/exoplayer2/extractor/wav/c;

    .line 5
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/wav/c;->b:I

    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/c;->f:I

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x8

    .line 6
    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/c;->e:I

    if-ne p2, p1, :cond_0

    .line 7
    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/c;->c:I

    mul-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x8

    mul-int p2, p2, p1

    .line 8
    div-int/lit8 p2, p2, 0xa

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->e:I

    .line 10
    new-instance p2, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    .line 11
    invoke-virtual {p2, p4}, Lcom/google/android/exoplayer2/Format$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Format$b;->G(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p2

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Format$b;->Z(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p2

    .line 14
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Format$b;->W(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p1

    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/c;->b:I

    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$b;->H(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p1

    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/c;->c:I

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$b;->f0(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/Format$b;->Y(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->d:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 19
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/ParserException;

    iget p3, p3, Lcom/google/android/exoplayer2/extractor/wav/c;->e:I

    const/16 p4, 0x32

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Expected block size: "

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->a:Lcom/google/android/exoplayer2/extractor/m;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/wav/e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->c:Lcom/google/android/exoplayer2/extractor/wav/c;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/wav/e;-><init>(Lcom/google/android/exoplayer2/extractor/wav/c;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->b:Lcom/google/android/exoplayer2/extractor/e0;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->d:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/extractor/l;J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    .line 1
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->g:I

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->e:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v6, v8

    .line 2
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 3
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->b:Lcom/google/android/exoplayer2/extractor/e0;

    move-object/from16 v8, p1

    invoke-interface {v6, v8, v7, v3}, Lcom/google/android/exoplayer2/extractor/e0;->b(Lcom/google/android/exoplayer2/upstream/i;IZ)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move-wide v1, v4

    goto :goto_0

    .line 4
    :cond_0
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->g:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->g:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->c:Lcom/google/android/exoplayer2/extractor/wav/c;

    iget v2, v1, Lcom/google/android/exoplayer2/extractor/wav/c;->e:I

    .line 6
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->g:I

    div-int/2addr v4, v2

    if-lez v4, :cond_2

    .line 7
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->f:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->h:J

    const-wide/32 v11, 0xf4240

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/wav/c;->c:I

    int-to-long v13, v1

    .line 8
    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/z0;->f1(JJJ)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v4, v2

    .line 9
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->g:I

    sub-int/2addr v1, v15

    .line 10
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->b:Lcom/google/android/exoplayer2/extractor/e0;

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-interface/range {v11 .. v17}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 11
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->h:J

    int-to-long v4, v4

    add-long/2addr v7, v4

    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->h:J

    .line 12
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->g:I

    :cond_2
    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->f:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->g:I

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/b$c;->h:J

    return-void
.end method
