.class public Lcom/googlecode/mp4parser/authoring/tracks/t;
.super Ljava/lang/Object;
.source "SilenceTrackImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/h;


# instance fields
.field a:Lcom/googlecode/mp4parser/authoring/h;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field

.field c:[J

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/h;J)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->a:Lcom/googlecode/mp4parser/authoring/h;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms silence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->d:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->u()Lcom/coremedia/iso/boxes/s0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/s0;->J()Lcom/coremedia/iso/boxes/sampleentry/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/b;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/t;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v0

    mul-long v0, v0, p2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v4, 0x400

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    move-result p1

    .line 7
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->c:[J

    .line 8
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/t;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v4

    mul-long v4, v4, p2

    int-to-long p2, p1

    div-long/2addr v4, p2

    div-long/2addr v4, v2

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    :goto_0
    add-int/lit8 p2, p1, -0x1

    if-gtz p1, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->b:Ljava/util/List;

    new-instance p3, Lcom/googlecode/mp4parser/authoring/g;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p3, v0}, Lcom/googlecode/mp4parser/authoring/g;-><init>(Ljava/nio/ByteBuffer;)V

    .line 11
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, p2

    goto :goto_0

    .line 12
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Tracks of type "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " are not supported"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :array_0
    .array-data 1
        0x21t
        0x10t
        0x4t
        0x60t
        -0x74t
        0x1ct
    .end array-data
.end method


# virtual methods
.method public B()Lcom/coremedia/iso/boxes/a1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->b:Ljava/util/List;

    return-object v0
.end method

.method public T()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/c;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public V()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;",
            "[J>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->V()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a0()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v0

    return-object v0
.end method

.method public c0()[J
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->c:[J

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getDuration()J
    .locals 7

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->c:[J

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v1, :cond_0

    return-wide v2

    :cond_0
    aget-wide v5, v0, v4

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public m0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/r0$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/i$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/t;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->u()Lcom/coremedia/iso/boxes/s0;

    move-result-object v0

    return-object v0
.end method

.method public z()[J
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
