.class public abstract Lorg/minidns/AbstractDnsClient;
.super Ljava/lang/Object;
.source "AbstractDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    }
.end annotation


# static fields
.field protected static final g:Lorg/minidns/cache/c;

.field protected static final h:Ljava/util/logging/Logger;

.field protected static i:Lorg/minidns/AbstractDnsClient$IpVersionSetting;


# instance fields
.field private final a:Lorg/minidns/source/DnsDataSource$a;

.field protected final b:Ljava/util/Random;

.field protected final c:Ljava/util/Random;

.field protected final d:Lorg/minidns/a;

.field protected e:Lorg/minidns/source/DnsDataSource;

.field protected f:Lorg/minidns/AbstractDnsClient$IpVersionSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/minidns/cache/c;

    invoke-direct {v0}, Lorg/minidns/cache/c;-><init>()V

    sput-object v0, Lorg/minidns/AbstractDnsClient;->g:Lorg/minidns/cache/c;

    .line 2
    const-class v0, Lorg/minidns/AbstractDnsClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    .line 3
    sget-object v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4v6:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    sput-object v0, Lorg/minidns/AbstractDnsClient;->i:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 10
    sget-object v0, Lorg/minidns/AbstractDnsClient;->g:Lorg/minidns/cache/c;

    invoke-direct {p0, v0}, Lorg/minidns/AbstractDnsClient;-><init>(Lorg/minidns/a;)V

    return-void
.end method

.method protected constructor <init>(Lorg/minidns/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/minidns/AbstractDnsClient$a;

    invoke-direct {v0, p0}, Lorg/minidns/AbstractDnsClient$a;-><init>(Lorg/minidns/AbstractDnsClient;)V

    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->a:Lorg/minidns/source/DnsDataSource$a;

    .line 3
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->c:Ljava/util/Random;

    .line 4
    new-instance v0, Lorg/minidns/source/a;

    invoke-direct {v0}, Lorg/minidns/source/a;-><init>()V

    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->e:Lorg/minidns/source/DnsDataSource;

    .line 5
    sget-object v0, Lorg/minidns/AbstractDnsClient;->i:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->f:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    :try_start_0
    const-string v0, "SHA1PRNG"

    .line 6
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    :goto_0
    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->b:Ljava/util/Random;

    .line 9
    iput-object p1, p0, Lorg/minidns/AbstractDnsClient;->d:Lorg/minidns/a;

    return-void
.end method

.method public static G(Lorg/minidns/AbstractDnsClient$IpVersionSetting;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sput-object p0, Lorg/minidns/AbstractDnsClient;->i:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private c(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/h;",
            ">(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record$TYPE;",
            ")",
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->h(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/record/l;

    .line 6
    sget-object v2, Lorg/minidns/AbstractDnsClient$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 7
    iget-object v1, v1, Lorg/minidns/record/s;->c:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {p0, v1}, Lorg/minidns/AbstractDnsClient;->f(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_2
    iget-object v1, v1, Lorg/minidns/record/s;->c:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {p0, v1}, Lorg/minidns/AbstractDnsClient;->d(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v1

    .line 10
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private i(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/h;",
            ">(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record$TYPE;",
            ")",
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/minidns/dnsmessage/a;

    invoke-direct {v0, p1, p2}, Lorg/minidns/dnsmessage/a;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->l(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lorg/minidns/AbstractDnsClient;->d:Lorg/minidns/a;

    invoke-virtual {p2, p1}, Lorg/minidns/a;->a(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Lorg/minidns/dnsmessage/DnsMessage;->j(Lorg/minidns/dnsmessage/a;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final A(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/minidns/record/Record$TYPE;",
            ")",
            "Lorg/minidns/d<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/minidns/dnsmessage/a;

    sget-object v1, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v0, p1, p2, v1}, Lorg/minidns/dnsmessage/a;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->E(Lorg/minidns/dnsmessage/a;)Lorg/minidns/d;

    move-result-object p1

    return-object p1
.end method

.method protected B(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage$b;",
            ")",
            "Lorg/minidns/d<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/minidns/d$e;

    invoke-direct {v0}, Lorg/minidns/d$e;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->t(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v0, p1}, Lorg/minidns/d$e;->k(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {v0, p1}, Lorg/minidns/d$e;->j(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final C(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/net/InetAddress;",
            ")",
            "Lorg/minidns/d<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x35

    invoke-virtual {p0, p1, p2, v0}, Lorg/minidns/AbstractDnsClient;->D(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/d;

    move-result-object p1

    return-object p1
.end method

.method public final D(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/net/InetAddress;",
            "I)",
            "Lorg/minidns/d<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->d:Lorg/minidns/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/minidns/a;->a(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lorg/minidns/d;->f(Ljava/lang/Object;)Lorg/minidns/d;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->o()Lorg/minidns/dnsmessage/a;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 5
    sget-object v2, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    aput-object p1, v3, v0

    const-string v0, "Asynchronusly asking {0} on {1} for {2} with:\n{3}"

    invoke-virtual {v2, v1, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->e:Lorg/minidns/source/DnsDataSource;

    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->a:Lorg/minidns/source/DnsDataSource$a;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/minidns/source/DnsDataSource;->f(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;ILorg/minidns/source/DnsDataSource$a;)Lorg/minidns/d;

    move-result-object p1

    return-object p1
.end method

.method public final E(Lorg/minidns/dnsmessage/a;)Lorg/minidns/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/a;",
            ")",
            "Lorg/minidns/d<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->a(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->B(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/d;

    move-result-object p1

    return-object p1
.end method

.method public F(Lorg/minidns/source/DnsDataSource;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lorg/minidns/AbstractDnsClient;->e:Lorg/minidns/source/DnsDataSource;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public H(Lorg/minidns/AbstractDnsClient$IpVersionSetting;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lorg/minidns/AbstractDnsClient;->f:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method final a(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 1

    .line 1
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage;->e()Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lorg/minidns/dnsmessage/DnsMessage$b;->L(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage$b;

    .line 3
    iget-object p1, p0, Lorg/minidns/AbstractDnsClient;->b:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/minidns/dnsmessage/DnsMessage$b;->H(I)Lorg/minidns/dnsmessage/DnsMessage$b;

    .line 4
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->n(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    return-object p1
.end method

.method public b()Lorg/minidns/a;
    .locals 1

    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->d:Lorg/minidns/a;

    return-object v0
.end method

.method public d(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/record/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    invoke-direct {p0, p1, v0}, Lorg/minidns/AbstractDnsClient;->i(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public e(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/record/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    invoke-direct {p0, p1, v0}, Lorg/minidns/AbstractDnsClient;->c(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public f(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/record/b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    invoke-direct {p0, p1, v0}, Lorg/minidns/AbstractDnsClient;->i(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public g(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/record/b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    invoke-direct {p0, p1, v0}, Lorg/minidns/AbstractDnsClient;->c(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public h(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/record/l;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/minidns/record/Record$TYPE;->NS:Lorg/minidns/record/Record$TYPE;

    invoke-direct {p0, p1, v0}, Lorg/minidns/AbstractDnsClient;->i(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public j()Lorg/minidns/source/DnsDataSource;
    .locals 1

    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->e:Lorg/minidns/source/DnsDataSource;

    return-object v0
.end method

.method public k()Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .locals 1

    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->f:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-object v0
.end method

.method protected l(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->a(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$b;->w()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method

.method protected m(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;)Z
    .locals 1

    .line 1
    iget-object p2, p2, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/Record;

    .line 2
    invoke-virtual {v0, p1}, Lorg/minidns/record/Record;->h(Lorg/minidns/dnsmessage/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract n(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$b;
.end method

.method public final o(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/minidns/dnsmessage/a;

    sget-object v1, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v0, p1, p2, v1}, Lorg/minidns/dnsmessage/a;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->w(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;Lorg/minidns/record/Record$TYPE;Ljava/net/InetAddress;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/minidns/dnsmessage/a;

    sget-object v1, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v0, p1, p2, v1}, Lorg/minidns/dnsmessage/a;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 2
    invoke-virtual {p0, v0, p3}, Lorg/minidns/AbstractDnsClient;->x(Lorg/minidns/dnsmessage/a;Ljava/net/InetAddress;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/lang/String;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/minidns/dnsmessage/a;

    invoke-direct {v0, p1, p2, p3}, Lorg/minidns/dnsmessage/a;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->w(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Ljava/net/InetAddress;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/minidns/dnsmessage/a;

    invoke-direct {v0, p1, p2, p3}, Lorg/minidns/dnsmessage/a;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 2
    invoke-virtual {p0, v0, p4}, Lorg/minidns/AbstractDnsClient;->x(Lorg/minidns/dnsmessage/a;Ljava/net/InetAddress;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/String;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/minidns/dnsmessage/a;

    invoke-direct {v0, p1, p2, p3}, Lorg/minidns/dnsmessage/a;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 2
    invoke-virtual {p0, v0, p4, p5}, Lorg/minidns/AbstractDnsClient;->y(Lorg/minidns/dnsmessage/a;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method

.method protected abstract t(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final u(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x35

    invoke-virtual {p0, p1, p2, v0}, Lorg/minidns/AbstractDnsClient;->v(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->d:Lorg/minidns/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/minidns/a;->a(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->o()Lorg/minidns/dnsmessage/a;

    move-result-object v0

    .line 3
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 4
    sget-object v3, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const/4 v7, 0x2

    aput-object v0, v5, v7

    const/4 v9, 0x3

    aput-object p1, v5, v9

    const-string v10, "Asking {0} on {1} for {2} with:\n{3}"

    invoke-virtual {v3, v2, v10, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :try_start_0
    iget-object v5, p0, Lorg/minidns/AbstractDnsClient;->e:Lorg/minidns/source/DnsDataSource;

    invoke-virtual {v5, p1, p2, p3}, Lorg/minidns/source/DnsDataSource;->e(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v6

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v8

    aput-object v0, v4, v7

    aput-object v5, v4, v9

    const-string p2, "Response from {0} on {1} for {2}:\n{3}"

    invoke-virtual {v3, v2, p2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_2
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NULL response from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_1
    if-nez v5, :cond_3

    return-object v1

    .line 8
    :cond_3
    iget-object p2, p0, Lorg/minidns/AbstractDnsClient;->a:Lorg/minidns/source/DnsDataSource$a;

    invoke-interface {p2, p1, v5}, Lorg/minidns/source/DnsDataSource$a;->a(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    return-object v5

    :catch_0
    move-exception p1

    .line 9
    sget-object v1, Lorg/minidns/AbstractDnsClient;->h:Ljava/util/logging/Logger;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v8

    aput-object v0, v3, v7

    aput-object p1, v3, v9

    const-string p2, "IOException {0} on {1} while resolving {2}: {3}"

    invoke-virtual {v1, v2, p2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    throw p1
.end method

.method public w(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->a(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->t(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method

.method public x(Lorg/minidns/dnsmessage/a;Ljava/net/InetAddress;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x35

    invoke-virtual {p0, p1, p2, v0}, Lorg/minidns/AbstractDnsClient;->y(Lorg/minidns/dnsmessage/a;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lorg/minidns/dnsmessage/a;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->l(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/minidns/AbstractDnsClient;->v(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method

.method public final z(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/minidns/dnsmessage/a;

    sget-object v1, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v0, p1, p2, v1}, Lorg/minidns/dnsmessage/a;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->w(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method
