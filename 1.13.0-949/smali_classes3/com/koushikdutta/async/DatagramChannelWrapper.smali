.class Lcom/koushikdutta/async/DatagramChannelWrapper;
.super Lcom/koushikdutta/async/ChannelWrapper;
.source "DatagramChannelWrapper.java"


# instance fields
.field b:Ljava/nio/channels/DatagramChannel;

.field c:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Ljava/nio/channels/DatagramChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/ChannelWrapper;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V

    .line 2
    iput-object p1, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    return-void
.end method


# virtual methods
.method public A()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->c:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public a()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public k(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/DatagramChannelWrapper;->p(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    return-object p1
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/DatagramChannelWrapper;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    iput-object v1, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->c:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    sub-int/2addr p1, v0

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->c:Ljava/net/InetSocketAddress;

    .line 6
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->read([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/DatagramChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide p1

    return-wide p1
.end method

.method public s([Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public y()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/DatagramChannelWrapper;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    return-void
.end method
