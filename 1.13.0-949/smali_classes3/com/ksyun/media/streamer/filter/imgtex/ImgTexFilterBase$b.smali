.class Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;
.super Lcom/ksyun/media/streamer/framework/SrcPin;
.source "ImgTexFilterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SrcPin<",
        "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->isReuseFbo()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/framework/SrcPin;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->ref()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->unref()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/SrcPin;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/framework/SinkPin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/framework/SrcPin;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 8
    iget-object v2, p0, Lcom/ksyun/media/streamer/framework/SrcPin;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SinkPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 9
    iget-object v2, p0, Lcom/ksyun/media/streamer/framework/SrcPin;->c:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_4
    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/framework/SinkPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->isReuseFbo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    instance-of v1, v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    if-nez v1, :cond_3

    .line 13
    :goto_2
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->unref()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "ImgTexFilterBase"

    .line 14
    iget-object v4, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->isReuseFbo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    instance-of v1, v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    if-nez v1, :cond_3

    goto :goto_2

    .line 18
    :goto_3
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->isReuseFbo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    instance-of v1, v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    if-nez v1, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->unref()V

    :cond_5
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 21
    :cond_6
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$b;->a(Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method
