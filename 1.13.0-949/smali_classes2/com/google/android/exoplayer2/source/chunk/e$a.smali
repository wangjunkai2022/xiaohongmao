.class final Lcom/google/android/exoplayer2/source/chunk/e$a;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final d:I

.field private final e:I

.field private final f:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/extractor/j;

.field public h:Lcom/google/android/exoplayer2/Format;

.field private i:Lcom/google/android/exoplayer2/extractor/e0;

.field private j:J


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/Format;)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->d:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->e:I

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->f:Lcom/google/android/exoplayer2/Format;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/extractor/j;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/j;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->g:Lcom/google/android/exoplayer2/extractor/j;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/i;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->i:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/extractor/e0;

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/e0;->b(Lcom/google/android/exoplayer2/upstream/i;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/upstream/i;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/d0;->a(Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/upstream/i;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/util/h0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d0;->b(Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/util/h0;I)V

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->f:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->h:Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->i:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/e0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->h:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V
    .locals 8
    .param p6    # Lcom/google/android/exoplayer2/extractor/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->j:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->g:Lcom/google/android/exoplayer2/extractor/j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->i:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->i:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/extractor/e0;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/util/h0;II)V
    .locals 0

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->i:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/extractor/e0;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    return-void
.end method

.method public g(Lcom/google/android/exoplayer2/source/chunk/g$b;J)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/source/chunk/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->g:Lcom/google/android/exoplayer2/extractor/j;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->i:Lcom/google/android/exoplayer2/extractor/e0;

    return-void

    .line 2
    :cond_0
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->j:J

    .line 3
    iget p2, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->d:I

    iget p3, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->e:I

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/g$b;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->i:Lcom/google/android/exoplayer2/extractor/e0;

    .line 4
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/e$a;->h:Lcom/google/android/exoplayer2/Format;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    :cond_1
    return-void
.end method
