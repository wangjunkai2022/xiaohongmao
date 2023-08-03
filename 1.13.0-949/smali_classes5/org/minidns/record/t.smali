.class public Lorg/minidns/record/t;
.super Lorg/minidns/record/h;
.source "SOA.java"


# instance fields
.field public final c:Lorg/minidns/dnsname/DnsName;

.field public final d:Lorg/minidns/dnsname/DnsName;

.field public final e:J

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIIIJ)V
    .locals 10

    .line 1
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    invoke-static {p2}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v2

    move-object v0, p0

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/minidns/record/t;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;JIIIJ)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;JIIIJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/minidns/record/h;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/minidns/record/t;->c:Lorg/minidns/dnsname/DnsName;

    .line 4
    iput-object p2, p0, Lorg/minidns/record/t;->d:Lorg/minidns/dnsname/DnsName;

    .line 5
    iput-wide p3, p0, Lorg/minidns/record/t;->e:J

    .line 6
    iput p5, p0, Lorg/minidns/record/t;->f:I

    .line 7
    iput p6, p0, Lorg/minidns/record/t;->g:I

    .line 8
    iput p7, p0, Lorg/minidns/record/t;->h:I

    .line 9
    iput-wide p8, p0, Lorg/minidns/record/t;->i:J

    return-void
.end method

.method public static g(Ljava/io/DataInputStream;[B)Lorg/minidns/record/t;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    .line 2
    invoke-static {p0, p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 4
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 5
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 6
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 7
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    int-to-long v9, p0

    and-long/2addr v9, v5

    .line 8
    new-instance p0, Lorg/minidns/record/t;

    move-object v0, p0

    move v5, p1

    move v6, v7

    move v7, v8

    move-wide v8, v9

    invoke-direct/range {v0 .. v9}, Lorg/minidns/record/t;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;JIIIJ)V

    return-object p0
.end method


# virtual methods
.method public a()Lorg/minidns/record/Record$TYPE;
    .locals 1

    sget-object v0, Lorg/minidns/record/Record$TYPE;->SOA:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method public c(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/record/t;->c:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    .line 2
    iget-object v0, p0, Lorg/minidns/record/t;->d:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    .line 3
    iget-wide v0, p0, Lorg/minidns/record/t;->e:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 4
    iget v0, p0, Lorg/minidns/record/t;->f:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 5
    iget v0, p0, Lorg/minidns/record/t;->g:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 6
    iget v0, p0, Lorg/minidns/record/t;->h:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 7
    iget-wide v0, p0, Lorg/minidns/record/t;->i:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/record/t;->c:Lorg/minidns/dnsname/DnsName;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/t;->d:Lorg/minidns/dnsname/DnsName;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/minidns/record/t;->e:J

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/t;->f:I

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/t;->g:I

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/t;->h:I

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/minidns/record/t;->i:J

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
