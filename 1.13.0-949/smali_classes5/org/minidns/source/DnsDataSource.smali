.class public abstract Lorg/minidns/source/DnsDataSource;
.super Ljava/lang/Object;
.source "DnsDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/source/DnsDataSource$a;,
        Lorg/minidns/source/DnsDataSource$QueryMode;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field private c:Lorg/minidns/a;

.field private d:Lorg/minidns/source/DnsDataSource$QueryMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 2
    iput v0, p0, Lorg/minidns/source/DnsDataSource;->a:I

    const/16 v0, 0x1388

    .line 3
    iput v0, p0, Lorg/minidns/source/DnsDataSource;->b:I

    .line 4
    sget-object v0, Lorg/minidns/source/DnsDataSource$QueryMode;->dontCare:Lorg/minidns/source/DnsDataSource$QueryMode;

    iput-object v0, p0, Lorg/minidns/source/DnsDataSource;->d:Lorg/minidns/source/DnsDataSource$QueryMode;

    return-void
.end method


# virtual methods
.method protected final a(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/source/DnsDataSource;->c:Lorg/minidns/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/minidns/a;->d(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    return-void
.end method

.method public b()Lorg/minidns/source/DnsDataSource$QueryMode;
    .locals 1

    iget-object v0, p0, Lorg/minidns/source/DnsDataSource;->d:Lorg/minidns/source/DnsDataSource$QueryMode;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lorg/minidns/source/DnsDataSource;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lorg/minidns/source/DnsDataSource;->a:I

    return v0
.end method

.method public abstract e(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public f(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;ILorg/minidns/source/DnsDataSource$a;)Lorg/minidns/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/net/InetAddress;",
            "I",
            "Lorg/minidns/source/DnsDataSource$a;",
            ")",
            "Lorg/minidns/d<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p4, Lorg/minidns/d$e;

    invoke-direct {p4}, Lorg/minidns/d$e;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/minidns/source/DnsDataSource;->e(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p4, p1}, Lorg/minidns/d$e;->k(Ljava/lang/Object;)V

    return-object p4

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p4, p1}, Lorg/minidns/d$e;->j(Ljava/lang/Exception;)V

    return-object p4
.end method

.method public g(Lorg/minidns/source/DnsDataSource$QueryMode;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lorg/minidns/source/DnsDataSource;->d:Lorg/minidns/source/DnsDataSource$QueryMode;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public h(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lorg/minidns/source/DnsDataSource;->b:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Timeout must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lorg/minidns/source/DnsDataSource;->a:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "UDP payload size must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
