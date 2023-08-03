.class public Lorg/minidns/record/b;
.super Lorg/minidns/record/j;
.source "AAAA.java"


# static fields
.field static final synthetic e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 5
    invoke-static {p1}, Lorg/minidns/util/g;->b(Ljava/lang/CharSequence;)Ljava/net/Inet6Address;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/minidns/record/b;-><init>(Ljava/net/Inet6Address;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet6Address;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/minidns/record/j;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/minidns/record/j;-><init>([B)V

    .line 3
    array-length p1, p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "IPv6 address in AAAA record is always 16 byte"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static i(Ljava/io/DataInputStream;)Lorg/minidns/record/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 2
    new-instance p0, Lorg/minidns/record/b;

    invoke-direct {p0, v0}, Lorg/minidns/record/b;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public a()Lorg/minidns/record/Record$TYPE;
    .locals 1

    sget-object v0, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lorg/minidns/record/j;->c:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x3a

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/minidns/record/j;->c:[B

    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
