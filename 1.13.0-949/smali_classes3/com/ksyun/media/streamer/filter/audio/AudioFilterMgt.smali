.class public Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;
.super Ljava/lang/Object;
.source "AudioFilterMgt.java"


# static fields
.field private static final a:Ljava/lang/String; = "AudioFilterMgt"


# instance fields
.field private b:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->e:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/a;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/a;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/a;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/a;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->d:Ljava/util/LinkedList;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;

    .line 6
    invoke-virtual {v2, v3}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->setTakeEffect(Z)V

    .line 7
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->getReverbType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 9
    invoke-virtual {v4, v5}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateAudioFilterType([Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 12
    invoke-virtual {v2, v3}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateAudioFilterType([Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public declared-synchronized getFilter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->d:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method public getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public setFilter(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->setFilter(Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized setFilter(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 11
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 12
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    const/4 v1, 0x1

    .line 17
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, -0x1

    .line 18
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {v4}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 20
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 21
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->b:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->c:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 22
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 25
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFilter([Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    array-length v0, p1

    if-lez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterMgt;->setFilter(Ljava/util/List;)V

    return-void
.end method
