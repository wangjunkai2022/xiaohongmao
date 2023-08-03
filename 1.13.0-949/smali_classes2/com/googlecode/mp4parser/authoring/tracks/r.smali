.class public Lcom/googlecode/mp4parser/authoring/tracks/r;
.super Lcom/googlecode/mp4parser/authoring/a;
.source "ReplaceSampleTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/r$b;
    }
.end annotation


# instance fields
.field d:Lcom/googlecode/mp4parser/authoring/h;

.field private e:J

.field private f:Lcom/googlecode/mp4parser/authoring/f;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/h;JLjava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replace("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/a;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->d:Lcom/googlecode/mp4parser/authoring/h;

    .line 3
    iput-wide p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->e:J

    .line 4
    new-instance p1, Lcom/googlecode/mp4parser/authoring/g;

    invoke-direct {p1, p4}, Lcom/googlecode/mp4parser/authoring/g;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->f:Lcom/googlecode/mp4parser/authoring/f;

    .line 5
    new-instance p1, Lcom/googlecode/mp4parser/authoring/tracks/r$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/googlecode/mp4parser/authoring/tracks/r$b;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/r;Lcom/googlecode/mp4parser/authoring/tracks/r$b;)V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/googlecode/mp4parser/authoring/tracks/r;)J
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->e:J

    return-wide v0
.end method

.method static synthetic b(Lcom/googlecode/mp4parser/authoring/tracks/r;)Lcom/googlecode/mp4parser/authoring/f;
    .locals 0

    iget-object p0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->f:Lcom/googlecode/mp4parser/authoring/f;

    return-object p0
.end method


# virtual methods
.method public B()Lcom/coremedia/iso/boxes/a1;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->d:Lcom/googlecode/mp4parser/authoring/h;

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->g:Ljava/util/List;

    return-object v0
.end method

.method public a0()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->d:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c0()[J
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->d:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->c0()[J

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->d:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->d:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->d:Lcom/googlecode/mp4parser/authoring/h;

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->d:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->d:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->u()Lcom/coremedia/iso/boxes/s0;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized z()[J
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/r;->d:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->z()[J

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
