.class public Lorg/minidns/record/u;
.super Lorg/minidns/record/h;
.source "SRV.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/minidns/record/h;",
        "Ljava/lang/Comparable<",
        "Lorg/minidns/record/u;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Lorg/minidns/dnsname/DnsName;

.field public final g:Lorg/minidns/dnsname/DnsName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p4}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/minidns/record/u;-><init>(IIILorg/minidns/dnsname/DnsName;)V

    return-void
.end method

.method public constructor <init>(IIILorg/minidns/dnsname/DnsName;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/minidns/record/h;-><init>()V

    .line 3
    iput p1, p0, Lorg/minidns/record/u;->c:I

    .line 4
    iput p2, p0, Lorg/minidns/record/u;->d:I

    .line 5
    iput p3, p0, Lorg/minidns/record/u;->e:I

    .line 6
    iput-object p4, p0, Lorg/minidns/record/u;->f:Lorg/minidns/dnsname/DnsName;

    .line 7
    iput-object p4, p0, Lorg/minidns/record/u;->g:Lorg/minidns/dnsname/DnsName;

    return-void
.end method

.method public static h(Ljava/io/DataInputStream;[B)Lorg/minidns/record/u;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 4
    invoke-static {p0, p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object p0

    .line 5
    new-instance p1, Lorg/minidns/record/u;

    invoke-direct {p1, v0, v1, v2, p0}, Lorg/minidns/record/u;-><init>(IIILorg/minidns/dnsname/DnsName;)V

    return-object p1
.end method


# virtual methods
.method public a()Lorg/minidns/record/Record$TYPE;
    .locals 1

    sget-object v0, Lorg/minidns/record/Record$TYPE;->SRV:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method public c(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/minidns/record/u;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2
    iget v0, p0, Lorg/minidns/record/u;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3
    iget v0, p0, Lorg/minidns/record/u;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4
    iget-object v0, p0, Lorg/minidns/record/u;->f:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/minidns/record/u;

    invoke-virtual {p0, p1}, Lorg/minidns/record/u;->g(Lorg/minidns/record/u;)I

    move-result p1

    return p1
.end method

.method public g(Lorg/minidns/record/u;)I
    .locals 2

    .line 1
    iget v0, p1, Lorg/minidns/record/u;->c:I

    iget v1, p0, Lorg/minidns/record/u;->c:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lorg/minidns/record/u;->d:I

    iget p1, p1, Lorg/minidns/record/u;->d:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/minidns/record/u;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/u;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/u;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/record/u;->f:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
