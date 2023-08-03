.class Lorg/minidns/iterative/ReliableDnsClient$b;
.super Lorg/minidns/b;
.source "ReliableDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/minidns/iterative/ReliableDnsClient;-><init>(Lorg/minidns/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic s:Lorg/minidns/iterative/ReliableDnsClient;


# direct methods
.method constructor <init>(Lorg/minidns/iterative/ReliableDnsClient;Lorg/minidns/a;)V
    .locals 0

    iput-object p1, p0, Lorg/minidns/iterative/ReliableDnsClient$b;->s:Lorg/minidns/iterative/ReliableDnsClient;

    invoke-direct {p0, p2}, Lorg/minidns/b;-><init>(Lorg/minidns/a;)V

    return-void
.end method


# virtual methods
.method protected m(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lorg/minidns/AbstractDnsClient;->m(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/minidns/iterative/ReliableDnsClient$b;->s:Lorg/minidns/iterative/ReliableDnsClient;

    invoke-virtual {v1, p1, p2}, Lorg/minidns/iterative/ReliableDnsClient;->m(Lorg/minidns/dnsmessage/a;Lorg/minidns/dnsmessage/DnsMessage;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected n(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/minidns/b;->n(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient$b;->s:Lorg/minidns/iterative/ReliableDnsClient;

    invoke-virtual {v0, p1}, Lorg/minidns/iterative/ReliableDnsClient;->n(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object p1

    return-object p1
.end method
