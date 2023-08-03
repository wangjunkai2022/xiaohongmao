.class public Lorg/minidns/record/w;
.super Lorg/minidns/record/h;
.source "UNKNOWN.java"


# instance fields
.field private final c:Lorg/minidns/record/Record$TYPE;

.field private final d:[B


# direct methods
.method private constructor <init>(Ljava/io/DataInputStream;ILorg/minidns/record/Record$TYPE;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/minidns/record/h;-><init>()V

    .line 2
    iput-object p3, p0, Lorg/minidns/record/w;->c:Lorg/minidns/record/Record$TYPE;

    .line 3
    new-array p2, p2, [B

    iput-object p2, p0, Lorg/minidns/record/w;->d:[B

    .line 4
    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    return-void
.end method

.method public static g(Ljava/io/DataInputStream;ILorg/minidns/record/Record$TYPE;)Lorg/minidns/record/w;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/minidns/record/w;

    invoke-direct {v0, p0, p1, p2}, Lorg/minidns/record/w;-><init>(Ljava/io/DataInputStream;ILorg/minidns/record/Record$TYPE;)V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/minidns/record/Record$TYPE;
    .locals 1

    iget-object v0, p0, Lorg/minidns/record/w;->c:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method public c(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/minidns/record/w;->d:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method
