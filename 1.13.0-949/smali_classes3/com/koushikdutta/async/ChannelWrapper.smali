.class abstract Lcom/koushikdutta/async/ChannelWrapper;
.super Ljava/lang/Object;
.source "ChannelWrapper.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;
.implements Ljava/nio/channels/ScatteringByteChannel;


# instance fields
.field private a:Ljava/nio/channels/spi/AbstractSelectableChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 3
    iput-object p1, p0, Lcom/koushikdutta/async/ChannelWrapper;->a:Ljava/nio/channels/spi/AbstractSelectableChannel;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/net/InetAddress;
.end method

.method public abstract b()I
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/ChannelWrapper;->a:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->close()V

    return-void
.end method

.method public abstract d()Ljava/lang/Object;
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract i()Z
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/ChannelWrapper;->a:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public abstract k(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation
.end method

.method public p(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/ChannelWrapper;->a:Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/spi/AbstractSelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    return-object p1
.end method

.method public abstract q()V
.end method

.method public abstract r()V
.end method

.method public abstract s([Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
