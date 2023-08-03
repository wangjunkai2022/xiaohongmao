.class public abstract Lorg/minidns/record/s;
.super Lorg/minidns/record/h;
.source "RRWithTarget.java"


# instance fields
.field public final c:Lorg/minidns/dnsname/DnsName;

.field public final d:Lorg/minidns/dnsname/DnsName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/minidns/dnsname/DnsName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/minidns/record/h;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/minidns/record/s;->c:Lorg/minidns/dnsname/DnsName;

    .line 3
    iput-object p1, p0, Lorg/minidns/record/s;->d:Lorg/minidns/dnsname/DnsName;

    return-void
.end method


# virtual methods
.method public c(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/minidns/record/s;->c:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public final g()Lorg/minidns/dnsname/DnsName;
    .locals 1

    iget-object v0, p0, Lorg/minidns/record/s;->c:Lorg/minidns/dnsname/DnsName;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/record/s;->c:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
