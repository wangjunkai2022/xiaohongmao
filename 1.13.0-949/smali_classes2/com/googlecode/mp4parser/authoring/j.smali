.class public Lcom/googlecode/mp4parser/authoring/j;
.super Ljava/lang/Object;
.source "WrappingTrack.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/h;


# instance fields
.field a:Lcom/googlecode/mp4parser/authoring/h;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

    return-void
.end method


# virtual methods
.method public B()Lcom/coremedia/iso/boxes/a1;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->V()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a0()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v0

    return-object v0
.end method

.method public c0()[J
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->c0()[J

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'"

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->u()Lcom/coremedia/iso/boxes/s0;

    move-result-object v0

    return-object v0
.end method

.method public z()[J
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->a:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->z()[J

    move-result-object v0

    return-object v0
.end method
