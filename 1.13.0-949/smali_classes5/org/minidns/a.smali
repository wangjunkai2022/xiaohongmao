.class public abstract Lorg/minidns/a;
.super Ljava/lang/Object;
.source "DnsCache.java"


# static fields
.field public static final a:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 0

    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->c()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/minidns/a;->b(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsmessage/DnsMessage;
.end method

.method public abstract c(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsname/DnsName;)V
.end method

.method public final d(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 0

    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->c()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/minidns/a;->e(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    return-void
.end method

.method protected abstract e(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V
.end method
