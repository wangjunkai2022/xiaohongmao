.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;
.super Ljava/lang/Object;
.source "ImgTexFilterMgt.java"


# static fields
.field public static final KSY_FILTER_BEAUTY_DENOISE:I = 0x13

.field public static final KSY_FILTER_BEAUTY_DISABLE:I = 0x0

.field public static final KSY_FILTER_BEAUTY_ILLUSION:I = 0x12

.field public static final KSY_FILTER_BEAUTY_PRO:I = 0x17

.field public static final KSY_FILTER_BEAUTY_PRO1:I = 0x18

.field public static final KSY_FILTER_BEAUTY_PRO2:I = 0x19

.field public static final KSY_FILTER_BEAUTY_PRO3:I = 0x1a

.field public static final KSY_FILTER_BEAUTY_PRO4:I = 0x1b

.field public static final KSY_FILTER_BEAUTY_SKINWHITEN:I = 0x11

.field public static final KSY_FILTER_BEAUTY_SMOOTH:I = 0x14

.field public static final KSY_FILTER_BEAUTY_SOFT:I = 0x10

.field public static final KSY_FILTER_BEAUTY_SOFT_EXT:I = 0x15

.field public static final KSY_FILTER_BEAUTY_SOFT_SHARPEN:I = 0x16

.field private static final a:Ljava/lang/String; = "ImgTexFilterMgt"

.field private static final b:Z = false


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Object;

.field private i:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->h:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->c:Landroid/content/Context;

    .line 4
    new-instance p1, Lcom/ksyun/media/streamer/framework/PinAdapter;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/framework/PinAdapter;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 5
    new-instance p1, Lcom/ksyun/media/streamer/framework/PinAdapter;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/framework/PinAdapter;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->e:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    .line 8
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;",
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

    instance-of v2, v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;

    .line 6
    invoke-virtual {v2, v3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->setTakeEffect(Z)V

    .line 7
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySpecialEffectsFilter;->getSpecialName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 9
    invoke-virtual {v4, v5}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateBeautyType([Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 12
    invoke-virtual {v2, v3}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateBeautyType([Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public addFilter(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->i:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->e:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    goto :goto_1

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    .line 10
    :goto_1
    invoke-virtual {v1, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 11
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 12
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 13
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->a(Ljava/util/List;)V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addFilterAfter(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;)V
    .locals 5
    .param p1    # Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
        .annotation build La/f0;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->i:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p2, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 7
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->e:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 12
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 13
    invoke-virtual {p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->a(Ljava/util/List;)V

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :cond_4
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "The filter specified not found!"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addFilterBefore(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;)V
    .locals 4
    .param p1    # Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
        .annotation build La/f0;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->i:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p2, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 9
    invoke-virtual {p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 10
    invoke-virtual {p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 11
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {p1, v1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->a(Ljava/util/List;)V

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "The filter specified not found!"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getExtraFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized getFilter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;
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
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method public getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->e:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replaceFilter(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;)V
    .locals 1
    .param p1    # Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
        .annotation build La/g0;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->replaceFilter(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;Z)V

    return-void
.end method

.method public replaceFilter(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;Z)V
    .locals 6
    .param p1    # Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;
        .annotation build La/g0;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->i:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v2

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3

    .line 10
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->e:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v3, v3, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    goto :goto_1

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v3

    goto :goto_1

    .line 13
    :cond_3
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v3

    .line 14
    :goto_1
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 15
    invoke-virtual {v2, p3}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    if-eqz p2, :cond_4

    .line 16
    invoke-virtual {p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 17
    invoke-virtual {p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 18
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {p1, v1, p2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v2, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 20
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 21
    :goto_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->a(Ljava/util/List;)V

    .line 22
    monitor-exit v0

    return-void

    .line 23
    :cond_5
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "The filter to be replaced not found!"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setExtraFilter(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;)V
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
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->setExtraFilter(Ljava/util/List;)V

    return-void
.end method

.method public setExtraFilter(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 7
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_7

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    .line 16
    :cond_4
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    goto :goto_2

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    .line 19
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    :goto_2
    const/4 v1, 0x1

    .line 20
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v1, -0x1

    .line 21
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v4}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 22
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->e:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 23
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 24
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->e:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    goto :goto_5

    .line 26
    :cond_8
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->e:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 27
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->a(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFilter(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->setFilter(Ljava/util/List;)V

    return-void
.end method

.method public setFilter(Lcom/ksyun/media/streamer/util/gles/GLRender;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance p2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->c:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {p2, p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;I)V

    goto :goto_0

    .line 2
    :pswitch_1
    new-instance p2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->c:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p2, p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;I)V

    goto :goto_0

    .line 3
    :pswitch_2
    new-instance p2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->c:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;I)V

    goto :goto_0

    .line 4
    :pswitch_3
    new-instance p2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p2, p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;I)V

    goto :goto_0

    .line 5
    :pswitch_4
    new-instance p2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->c:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyProFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :pswitch_5
    new-instance p2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySoftSharpenFilter;

    invoke-direct {p2, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySoftSharpenFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    goto :goto_0

    .line 7
    :pswitch_6
    new-instance p2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySoftExtFilter;

    invoke-direct {p2, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySoftExtFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    goto :goto_0

    .line 8
    :pswitch_7
    new-instance p2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->c:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySmoothFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;)V

    goto :goto_0

    .line 9
    :pswitch_8
    new-instance p2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyDenoiseFilter;

    invoke-direct {p2, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyDenoiseFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    goto :goto_0

    .line 10
    :pswitch_9
    new-instance p2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;

    invoke-direct {p2, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    goto :goto_0

    .line 11
    :pswitch_a
    new-instance p2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySkinWhitenFilter;

    invoke-direct {p2, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySkinWhitenFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    goto :goto_0

    .line 12
    :pswitch_b
    new-instance p2, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySoftFilter;

    invoke-direct {p2, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySoftFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    .line 13
    :goto_0
    invoke-virtual {p0, p2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->setFilter(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFilter(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 21
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    const-string v1, "KSY_FILTER_BEAUTY_DISABLE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateBeautyType([Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->i:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    .line 24
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->i:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 27
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 28
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v3}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 29
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 30
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 31
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_7

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    .line 33
    :cond_4
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v4}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    const/4 v1, 0x1

    .line 34
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    add-int/lit8 v4, v1, -0x1

    .line 35
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v4}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v5}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 36
    :cond_5
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->e:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    goto :goto_3

    .line 38
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    .line 39
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 40
    :goto_3
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 41
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 42
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->e:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v2, v2, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    goto :goto_5

    .line 43
    :cond_8
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->d:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->g:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 44
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->a(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFilter([Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 17
    array-length v0, p1

    if-lez v0, :cond_0

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 19
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->setFilter(Ljava/util/List;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->i:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    .line 2
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->h:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->i:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;

    .line 5
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterMgt;->i:Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setOnErrorListener(Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase$OnErrorListener;)V

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
