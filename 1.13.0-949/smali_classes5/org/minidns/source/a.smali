.class public Lorg/minidns/source/a;
.super Lorg/minidns/source/DnsDataSource;
.source "NetworkDataSource.java"


# static fields
.field protected static final e:Ljava/util/logging/Logger;

.field static final synthetic f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/minidns/source/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/minidns/source/a;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/minidns/source/DnsDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lorg/minidns/source/DnsDataSource;->b()Lorg/minidns/source/DnsDataSource$QueryMode;

    move-result-object v2

    .line 3
    sget-object v3, Lorg/minidns/source/a$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    if-eq v3, v1, :cond_1

    const/4 v1, 0x3

    if-ne v3, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported query mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/minidns/source/a;->m(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v2, :cond_2

    .line 7
    iget-boolean v1, v2, Lorg/minidns/dnsmessage/DnsMessage;->f:Z

    if-nez v1, :cond_2

    return-object v2

    .line 8
    :cond_2
    sget-object v1, Lorg/minidns/source/a;->e:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v2, :cond_3

    const-string v6, "response is truncated"

    goto :goto_2

    .line 9
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;

    :goto_2
    aput-object v6, v5, v4

    const-string v4, "Fallback to TCP because {0}"

    .line 10
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/minidns/source/a;->l(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v0}, Lorg/minidns/util/MultipleIoException;->throwIfRequired(Ljava/util/List;)V

    :goto_3
    return-object v2
.end method

.method protected j()Ljava/net/DatagramSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    return-object v0
.end method

.method protected k()Ljava/net/Socket;
    .locals 1

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method protected l(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/minidns/source/a;->k()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 3
    iget p2, p0, Lorg/minidns/source/DnsDataSource;->b:I

    invoke-virtual {v0, v1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 4
    iget p2, p0, Lorg/minidns/source/DnsDataSource;->b:I

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 5
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    invoke-virtual {p1, p2}, Lorg/minidns/dnsmessage/DnsMessage;->s(Ljava/io/DataOutputStream;)V

    .line 7
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    .line 8
    new-instance p2, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p3

    .line 10
    new-array v1, p3, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    sub-int v3, p3, v2

    .line 11
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 12
    :cond_0
    new-instance p2, Lorg/minidns/dnsmessage/DnsMessage;

    invoke-direct {p2, v1}, Lorg/minidns/dnsmessage/DnsMessage;-><init>([B)V

    .line 13
    iget p3, p2, Lorg/minidns/dnsmessage/DnsMessage;->a:I

    iget v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p3, v1, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-object p2

    .line 15
    :cond_1
    :try_start_2
    new-instance p3, Lorg/minidns/MiniDnsException$IdMismatch;

    invoke-direct {p3, p1, p2}, Lorg/minidns/MiniDnsException$IdMismatch;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 17
    :cond_2
    throw p1
.end method

.method protected m(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Lorg/minidns/dnsmessage/DnsMessage;->b(Ljava/net/InetAddress;I)Ljava/net/DatagramPacket;

    move-result-object p2

    .line 2
    iget p3, p0, Lorg/minidns/source/DnsDataSource;->a:I

    new-array v0, p3, [B

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/minidns/source/a;->j()Ljava/net/DatagramSocket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget v2, p0, Lorg/minidns/source/DnsDataSource;->b:I

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 5
    invoke-virtual {v1, p2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 6
    new-instance p2, Ljava/net/DatagramPacket;

    invoke-direct {p2, v0, p3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 7
    invoke-virtual {v1, p2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 8
    new-instance p3, Lorg/minidns/dnsmessage/DnsMessage;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p2

    invoke-direct {p3, p2}, Lorg/minidns/dnsmessage/DnsMessage;-><init>([B)V

    .line 9
    iget p2, p3, Lorg/minidns/dnsmessage/DnsMessage;->a:I

    iget v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, v0, :cond_0

    .line 10
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    return-object p3

    .line 11
    :cond_0
    :try_start_2
    new-instance p2, Lorg/minidns/MiniDnsException$IdMismatch;

    invoke-direct {p2, p1, p3}, Lorg/minidns/MiniDnsException$IdMismatch;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 13
    :cond_1
    throw p1
.end method
