.class public abstract Lorg/minidns/record/i;
.super Lorg/minidns/record/h;
.source "DelegatingDnssecRR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/record/i$b;
    }
.end annotation


# static fields
.field static final synthetic k:Z


# instance fields
.field public final c:I

.field public final d:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public final e:B

.field public final f:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field public final g:B

.field protected final h:[B

.field private i:Ljava/math/BigInteger;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(IBB[B)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    .line 8
    invoke-direct/range {v0 .. v6}, Lorg/minidns/record/i;-><init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BLorg/minidns/constants/DnssecConstants$DigestAlgorithm;B[B)V

    return-void
.end method

.method protected constructor <init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BLorg/minidns/constants/DnssecConstants$DigestAlgorithm;B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/minidns/record/h;-><init>()V

    .line 2
    iput p1, p0, Lorg/minidns/record/i;->c:I

    .line 3
    iput-byte p3, p0, Lorg/minidns/record/i;->e:B

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p3}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/minidns/record/i;->d:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 5
    iput-byte p5, p0, Lorg/minidns/record/i;->g:B

    if-eqz p4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {p5}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    move-result-object p4

    :goto_1
    iput-object p4, p0, Lorg/minidns/record/i;->f:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 7
    iput-object p6, p0, Lorg/minidns/record/i;->h:[B

    return-void
.end method

.method protected constructor <init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;B[B)V
    .locals 7

    .line 10
    iget-byte v3, p2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/minidns/record/i;-><init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BLorg/minidns/constants/DnssecConstants$DigestAlgorithm;B[B)V

    return-void
.end method

.method protected constructor <init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;[B)V
    .locals 7

    .line 9
    iget-byte v3, p2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    iget-byte v5, p3, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->value:B

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/minidns/record/i;-><init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BLorg/minidns/constants/DnssecConstants$DigestAlgorithm;B[B)V

    return-void
.end method

.method protected static k(Ljava/io/DataInputStream;I)Lorg/minidns/record/i$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    add-int/lit8 p1, p1, -0x4

    .line 4
    new-array v4, p1, [B

    .line 5
    invoke-virtual {p0, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result p0

    if-ne p0, p1, :cond_0

    .line 6
    new-instance p0, Lorg/minidns/record/i$b;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/minidns/record/i$b;-><init>(IBB[BLorg/minidns/record/i$a;)V

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public c(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/minidns/record/i;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2
    iget-byte v0, p0, Lorg/minidns/record/i;->e:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3
    iget-byte v0, p0, Lorg/minidns/record/i;->g:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4
    iget-object v0, p0, Lorg/minidns/record/i;->h:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public g([B)Z
    .locals 1

    iget-object v0, p0, Lorg/minidns/record/i;->h:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public h()Ljava/math/BigInteger;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/minidns/record/i;->i:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/minidns/record/i;->h:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/minidns/record/i;->i:Ljava/math/BigInteger;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/i;->i:Ljava/math/BigInteger;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/minidns/record/i;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/minidns/record/i;->h()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/i;->j:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/minidns/record/i;->c:I

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/i;->d:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/i;->f:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/minidns/record/i;->h:[B

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    .line 5
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
