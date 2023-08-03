.class public Lorg/minidns/record/o;
.super Lorg/minidns/record/h;
.source "OPENPGPKEY.java"


# instance fields
.field private final c:[B

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/minidns/record/h;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/minidns/record/o;->c:[B

    return-void
.end method

.method public static i(Ljava/io/DataInputStream;I)Lorg/minidns/record/o;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 3
    new-instance p0, Lorg/minidns/record/o;

    invoke-direct {p0, p1}, Lorg/minidns/record/o;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public a()Lorg/minidns/record/Record$TYPE;
    .locals 1

    sget-object v0, Lorg/minidns/record/Record$TYPE;->OPENPGPKEY:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method public c(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/minidns/record/o;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lorg/minidns/record/o;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/record/o;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/minidns/record/o;->c:[B

    invoke-static {v0}, Lorg/minidns/util/b;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/o;->d:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/minidns/record/o;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
