.class public Lcom/google/android/exoplayer2/extractor/v;
.super Ljava/lang/Object;
.source "ForwardingExtractorInput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/l;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/extractor/l;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    return-void
.end method


# virtual methods
.method public f(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/l;->f(IZ)Z

    move-result p1

    return p1
.end method

.method public g([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/l;->g([BIIZ)Z

    move-result p1

    return p1
.end method

.method public getLength()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/l;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    return-void
.end method

.method public i([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/l;->i([BIIZ)Z

    move-result p1

    return p1
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/l;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public k(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/l;->k(I)V

    return-void
.end method

.method public m(JLjava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/l;->m(JLjava/lang/Throwable;)V

    return-void
.end method

.method public n([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/l;->n([BII)I

    move-result p1

    return p1
.end method

.method public o(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    return-void
.end method

.method public q(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/l;->q(IZ)Z

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/l;->read([BII)I

    move-result p1

    return p1
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    return-void
.end method

.method public s([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    return-void
.end method

.method public skip(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->b:Lcom/google/android/exoplayer2/extractor/l;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/l;->skip(I)I

    move-result p1

    return p1
.end method
