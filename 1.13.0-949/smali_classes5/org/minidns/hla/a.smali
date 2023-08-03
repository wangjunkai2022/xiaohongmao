.class public Lorg/minidns/hla/a;
.super Lorg/minidns/hla/b;
.source "DnssecResolverApi.java"


# static fields
.field public static final f:Lorg/minidns/hla/a;


# instance fields
.field private final c:Lorg/minidns/dnssec/b;

.field private final d:Lorg/minidns/dnssec/b;

.field private final e:Lorg/minidns/dnssec/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/minidns/hla/a;

    invoke-direct {v0}, Lorg/minidns/hla/a;-><init>()V

    sput-object v0, Lorg/minidns/hla/a;->f:Lorg/minidns/hla/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/minidns/hla/a$a;

    invoke-direct {v0}, Lorg/minidns/hla/a$a;-><init>()V

    invoke-direct {p0, v0}, Lorg/minidns/hla/a;-><init>(Lorg/minidns/cache/d;)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/cache/d;)V
    .locals 2

    .line 2
    new-instance v0, Lorg/minidns/dnssec/b;

    invoke-interface {p1}, Lorg/minidns/cache/d;->a()Lorg/minidns/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/minidns/dnssec/b;-><init>(Lorg/minidns/a;)V

    invoke-direct {p0, v0, p1}, Lorg/minidns/hla/a;-><init>(Lorg/minidns/dnssec/b;Lorg/minidns/cache/d;)V

    return-void
.end method

.method private constructor <init>(Lorg/minidns/dnssec/b;Lorg/minidns/cache/d;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/minidns/hla/b;-><init>(Lorg/minidns/AbstractDnsClient;)V

    .line 4
    iput-object p1, p0, Lorg/minidns/hla/a;->c:Lorg/minidns/dnssec/b;

    .line 5
    new-instance p1, Lorg/minidns/dnssec/b;

    invoke-interface {p2}, Lorg/minidns/cache/d;->a()Lorg/minidns/a;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/minidns/dnssec/b;-><init>(Lorg/minidns/a;)V

    iput-object p1, p0, Lorg/minidns/hla/a;->d:Lorg/minidns/dnssec/b;

    .line 6
    sget-object v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;->iterativeOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    invoke-virtual {p1, v0}, Lorg/minidns/iterative/ReliableDnsClient;->J(Lorg/minidns/iterative/ReliableDnsClient$Mode;)V

    .line 7
    new-instance p1, Lorg/minidns/dnssec/b;

    invoke-interface {p2}, Lorg/minidns/cache/d;->a()Lorg/minidns/a;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/minidns/dnssec/b;-><init>(Lorg/minidns/a;)V

    iput-object p1, p0, Lorg/minidns/hla/a;->e:Lorg/minidns/dnssec/b;

    .line 8
    sget-object p2, Lorg/minidns/iterative/ReliableDnsClient$Mode;->recursiveOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    invoke-virtual {p1, p2}, Lorg/minidns/iterative/ReliableDnsClient;->J(Lorg/minidns/iterative/ReliableDnsClient$Mode;)V

    return-void
.end method

.method private static t(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnssec/c;)Lorg/minidns/hla/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/h;",
            ">(",
            "Lorg/minidns/dnsmessage/a;",
            "Lorg/minidns/dnssec/c;",
            ")",
            "Lorg/minidns/hla/c<",
            "TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/MiniDnsException$NullResultException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/minidns/dnssec/c;->u()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/minidns/hla/c;

    invoke-direct {v1, p0, p1, v0}, Lorg/minidns/hla/c;-><init>(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/Set;)V

    return-object v1
.end method


# virtual methods
.method public c(Lorg/minidns/dnsmessage/a;)Lorg/minidns/hla/c;
    .locals 1
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
    iget-object v0, p0, Lorg/minidns/hla/a;->c:Lorg/minidns/dnssec/b;

    invoke-virtual {v0, p1}, Lorg/minidns/dnssec/b;->U(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnssec/c;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lorg/minidns/hla/a;->t(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnssec/c;)Lorg/minidns/hla/c;

    move-result-object p1

    return-object p1
.end method

.method public p()Lorg/minidns/dnssec/b;
    .locals 1

    iget-object v0, p0, Lorg/minidns/hla/a;->c:Lorg/minidns/dnssec/b;

    return-object v0
.end method

.method public q(Ljava/lang/String;Ljava/lang/Class;)Lorg/minidns/hla/c;
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

    invoke-virtual {p0, p1, p2}, Lorg/minidns/hla/a;->s(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/c;

    move-result-object p1

    return-object p1
.end method

.method public r(Lorg/minidns/dnsmessage/a;)Lorg/minidns/hla/c;
    .locals 2
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
    iget-object v0, p0, Lorg/minidns/hla/a;->e:Lorg/minidns/dnssec/b;

    invoke-virtual {v0, p1}, Lorg/minidns/dnssec/b;->U(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnssec/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, v0, Lorg/minidns/dnsmessage/DnsMessage;->i:Z

    if-nez v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/hla/a;->d:Lorg/minidns/dnssec/b;

    invoke-virtual {v0, p1}, Lorg/minidns/dnssec/b;->U(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnssec/c;

    move-result-object v0

    .line 4
    :cond_1
    invoke-static {p1, v0}, Lorg/minidns/hla/a;->t(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnssec/c;)Lorg/minidns/hla/c;

    move-result-object p1

    return-object p1
.end method

.method public s(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/c;
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
    invoke-virtual {p0, v0}, Lorg/minidns/hla/a;->r(Lorg/minidns/dnsmessage/a;)Lorg/minidns/hla/c;

    move-result-object p1

    return-object p1
.end method
