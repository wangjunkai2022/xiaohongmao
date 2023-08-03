.class public Lorg/minidns/record/NSEC3;
.super Lorg/minidns/record/h;
.source "NSEC3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/record/NSEC3$HashAlgorithm;
    }
.end annotation


# static fields
.field public static final k:B = 0x1t

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/minidns/record/NSEC3$HashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic m:Z


# instance fields
.field public final c:Lorg/minidns/record/NSEC3$HashAlgorithm;

.field public final d:B

.field public final e:B

.field public final f:I

.field public final g:[B

.field public final h:[B

.field private final i:[B

.field public final j:[Lorg/minidns/record/Record$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/minidns/record/NSEC3;->l:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(BBI[B[B[Lorg/minidns/record/Record$TYPE;)V
    .locals 8

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 10
    invoke-direct/range {v0 .. v7}, Lorg/minidns/record/NSEC3;-><init>(Lorg/minidns/record/NSEC3$HashAlgorithm;BBI[B[B[Lorg/minidns/record/Record$TYPE;)V

    return-void
.end method

.method private constructor <init>(Lorg/minidns/record/NSEC3$HashAlgorithm;BBI[B[B[Lorg/minidns/record/Record$TYPE;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/minidns/record/h;-><init>()V

    .line 2
    iput-byte p2, p0, Lorg/minidns/record/NSEC3;->d:B

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Lorg/minidns/record/NSEC3$HashAlgorithm;->forByte(B)Lorg/minidns/record/NSEC3$HashAlgorithm;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/minidns/record/NSEC3;->c:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 4
    iput-byte p3, p0, Lorg/minidns/record/NSEC3;->e:B

    .line 5
    iput p4, p0, Lorg/minidns/record/NSEC3;->f:I

    .line 6
    iput-object p5, p0, Lorg/minidns/record/NSEC3;->g:[B

    .line 7
    iput-object p6, p0, Lorg/minidns/record/NSEC3;->h:[B

    .line 8
    iput-object p7, p0, Lorg/minidns/record/NSEC3;->j:[Lorg/minidns/record/Record$TYPE;

    .line 9
    invoke-static {p7}, Lorg/minidns/record/n;->g([Lorg/minidns/record/Record$TYPE;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/minidns/record/NSEC3;->i:[B

    return-void
.end method

.method static synthetic g()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/minidns/record/NSEC3;->l:Ljava/util/Map;

    return-object v0
.end method

.method public static h(Ljava/io/DataInputStream;I)Lorg/minidns/record/NSEC3;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 5
    new-array v4, v0, [B

    .line 6
    invoke-virtual {p0, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    if-ne v5, v0, :cond_2

    .line 7
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 8
    new-array v6, v5, [B

    .line 9
    invoke-virtual {p0, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    if-ne v7, v5, :cond_1

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v5

    sub-int/2addr p1, v0

    .line 10
    new-array v0, p1, [B

    .line 11
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result p0

    if-ne p0, p1, :cond_0

    .line 12
    invoke-static {v0}, Lorg/minidns/record/n;->i([B)[Lorg/minidns/record/Record$TYPE;

    move-result-object p0

    .line 13
    new-instance p1, Lorg/minidns/record/NSEC3;

    move-object v0, p1

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/minidns/record/NSEC3;-><init>(BBI[B[B[Lorg/minidns/record/Record$TYPE;)V

    return-object p1

    .line 14
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 15
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 16
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a()Lorg/minidns/record/Record$TYPE;
    .locals 1

    sget-object v0, Lorg/minidns/record/Record$TYPE;->NSEC3:Lorg/minidns/record/Record$TYPE;

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
    iget-byte v0, p0, Lorg/minidns/record/NSEC3;->d:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2
    iget-byte v0, p0, Lorg/minidns/record/NSEC3;->e:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3
    iget v0, p0, Lorg/minidns/record/NSEC3;->f:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->g:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->g:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 6
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->h:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 7
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->h:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 8
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->i:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/record/NSEC3;->c:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/minidns/record/NSEC3;->e:B

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/NSEC3;->f:I

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/NSEC3;->g:[B

    array-length v2, v2

    if-nez v2, :cond_0

    const-string v2, "-"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/minidns/record/NSEC3;->g:[B

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v3, 0x10

    .line 5
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/NSEC3;->h:[B

    .line 6
    invoke-static {v2}, Lorg/minidns/util/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Lorg/minidns/record/NSEC3;->j:[Lorg/minidns/record/Record$TYPE;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
