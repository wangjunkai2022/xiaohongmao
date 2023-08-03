.class public Lorg/minidns/dnsmessage/a;
.super Ljava/lang/Object;
.source "Question.java"


# static fields
.field static final synthetic f:Z


# instance fields
.field public final a:Lorg/minidns/dnsname/DnsName;

.field public final b:Lorg/minidns/record/Record$TYPE;

.field public final c:Lorg/minidns/record/Record$CLASS;

.field private final d:Z

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1, p2}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object p2

    iput-object p2, p0, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    .line 13
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p2

    invoke-static {p2}, Lorg/minidns/record/Record$TYPE;->getType(I)Lorg/minidns/record/Record$TYPE;

    move-result-object p2

    iput-object p2, p0, Lorg/minidns/dnsmessage/a;->b:Lorg/minidns/record/Record$TYPE;

    .line 14
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    invoke-static {p1}, Lorg/minidns/record/Record$CLASS;->getClass(I)Lorg/minidns/record/Record$CLASS;

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/dnsmessage/a;->c:Lorg/minidns/record/Record$CLASS;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lorg/minidns/dnsmessage/a;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)V
    .locals 0

    .line 10
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/CharSequence;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/minidns/dnsmessage/a;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V
    .locals 0

    .line 9
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/CharSequence;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/minidns/dnsmessage/a;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/CharSequence;)Lorg/minidns/dnsname/DnsName;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/minidns/dnsmessage/a;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V
    .locals 1

    .line 8
    sget-object v0, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    invoke-direct {p0, p1, p2, v0}, Lorg/minidns/dnsmessage/a;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/minidns/dnsmessage/a;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    .line 4
    iput-object p2, p0, Lorg/minidns/dnsmessage/a;->b:Lorg/minidns/record/Record$TYPE;

    .line 5
    iput-object p3, p0, Lorg/minidns/dnsmessage/a;->c:Lorg/minidns/record/Record$CLASS;

    .line 6
    iput-boolean p4, p0, Lorg/minidns/dnsmessage/a;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 1

    .line 1
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage;->e()Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lorg/minidns/dnsmessage/DnsMessage$b;->L(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage$b;

    return-object v0
.end method

.method public b()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    invoke-virtual {p0}, Lorg/minidns/dnsmessage/a;->a()Lorg/minidns/dnsmessage/DnsMessage$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/minidns/dnsmessage/DnsMessage$b;->w()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/a;->e:[B

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    :try_start_0
    iget-object v2, p0, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v2, v1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    .line 5
    iget-object v2, p0, Lorg/minidns/dnsmessage/a;->b:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v2}, Lorg/minidns/record/Record$TYPE;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 6
    iget-object v2, p0, Lorg/minidns/dnsmessage/a;->c:Lorg/minidns/record/Record$CLASS;

    invoke-virtual {v2}, Lorg/minidns/record/Record$CLASS;->getValue()I

    move-result v2

    iget-boolean v3, p0, Lorg/minidns/dnsmessage/a;->d:Z

    if-eqz v3, :cond_0

    const v3, 0x8000

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 7
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsmessage/a;->e:[B

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 10
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/minidns/dnsmessage/a;->e:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lorg/minidns/dnsmessage/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/a;->c()[B

    move-result-object v0

    .line 3
    check-cast p1, Lorg/minidns/dnsmessage/a;

    invoke-virtual {p1}, Lorg/minidns/dnsmessage/a;->c()[B

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/minidns/dnsmessage/a;->c()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/dnsmessage/a;->a:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v1}, Lorg/minidns/dnsname/DnsName;->getRawAce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnsmessage/a;->c:Lorg/minidns/record/Record$CLASS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnsmessage/a;->b:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
