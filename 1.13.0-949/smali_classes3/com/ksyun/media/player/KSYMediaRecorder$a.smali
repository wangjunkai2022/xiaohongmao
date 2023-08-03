.class Lcom/ksyun/media/player/KSYMediaRecorder$a;
.super Ljava/lang/Object;
.source "KSYMediaRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/KSYMediaRecorder;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/player/KSYMediaRecorder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$a;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/player/KSYMediaRecorder;Lcom/ksyun/media/player/KSYMediaRecorder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/player/KSYMediaRecorder$a;-><init>(Lcom/ksyun/media/player/KSYMediaRecorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder$a;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder;->g(Lcom/ksyun/media/player/KSYMediaRecorder;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder$a;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder;->h(Lcom/ksyun/media/player/KSYMediaRecorder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder$a;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder;->i(Lcom/ksyun/media/player/KSYMediaRecorder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/player/KSYMediaRecorder$c;

    if-nez v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$a;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {v1}, Lcom/ksyun/media/player/KSYMediaRecorder;->i(Lcom/ksyun/media/player/KSYMediaRecorder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 7
    :goto_1
    iget-object v2, p0, Lcom/ksyun/media/player/KSYMediaRecorder$a;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->c(Lcom/ksyun/media/player/KSYMediaRecorder$c;)I

    move-result v4

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->d(Lcom/ksyun/media/player/KSYMediaRecorder$c;)I

    move-result v0

    invoke-static {v2, v3, v4, v0, v1}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Lcom/ksyun/media/player/KSYMediaRecorder;[BIII)V

    if-lez v1, :cond_0

    .line 8
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder$a;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder;->g(Lcom/ksyun/media/player/KSYMediaRecorder;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 9
    iget-object v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder$a;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder;->j(Lcom/ksyun/media/player/KSYMediaRecorder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/player/KSYMediaRecorder$c;

    if-nez v0, :cond_5

    .line 10
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$a;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->c(Lcom/ksyun/media/player/KSYMediaRecorder$c;)I

    move-result v3

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->b(Lcom/ksyun/media/player/KSYMediaRecorder$c;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/ksyun/media/player/KSYMediaRecorder$c;->d(Lcom/ksyun/media/player/KSYMediaRecorder$c;)I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Lcom/ksyun/media/player/KSYMediaRecorder;[BIJI)V

    goto :goto_2

    :cond_6
    return-void
.end method
