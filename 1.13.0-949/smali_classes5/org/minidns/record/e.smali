.class public Lorg/minidns/record/e;
.super Lorg/minidns/record/s;
.source "DNAME.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/minidns/record/e;-><init>(Lorg/minidns/dnsname/DnsName;)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/minidns/record/s;-><init>(Lorg/minidns/dnsname/DnsName;)V

    return-void
.end method

.method public static h(Ljava/io/DataInputStream;[B)Lorg/minidns/record/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object p0

    .line 2
    new-instance p1, Lorg/minidns/record/e;

    invoke-direct {p1, p0}, Lorg/minidns/record/e;-><init>(Lorg/minidns/dnsname/DnsName;)V

    return-object p1
.end method


# virtual methods
.method public a()Lorg/minidns/record/Record$TYPE;
    .locals 1

    sget-object v0, Lorg/minidns/record/Record$TYPE;->DNAME:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method
