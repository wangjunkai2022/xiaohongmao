.class Lorg/minidns/AbstractDnsClient$a;
.super Ljava/lang/Object;
.source "AbstractDnsClient.java"

# interfaces
.implements Lorg/minidns/source/DnsDataSource$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/AbstractDnsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/minidns/AbstractDnsClient;


# direct methods
.method constructor <init>(Lorg/minidns/AbstractDnsClient;)V
    .locals 0

    iput-object p1, p0, Lorg/minidns/AbstractDnsClient$a;->a:Lorg/minidns/AbstractDnsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->o()Lorg/minidns/dnsmessage/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/minidns/AbstractDnsClient$a;->a:Lorg/minidns/AbstractDnsClient;

    iget-object v2, v1, Lorg/minidns/AbstractDnsClient;->d:Lorg/minidns/a;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0, p2}, Lorg/minidns/AbstractDnsClient;->m(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/minidns/AbstractDnsClient$a;->a:Lorg/minidns/AbstractDnsClient;

    iget-object v0, v0, Lorg/minidns/AbstractDnsClient;->d:Lorg/minidns/a;

    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->c()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/minidns/a;->d(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    :cond_0
    return-void
.end method
