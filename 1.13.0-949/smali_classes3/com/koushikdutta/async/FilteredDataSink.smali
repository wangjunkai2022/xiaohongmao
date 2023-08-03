.class public Lcom/koushikdutta/async/FilteredDataSink;
.super Lcom/koushikdutta/async/BufferedDataSink;
.source "FilteredDataSink.java"


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->B(I)V

    return-void
.end method


# virtual methods
.method public E(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 0

    return-object p1
.end method

.method protected s(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/FilteredDataSink;->E(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_0
    return-void
.end method
