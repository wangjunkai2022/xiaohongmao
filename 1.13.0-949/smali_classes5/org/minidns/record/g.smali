.class public Lorg/minidns/record/g;
.super Lorg/minidns/record/i;
.source "DS.java"


# direct methods
.method public constructor <init>(IBB[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/minidns/record/i;-><init>(IBB[B)V

    return-void
.end method

.method public constructor <init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;B[B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/minidns/record/i;-><init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;B[B)V

    return-void
.end method

.method public constructor <init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/minidns/record/i;-><init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;[B)V

    return-void
.end method

.method public static l(Ljava/io/DataInputStream;I)Lorg/minidns/record/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/minidns/record/i;->k(Ljava/io/DataInputStream;I)Lorg/minidns/record/i$b;

    move-result-object p0

    .line 2
    new-instance p1, Lorg/minidns/record/g;

    iget v0, p0, Lorg/minidns/record/i$b;->a:I

    iget-byte v1, p0, Lorg/minidns/record/i$b;->b:B

    iget-byte v2, p0, Lorg/minidns/record/i$b;->c:B

    iget-object p0, p0, Lorg/minidns/record/i$b;->d:[B

    invoke-direct {p1, v0, v1, v2, p0}, Lorg/minidns/record/g;-><init>(IBB[B)V

    return-object p1
.end method


# virtual methods
.method public a()Lorg/minidns/record/Record$TYPE;
    .locals 1

    sget-object v0, Lorg/minidns/record/Record$TYPE;->DS:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method
