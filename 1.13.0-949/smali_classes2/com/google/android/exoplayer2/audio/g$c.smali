.class final Lcom/google/android/exoplayer2/audio/g$c;
.super Landroid/content/BroadcastReceiver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/audio/g;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/g$c;->a:Lcom/google/android/exoplayer2/audio/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/g;Lcom/google/android/exoplayer2/audio/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/g$c;-><init>(Lcom/google/android/exoplayer2/audio/g;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g$c;->a:Lcom/google/android/exoplayer2/audio/g;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/audio/f;->d(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/exoplayer2/audio/f;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/audio/g;->a(Lcom/google/android/exoplayer2/audio/g;Lcom/google/android/exoplayer2/audio/f;)V

    :cond_0
    return-void
.end method
