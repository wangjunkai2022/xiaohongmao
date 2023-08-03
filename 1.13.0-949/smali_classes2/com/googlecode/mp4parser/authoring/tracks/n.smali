.class public Lcom/googlecode/mp4parser/authoring/tracks/n;
.super Ljava/lang/Object;
.source "DivideTimeScaleTrack.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/h;


# instance fields
.field a:Lcom/googlecode/mp4parser/authoring/h;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    .line 3
    iput p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->b:I

    return-void
.end method


# virtual methods
.method public B()Lcom/coremedia/iso/boxes/a1;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->B()Lcom/coremedia/iso/boxes/a1;

    move-result-object v0

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->F()Ljava/util/List;

    move-result-object v0

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->T()Ljava/util/List;

    move-result-object v0

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->V()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/i$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/i$a;

    .line 4
    new-instance v3, Lcom/coremedia/iso/boxes/i$a;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/i$a;->a()I

    move-result v4

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/i$a;->b()I

    move-result v2

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->b:I

    div-int/2addr v2, v5

    invoke-direct {v3, v4, v2}, Lcom/coremedia/iso/boxes/i$a;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a0()Lcom/googlecode/mp4parser/authoring/i;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/i;

    .line 2
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v1

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->b:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/i;->s(J)V

    return-object v0
.end method

.method public c0()[J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->c0()[J

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/h;->c0()[J

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/h;->c0()[J

    move-result-object v2

    aget-wide v3, v2, v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->b:I

    int-to-long v5, v2

    div-long/2addr v3, v5

    aput-wide v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public getDuration()J
    .locals 7

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/n;->c0()[J

    move-result-object v0

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timscale("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->m0()Ljava/util/List;

    move-result-object v0

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

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/n;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiplyTimeScaleTrack{source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->u()Lcom/coremedia/iso/boxes/s0;

    move-result-object v0

    return-object v0
.end method

.method public z()[J
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/n;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->z()[J

    move-result-object v0

    return-object v0
.end method
