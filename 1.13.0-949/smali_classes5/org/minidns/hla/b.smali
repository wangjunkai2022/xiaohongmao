.class public Lorg/minidns/hla/b;
.super Ljava/lang/Object;
.source "ResolverApi.java"


# static fields
.field public static final b:Lorg/minidns/hla/b;


# instance fields
.field private final a:Lorg/minidns/AbstractDnsClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/minidns/hla/b;

    new-instance v1, Lorg/minidns/iterative/ReliableDnsClient;

    invoke-direct {v1}, Lorg/minidns/iterative/ReliableDnsClient;-><init>()V

    invoke-direct {v0, v1}, Lorg/minidns/hla/b;-><init>(Lorg/minidns/AbstractDnsClient;)V

    sput-object v0, Lorg/minidns/hla/b;->b:Lorg/minidns/hla/b;

    return-void
.end method

.method public constructor <init>(Lorg/minidns/AbstractDnsClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/minidns/hla/b;->a:Lorg/minidns/AbstractDnsClient;

    return-void
.end method


# virtual methods
.method public final a()Lorg/minidns/AbstractDnsClient;
    .locals 1

    iget-object v0, p0, Lorg/minidns/hla/b;->a:Lorg/minidns/AbstractDnsClient;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Class;)Lorg/minidns/hla/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/h;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Lorg/minidns/hla/c<",
            "TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/minidns/hla/b;->d(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/minidns/dnsmessage/a;)Lorg/minidns/hla/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/h;",
            ">(",
            "Lorg/minidns/dnsmessage/a;",
            ")",
            "Lorg/minidns/hla/c<",
            "TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/hla/b;->a:Lorg/minidns/AbstractDnsClient;

    invoke-virtual {v0, p1}, Lorg/minidns/AbstractDnsClient;->w(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/minidns/hla/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/minidns/hla/c;-><init>(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/Set;)V

    return-object v1
.end method

.method public final d(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/h;",
            ">(",
            "Lorg/minidns/dnsname/DnsName;",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Lorg/minidns/hla/c<",
            "TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lorg/minidns/record/Record$TYPE;->getType(Ljava/lang/Class;)Lorg/minidns/record/Record$TYPE;

    move-result-object p2

    .line 2
    new-instance v0, Lorg/minidns/dnsmessage/a;

    invoke-direct {v0, p1, p2}, Lorg/minidns/dnsmessage/a;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/minidns/hla/b;->c(Lorg/minidns/dnsmessage/a;)Lorg/minidns/hla/c;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lorg/minidns/hla/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/minidns/hla/b;->f(Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/d;

    move-result-object p1

    return-object p1
.end method

.method public f(Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Lorg/minidns/record/u;

    invoke-virtual {p0, p1, v0}, Lorg/minidns/hla/b;->d(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/c;

    move-result-object p1

    .line 2
    new-instance v0, Lorg/minidns/hla/d;

    invoke-direct {v0, p1, p0}, Lorg/minidns/hla/d;-><init>(Lorg/minidns/hla/c;Lorg/minidns/hla/b;)V

    return-object v0
.end method

.method public g(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/minidns/dnsname/DnsName;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 1
    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->from([Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/minidns/hla/b;->f(Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/d;

    move-result-object p1

    return-object p1
.end method

.method public h(Lorg/minidns/hla/SrvService;Lorg/minidns/hla/SrvProto;Ljava/lang/String;)Lorg/minidns/hla/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p1, Lorg/minidns/hla/SrvService;->dnsName:Lorg/minidns/dnsname/DnsName;

    iget-object p2, p2, Lorg/minidns/hla/SrvProto;->dnsName:Lorg/minidns/dnsname/DnsName;

    invoke-static {p3}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/minidns/hla/b;->g(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/d;

    move-result-object p1

    return-object p1
.end method

.method public i(Lorg/minidns/hla/SrvService;Lorg/minidns/hla/SrvProto;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p1, Lorg/minidns/hla/SrvService;->dnsName:Lorg/minidns/dnsname/DnsName;

    iget-object p2, p2, Lorg/minidns/hla/SrvProto;->dnsName:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {p0, p1, p2, p3}, Lorg/minidns/hla/b;->g(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/d;

    move-result-object p1

    return-object p1
.end method

.method public j(Lorg/minidns/hla/SrvType;Ljava/lang/String;)Lorg/minidns/hla/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/minidns/hla/SrvType;->service:Lorg/minidns/hla/SrvService;

    iget-object p1, p1, Lorg/minidns/hla/SrvType;->proto:Lorg/minidns/hla/SrvProto;

    invoke-static {p2}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/minidns/hla/b;->i(Lorg/minidns/hla/SrvService;Lorg/minidns/hla/SrvProto;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/d;

    move-result-object p1

    return-object p1
.end method

.method public k(Lorg/minidns/hla/SrvType;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/minidns/hla/SrvType;->service:Lorg/minidns/hla/SrvService;

    iget-object p1, p1, Lorg/minidns/hla/SrvType;->proto:Lorg/minidns/hla/SrvProto;

    invoke-virtual {p0, v0, p1, p2}, Lorg/minidns/hla/b;->i(Lorg/minidns/hla/SrvService;Lorg/minidns/hla/SrvProto;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/d;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/CharSequence;)Lorg/minidns/hla/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lorg/minidns/hla/c<",
            "Lorg/minidns/record/q;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/minidns/hla/b;->o(Ljava/net/InetAddress;)Lorg/minidns/hla/c;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/net/Inet4Address;)Lorg/minidns/hla/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Inet4Address;",
            ")",
            "Lorg/minidns/hla/c<",
            "Lorg/minidns/record/q;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/minidns/util/g;->f(Ljava/net/Inet4Address;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    .line 2
    sget-object v0, Lorg/minidns/dnsname/DnsName;->IN_ADDR_ARPA:Lorg/minidns/dnsname/DnsName;

    invoke-static {p1, v0}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    .line 3
    const-class v0, Lorg/minidns/record/q;

    invoke-virtual {p0, p1, v0}, Lorg/minidns/hla/b;->d(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/c;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/net/Inet6Address;)Lorg/minidns/hla/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Inet6Address;",
            ")",
            "Lorg/minidns/hla/c<",
            "Lorg/minidns/record/q;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/minidns/util/g;->g(Ljava/net/Inet6Address;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    .line 2
    sget-object v0, Lorg/minidns/dnsname/DnsName;->IP6_ARPA:Lorg/minidns/dnsname/DnsName;

    invoke-static {p1, v0}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    .line 3
    const-class v0, Lorg/minidns/record/q;

    invoke-virtual {p0, p1, v0}, Lorg/minidns/hla/b;->d(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/c;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/net/InetAddress;)Lorg/minidns/hla/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")",
            "Lorg/minidns/hla/c<",
            "Lorg/minidns/record/q;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/net/Inet4Address;

    invoke-virtual {p0, p1}, Lorg/minidns/hla/b;->m(Ljava/net/Inet4Address;)Lorg/minidns/hla/c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/net/Inet6Address;

    invoke-virtual {p0, p1}, Lorg/minidns/hla/b;->n(Ljava/net/Inet6Address;)Lorg/minidns/hla/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The given InetAddress \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is neither of type Inet4Address or Inet6Address"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
