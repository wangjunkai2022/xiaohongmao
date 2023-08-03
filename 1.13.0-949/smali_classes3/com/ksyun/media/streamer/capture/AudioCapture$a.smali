.class Lcom/ksyun/media/streamer/capture/AudioCapture$a;
.super Ljava/lang/Thread;
.source "AudioCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/AudioCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/AudioCapture;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/capture/AudioCapture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/capture/AudioCapture;Lcom/ksyun/media/streamer/capture/AudioCapture$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/capture/AudioCapture$a;-><init>(Lcom/ksyun/media/streamer/capture/AudioCapture;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const/16 v0, -0x13

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v2, -0x7d3

    .line 2
    :try_start_0
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->c(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    .line 3
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->f(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    .line 4
    :goto_0
    iget-object v5, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v5}, Lcom/ksyun/media/streamer/capture/AudioCapture;->e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v5

    invoke-static {v5, v0, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iget-object v5, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    .line 5
    invoke-static {v5}, Lcom/ksyun/media/streamer/capture/AudioCapture;->f(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    div-int/2addr v0, v5

    .line 6
    iget-object v5, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    new-instance v6, Lcom/ksyun/media/streamer/capture/audio/c;

    invoke-static {v5}, Lcom/ksyun/media/streamer/capture/AudioCapture;->e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v7

    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->f(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v8

    invoke-direct {v6, v7, v8, v0}, Lcom/ksyun/media/streamer/capture/audio/c;-><init>(III)V

    invoke-static {v5, v6}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(Lcom/ksyun/media/streamer/capture/AudioCapture;Lcom/ksyun/media/streamer/capture/audio/a;)Lcom/ksyun/media/streamer/capture/audio/a;

    move v5, v0

    goto :goto_2

    .line 7
    :cond_1
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v5, v0, 0x2

    .line 8
    iget-object v6, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    new-instance v7, Lcom/ksyun/media/streamer/capture/audio/b;

    invoke-static {v6}, Lcom/ksyun/media/streamer/capture/AudioCapture;->e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v8

    iget-object v9, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v9}, Lcom/ksyun/media/streamer/capture/AudioCapture;->f(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v9

    invoke-direct {v7, v8, v9, v0}, Lcom/ksyun/media/streamer/capture/audio/b;-><init>(III)V

    invoke-static {v6, v7}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(Lcom/ksyun/media/streamer/capture/AudioCapture;Lcom/ksyun/media/streamer/capture/audio/a;)Lcom/ksyun/media/streamer/capture/audio/a;

    move/from16 v16, v5

    move v5, v0

    move/from16 v0, v16

    goto :goto_2

    .line 9
    :cond_2
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->d(Lcom/ksyun/media/streamer/capture/AudioCapture;)Landroid/content/Context;

    move-result-object v0

    iget-object v5, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v5}, Lcom/ksyun/media/streamer/capture/AudioCapture;->e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v5

    invoke-static {v0, v5}, Lcom/ksyun/media/streamer/util/audio/a;->a(Landroid/content/Context;I)I

    move-result v0

    .line 10
    iget-object v5, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v5}, Lcom/ksyun/media/streamer/capture/AudioCapture;->e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x14

    div-int/lit16 v5, v5, 0x3e8

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_3

    add-int/2addr v6, v0

    goto :goto_1

    .line 11
    :cond_3
    iget-object v5, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    new-instance v7, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;

    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v8

    iget-object v9, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v9}, Lcom/ksyun/media/streamer/capture/AudioCapture;->f(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v9

    invoke-direct {v7, v8, v9, v0}, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;-><init>(III)V

    invoke-static {v5, v7}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(Lcom/ksyun/media/streamer/capture/AudioCapture;Lcom/ksyun/media/streamer/capture/audio/a;)Lcom/ksyun/media/streamer/capture/audio/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v0

    move v0, v6

    .line 12
    :goto_2
    iget-object v6, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v6, v3}, Lcom/ksyun/media/streamer/capture/AudioCapture;->b(Lcom/ksyun/media/streamer/capture/AudioCapture;I)V

    .line 13
    iget-object v6, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v6}, Lcom/ksyun/media/streamer/capture/AudioCapture;->f(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    mul-int v0, v0, v6

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "atomSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AudioCapture"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readSize:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sampleRate:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v7}, Lcom/ksyun/media/streamer/capture/AudioCapture;->e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channels:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v7}, Lcom/ksyun/media/streamer/capture/AudioCapture;->f(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 19
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    new-instance v7, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    .line 21
    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v8

    iget-object v9, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v9}, Lcom/ksyun/media/streamer/capture/AudioCapture;->f(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v9

    invoke-direct {v7, v3, v8, v9}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(III)V

    .line 22
    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v8

    iget-object v9, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v9}, Lcom/ksyun/media/streamer/capture/AudioCapture;->d(Lcom/ksyun/media/streamer/capture/AudioCapture;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/ksyun/media/streamer/util/audio/a;->a(Landroid/content/Context;)I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 23
    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->g(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/audio/a;

    move-result-object v8

    invoke-interface {v8}, Lcom/ksyun/media/streamer/capture/audio/a;->d()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    .line 24
    :cond_4
    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    iget-object v8, v8, Lcom/ksyun/media/streamer/capture/AudioCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v8, v7}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 25
    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->g(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/audio/a;

    move-result-object v8

    iget-object v9, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v9}, Lcom/ksyun/media/streamer/capture/AudioCapture;->h(Lcom/ksyun/media/streamer/capture/AudioCapture;)Z

    move-result v9

    invoke-interface {v8, v9}, Lcom/ksyun/media/streamer/capture/audio/a;->a(Z)V

    .line 26
    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->g(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/audio/a;

    move-result-object v8

    iget-object v9, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v9}, Lcom/ksyun/media/streamer/capture/AudioCapture;->i(Lcom/ksyun/media/streamer/capture/AudioCapture;)F

    move-result v9

    invoke-interface {v8, v9}, Lcom/ksyun/media/streamer/capture/audio/a;->a(F)V

    .line 27
    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->g(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/audio/a;

    move-result-object v8

    invoke-interface {v8}, Lcom/ksyun/media/streamer/capture/audio/a;->a()I

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    const-string v0, "start recording failed!"

    .line 28
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(Lcom/ksyun/media/streamer/capture/AudioCapture;I)V

    .line 30
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->g(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/audio/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksyun/media/streamer/capture/audio/a;->c()V

    .line 31
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0, v9}, Lcom/ksyun/media/streamer/capture/AudioCapture;->b(Lcom/ksyun/media/streamer/capture/AudioCapture;I)V

    return-void

    .line 32
    :cond_5
    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v2, v4}, Lcom/ksyun/media/streamer/capture/AudioCapture;->b(Lcom/ksyun/media/streamer/capture/AudioCapture;I)V

    .line 33
    :cond_6
    :goto_3
    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/AudioCapture;->j(Lcom/ksyun/media/streamer/capture/AudioCapture;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 34
    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/AudioCapture;->g(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/audio/a;

    move-result-object v2

    invoke-interface {v2, v5, v0}, Lcom/ksyun/media/streamer/capture/audio/a;->a(Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 35
    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->j(Lcom/ksyun/media/streamer/capture/AudioCapture;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto/16 :goto_4

    :cond_7
    if-lez v2, :cond_b

    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    .line 37
    div-int/lit8 v2, v2, 0x2

    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->f(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v8

    div-int/2addr v2, v8

    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v8

    div-int/2addr v2, v8

    int-to-long v14, v2

    sub-long/2addr v10, v14

    .line 38
    div-long/2addr v10, v12

    .line 39
    iget-object v2, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/AudioCapture;->k(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/kit/OnAudioRawDataListener;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 40
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    div-int/2addr v2, v4

    .line 41
    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->l(Lcom/ksyun/media/streamer/capture/AudioCapture;)[S

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v8}, Lcom/ksyun/media/streamer/capture/AudioCapture;->l(Lcom/ksyun/media/streamer/capture/AudioCapture;)[S

    move-result-object v8

    array-length v8, v8

    if-ge v8, v2, :cond_9

    .line 42
    :cond_8
    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    new-array v12, v2, [S

    invoke-static {v8, v12}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(Lcom/ksyun/media/streamer/capture/AudioCapture;[S)[S

    .line 43
    :cond_9
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v8

    .line 44
    iget-object v12, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v12}, Lcom/ksyun/media/streamer/capture/AudioCapture;->l(Lcom/ksyun/media/streamer/capture/AudioCapture;)[S

    move-result-object v12

    invoke-virtual {v8, v12, v9, v2}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 45
    iget-object v12, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v12}, Lcom/ksyun/media/streamer/capture/AudioCapture;->k(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/kit/OnAudioRawDataListener;

    move-result-object v12

    iget-object v13, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v13}, Lcom/ksyun/media/streamer/capture/AudioCapture;->l(Lcom/ksyun/media/streamer/capture/AudioCapture;)[S

    move-result-object v13

    iget-object v14, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    .line 46
    invoke-static {v14}, Lcom/ksyun/media/streamer/capture/AudioCapture;->e(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v14

    iget-object v15, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v15}, Lcom/ksyun/media/streamer/capture/AudioCapture;->f(Lcom/ksyun/media/streamer/capture/AudioCapture;)I

    move-result v15

    .line 47
    invoke-interface {v12, v13, v2, v14, v15}, Lcom/ksyun/media/streamer/kit/OnAudioRawDataListener;->OnAudioRawData([SIII)[S

    move-result-object v12

    .line 48
    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 49
    invoke-virtual {v8, v12, v9, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 50
    invoke-virtual {v8}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 51
    :cond_a
    new-instance v2, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-direct {v2, v7, v5, v10, v11}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 52
    iget-object v8, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    iget-object v8, v8, Lcom/ksyun/media/streamer/capture/AudioCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v8, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    goto/16 :goto_3

    :cond_b
    if-gez v2, :cond_6

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read error: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    const/16 v2, -0x7d5

    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(Lcom/ksyun/media/streamer/capture/AudioCapture;I)V

    .line 55
    :cond_c
    :goto_4
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v7, v2, v4, v5}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 56
    iget v4, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    iput v4, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 57
    iget-object v4, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    iget-object v4, v4, Lcom/ksyun/media/streamer/capture/AudioCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v4, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 58
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->g(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/audio/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksyun/media/streamer/capture/audio/a;->b()I

    .line 59
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0, v3}, Lcom/ksyun/media/streamer/capture/AudioCapture;->b(Lcom/ksyun/media/streamer/capture/AudioCapture;I)V

    .line 60
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioCapture;->g(Lcom/ksyun/media/streamer/capture/AudioCapture;)Lcom/ksyun/media/streamer/capture/audio/a;

    move-result-object v0

    .line 61
    iget-object v3, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v3, v2}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(Lcom/ksyun/media/streamer/capture/AudioCapture;Lcom/ksyun/media/streamer/capture/audio/a;)Lcom/ksyun/media/streamer/capture/audio/a;

    .line 62
    invoke-interface {v0}, Lcom/ksyun/media/streamer/capture/audio/a;->c()V

    .line 63
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0, v9}, Lcom/ksyun/media/streamer/capture/AudioCapture;->b(Lcom/ksyun/media/streamer/capture/AudioCapture;I)V

    return-void

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    iget-object v0, v1, Lcom/ksyun/media/streamer/capture/AudioCapture$a;->a:Lcom/ksyun/media/streamer/capture/AudioCapture;

    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/capture/AudioCapture;->a(Lcom/ksyun/media/streamer/capture/AudioCapture;I)V

    return-void
.end method
