.class public Lcom/koushikdutta/async/http/filter/ContentLengthFilter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ContentLengthFilter.java"


# instance fields
.field h:J

.field i:J

.field j:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->j:Lcom/koushikdutta/async/ByteBufferList;

    .line 3
    iput-wide p1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->h:J

    return-void
.end method


# virtual methods
.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    .line 2
    iget-wide v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->h:J

    iget-wide v3, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->i:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->j:Lcom/koushikdutta/async/ByteBufferList;

    long-to-int v1, v0

    invoke-virtual {p2, v2, v1}, Lcom/koushikdutta/async/ByteBufferList;->k(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->j:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->j:Lcom/koushikdutta/async/ByteBufferList;

    invoke-super {p0, p1, v1}, Lcom/koushikdutta/async/FilteredDataEmitter;->s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 6
    iget-wide v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->i:J

    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->j:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->i:J

    .line 7
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->j:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 8
    iget-wide p1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->i:J

    iget-wide v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->h:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->v0(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected v0(Ljava/lang/Exception;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->i:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->h:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    new-instance p1, Lcom/koushikdutta/async/http/filter/PrematureDataEndException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of data reached before content length was read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/filter/PrematureDataEndException;-><init>(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->v0(Ljava/lang/Exception;)V

    return-void
.end method
