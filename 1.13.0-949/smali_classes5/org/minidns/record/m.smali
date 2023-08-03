.class public Lorg/minidns/record/m;
.super Lorg/minidns/record/h;
.source "NSEC3PARAM.java"


# static fields
.field static final synthetic h:Z


# instance fields
.field public final c:Lorg/minidns/record/NSEC3$HashAlgorithm;

.field public final d:B

.field public final e:B

.field public final f:I

.field private final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(BBI[B)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lorg/minidns/record/m;-><init>(Lorg/minidns/record/NSEC3$HashAlgorithm;BBI[B)V

    return-void
.end method

.method private constructor <init>(Lorg/minidns/record/NSEC3$HashAlgorithm;BBI[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/minidns/record/h;-><init>()V

    .line 2
    iput-byte p2, p0, Lorg/minidns/record/m;->d:B

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Lorg/minidns/record/NSEC3$HashAlgorithm;->forByte(B)Lorg/minidns/record/NSEC3$HashAlgorithm;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/minidns/record/m;->c:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 4
    iput-byte p3, p0, Lorg/minidns/record/m;->e:B

    .line 5
    iput p4, p0, Lorg/minidns/record/m;->f:I

    .line 6
    iput-object p5, p0, Lorg/minidns/record/m;->g:[B

    return-void
.end method

.method public static h(Ljava/io/DataInputStream;)Lorg/minidns/record/m;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 5
    new-array v4, v3, [B

    .line 6
    invoke-virtual {p0, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result p0

    if-eq p0, v3, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 7
    :cond_1
    :goto_0
    new-instance p0, Lorg/minidns/record/m;

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/minidns/record/m;-><init>(BBI[B)V

    return-object p0
.end method


# virtual methods
.method public a()Lorg/minidns/record/Record$TYPE;
    .locals 1

    sget-object v0, Lorg/minidns/record/Record$TYPE;->NSEC3PARAM:Lorg/minidns/record/Record$TYPE;

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
    iget-byte v0, p0, Lorg/minidns/record/m;->d:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2
    iget-byte v0, p0, Lorg/minidns/record/m;->e:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3
    iget v0, p0, Lorg/minidns/record/m;->f:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4
    iget-object v0, p0, Lorg/minidns/record/m;->g:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5
    iget-object v0, p0, Lorg/minidns/record/m;->g:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lorg/minidns/record/m;->g:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/record/m;->c:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/minidns/record/m;->e:B

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/m;->f:I

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/record/m;->g:[B

    array-length v1, v1

    if-nez v1, :cond_0

    const-string v1, "-"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/minidns/record/m;->g:[B

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    .line 5
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
