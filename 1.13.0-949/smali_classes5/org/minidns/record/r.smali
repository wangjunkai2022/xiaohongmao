.class public Lorg/minidns/record/r;
.super Lorg/minidns/record/h;
.source "RRSIG.java"


# static fields
.field static final synthetic m:Z


# instance fields
.field public final c:Lorg/minidns/record/Record$TYPE;

.field public final d:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public final e:B

.field public final f:B

.field public final g:J

.field public final h:Ljava/util/Date;

.field public final i:Ljava/util/Date;

.field public final j:I

.field public final k:Lorg/minidns/dnsname/DnsName;

.field public final l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/minidns/record/Record$TYPE;IBJLjava/util/Date;Ljava/util/Date;ILjava/lang/String;[B)V
    .locals 12

    move v0, p2

    int-to-byte v3, v0

    .line 13
    invoke-static/range {p9 .. p9}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v10

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/minidns/record/r;-><init>(Lorg/minidns/record/Record$TYPE;Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/record/Record$TYPE;IBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V
    .locals 12

    move v0, p2

    int-to-byte v3, v0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 12
    invoke-direct/range {v0 .. v11}, Lorg/minidns/record/r;-><init>(Lorg/minidns/record/Record$TYPE;Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V

    return-void
.end method

.method private constructor <init>(Lorg/minidns/record/Record$TYPE;Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/minidns/record/h;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/minidns/record/r;->c:Lorg/minidns/record/Record$TYPE;

    .line 3
    iput-byte p3, p0, Lorg/minidns/record/r;->e:B

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p3}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/minidns/record/r;->d:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 5
    iput-byte p4, p0, Lorg/minidns/record/r;->f:B

    .line 6
    iput-wide p5, p0, Lorg/minidns/record/r;->g:J

    .line 7
    iput-object p7, p0, Lorg/minidns/record/r;->h:Ljava/util/Date;

    .line 8
    iput-object p8, p0, Lorg/minidns/record/r;->i:Ljava/util/Date;

    .line 9
    iput p9, p0, Lorg/minidns/record/r;->j:I

    .line 10
    iput-object p10, p0, Lorg/minidns/record/r;->k:Lorg/minidns/dnsname/DnsName;

    .line 11
    iput-object p11, p0, Lorg/minidns/record/r;->l:[B

    return-void
.end method

.method public constructor <init>(Lorg/minidns/record/Record$TYPE;Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BJLjava/util/Date;Ljava/util/Date;ILjava/lang/String;[B)V
    .locals 11

    move-object v0, p2

    .line 15
    iget-byte v2, v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    invoke-static/range {p9 .. p9}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/minidns/record/r;-><init>(Lorg/minidns/record/Record$TYPE;IBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/record/Record$TYPE;Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V
    .locals 11

    move-object v0, p2

    .line 14
    iget-byte v2, v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/minidns/record/r;-><init>(Lorg/minidns/record/Record$TYPE;IBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V

    return-void
.end method

.method public static g(Ljava/io/DataInputStream;[BI)Lorg/minidns/record/r;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, Lorg/minidns/record/Record$TYPE;->getType(I)Lorg/minidns/record/Record$TYPE;

    move-result-object v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v6, 0xffffffffL

    and-long v8, v0, v6

    .line 5
    new-instance v0, Ljava/util/Date;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v10, v1

    and-long/2addr v10, v6

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 6
    new-instance v10, Ljava/util/Date;

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v14, v1

    and-long/2addr v6, v14

    mul-long v6, v6, v12

    invoke-direct {v10, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v11

    .line 8
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v12

    .line 9
    invoke-virtual {v12}, Lorg/minidns/dnsname/DnsName;->size()I

    move-result v1

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, -0x12

    .line 10
    new-array v13, v1, [B

    move-object/from16 v3, p0

    .line 11
    invoke-virtual {v3, v13}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 12
    new-instance v14, Lorg/minidns/record/r;

    const/4 v3, 0x0

    move-object v1, v14

    move-wide v6, v8

    move-object v8, v0

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    invoke-direct/range {v1 .. v12}, Lorg/minidns/record/r;-><init>(Lorg/minidns/record/Record$TYPE;Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V

    return-object v14

    .line 13
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()Lorg/minidns/record/Record$TYPE;
    .locals 1

    sget-object v0, Lorg/minidns/record/Record$TYPE;->RRSIG:Lorg/minidns/record/Record$TYPE;

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
    invoke-virtual {p0, p1}, Lorg/minidns/record/r;->h(Ljava/io/DataOutputStream;)V

    .line 2
    iget-object v0, p0, Lorg/minidns/record/r;->l:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public h(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/record/r;->c:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v0}, Lorg/minidns/record/Record$TYPE;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2
    iget-byte v0, p0, Lorg/minidns/record/r;->e:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3
    iget-byte v0, p0, Lorg/minidns/record/r;->f:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4
    iget-wide v0, p0, Lorg/minidns/record/r;->g:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lorg/minidns/record/r;->h:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 6
    iget-object v0, p0, Lorg/minidns/record/r;->i:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 7
    iget v0, p0, Lorg/minidns/record/r;->j:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 8
    iget-object v0, p0, Lorg/minidns/record/r;->k:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, p1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    .line 2
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/minidns/record/r;->c:Lorg/minidns/record/Record$TYPE;

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/minidns/record/r;->d:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lorg/minidns/record/r;->f:B

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/minidns/record/r;->g:J

    .line 7
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/minidns/record/r;->h:Ljava/util/Date;

    .line 8
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/minidns/record/r;->i:Ljava/util/Date;

    .line 9
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/minidns/record/r;->j:I

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/minidns/record/r;->k:Lorg/minidns/dnsname/DnsName;

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/minidns/record/r;->l:[B

    .line 12
    invoke-static {v0}, Lorg/minidns/util/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
