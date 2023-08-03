.class Lcom/ksyun/media/streamer/kit/KSYStreamer$a;
.super Landroid/content/BroadcastReceiver;
.source "KSYStreamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/kit/KSYStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/kit/KSYStreamer;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$a;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;Lcom/ksyun/media/streamer/kit/KSYStreamer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/kit/KSYStreamer$a;-><init>(Lcom/ksyun/media/streamer/kit/KSYStreamer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "bluetooth Headset is plugged"

    const-string v2, "android.bluetooth.profile.extra.STATE"

    const-string v3, "bluetooth Headset is unplugged"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "KSYStreamer"

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bluetooth state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 5
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$a;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iput-boolean v4, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBluetoothPluged:Z

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_7

    .line 7
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$a;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iput-boolean v5, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBluetoothPluged:Z

    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v7, 0xa

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_2

    .line 11
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$a;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iput-boolean v4, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBluetoothPluged:Z

    goto :goto_0

    :cond_2
    if-ne p1, v7, :cond_7

    .line 13
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$a;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iput-boolean v5, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBluetoothPluged:Z

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, -0x1

    const-string v0, "state"

    .line 16
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    const-string p1, "I have no idea what the headset state is"

    .line 17
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "Headset is plugged"

    .line 18
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$a;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iput-boolean v4, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mHeadSetPluged:Z

    goto :goto_0

    :cond_5
    const-string p1, "Headset is unplugged"

    .line 20
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$a;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iput-boolean v5, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mHeadSetPluged:Z

    goto :goto_0

    :cond_6
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 23
    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v7, :cond_7

    .line 24
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$a;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iput-boolean v5, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBluetoothPluged:Z

    .line 26
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/kit/KSYStreamer$a;->a:Lcom/ksyun/media/streamer/kit/KSYStreamer;

    iget-boolean p2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mIsEnableAudioPreview:Z

    if-eqz p2, :cond_a

    .line 27
    iget-boolean p2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mHeadSetPluged:Z

    if-nez p2, :cond_9

    iget-boolean p2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mBluetoothPluged:Z

    if-nez p2, :cond_9

    iget-object p2, p1, Lcom/ksyun/media/streamer/kit/KSYStreamer;->mAudioCapture:Lcom/ksyun/media/streamer/capture/AudioCapture;

    .line 28
    invoke-virtual {p2}, Lcom/ksyun/media/streamer/capture/AudioCapture;->getEnableLatencyTest()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    .line 29
    :cond_9
    :goto_1
    invoke-static {p1, v4}, Lcom/ksyun/media/streamer/kit/KSYStreamer;->access$600(Lcom/ksyun/media/streamer/kit/KSYStreamer;Z)V

    :cond_a
    return-void
.end method
