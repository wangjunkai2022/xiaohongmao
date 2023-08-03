.class public Lorg/minidns/record/f;
.super Lorg/minidns/record/h;
.source "DNSKEY.java"


# static fields
.field public static final j:S = 0x1s

.field public static final k:S = 0x80s

.field public static final l:S = 0x100s

.field public static final m:B = 0x3t

.field static final synthetic n:Z


# instance fields
.field public final c:S

.field public final d:B

.field public final e:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public final f:B

.field private final g:[B

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(SBB[B)V
    .locals 0

    .line 7
    invoke-static {p3}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/minidns/record/f;-><init>(SBLorg/minidns/constants/DnssecConstants$SignatureAlgorithm;[B)V

    return-void
.end method

.method private constructor <init>(SBLorg/minidns/constants/DnssecConstants$SignatureAlgorithm;B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/minidns/record/h;-><init>()V

    .line 2
    iput-short p1, p0, Lorg/minidns/record/f;->c:S

    .line 3
    iput-byte p2, p0, Lorg/minidns/record/f;->d:B

    .line 4
    iput-byte p4, p0, Lorg/minidns/record/f;->f:B

    if-eqz p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p4}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lorg/minidns/record/f;->e:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 6
    iput-object p5, p0, Lorg/minidns/record/f;->g:[B

    return-void
.end method

.method public constructor <init>(SBLorg/minidns/constants/DnssecConstants$SignatureAlgorithm;[B)V
    .locals 6

    .line 8
    iget-byte v4, p3, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/minidns/record/f;-><init>(SBLorg/minidns/constants/DnssecConstants$SignatureAlgorithm;B[B)V

    return-void
.end method

.method public static n(Ljava/io/DataInputStream;I)Lorg/minidns/record/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    add-int/lit8 p1, p1, -0x4

    .line 4
    new-array p1, p1, [B

    .line 5
    invoke-virtual {p0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 6
    new-instance p0, Lorg/minidns/record/f;

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/minidns/record/f;-><init>(SBB[B)V

    return-object p0
.end method


# virtual methods
.method public a()Lorg/minidns/record/Record$TYPE;
    .locals 1

    sget-object v0, Lorg/minidns/record/Record$TYPE;->DNSKEY:Lorg/minidns/record/Record$TYPE;

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
    iget-short v0, p0, Lorg/minidns/record/f;->c:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2
    iget-byte v0, p0, Lorg/minidns/record/f;->d:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3
    iget-object v0, p0, Lorg/minidns/record/f;->e:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    iget-byte v0, v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4
    iget-object v0, p0, Lorg/minidns/record/f;->g:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lorg/minidns/record/f;->g:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/record/f;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/minidns/record/f;->g:[B

    invoke-static {v0}, Lorg/minidns/util/b;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/f;->i:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lorg/minidns/record/f;->g:[B

    array-length v0, v0

    return v0
.end method

.method public k()I
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/minidns/record/f;->h:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lorg/minidns/record/h;->e()[B

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    and-int/lit8 v4, v3, 0x1

    const-wide/16 v5, 0xff

    if-lez v4, :cond_0

    .line 4
    aget-byte v4, v0, v3

    int-to-long v7, v4

    and-long v4, v7, v5

    goto :goto_1

    :cond_0
    aget-byte v4, v0, v3

    int-to-long v7, v4

    and-long v4, v7, v5

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    :goto_1
    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    shr-long v3, v1, v0

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    and-long v0, v1, v5

    long-to-int v1, v0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/f;->h:Ljava/lang/Integer;

    .line 6
    :cond_2
    iget-object v0, p0, Lorg/minidns/record/f;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    iget-short v0, p0, Lorg/minidns/record/f;->c:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public m([B)Z
    .locals 1

    iget-object v0, p0, Lorg/minidns/record/f;->g:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, Lorg/minidns/record/f;->c:S

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/minidns/record/f;->d:B

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/f;->e:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/record/f;->g:[B

    .line 5
    invoke-static {v1}, Lorg/minidns/util/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
