.class final Lcom/google/android/exoplayer2/extractor/mkv/e$e;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:[B

.field private b:Z

.field private c:I

.field private d:J

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->a:[B

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/mkv/e$d;)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->c:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->X:Lcom/google/android/exoplayer2/extractor/e0;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->d:J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->e:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->f:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->g:I

    iget-object v7, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->j:Lcom/google/android/exoplayer2/extractor/e0$a;

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->c:I

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->b:Z

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->c:I

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/mkv/e$d;JIII)V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->c:I

    if-nez v0, :cond_1

    .line 3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->d:J

    .line 4
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->e:I

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->f:I

    .line 6
    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->f:I

    add-int/2addr p2, p5

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->f:I

    .line 7
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->g:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->a(Lcom/google/android/exoplayer2/extractor/mkv/e$d;)V

    :cond_2
    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->a:[B

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/b;->i([B)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->b:Z

    return-void
.end method
