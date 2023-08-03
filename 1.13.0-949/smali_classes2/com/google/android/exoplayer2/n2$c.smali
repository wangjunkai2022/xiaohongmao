.class final Lcom/google/android/exoplayer2/n2$c;
.super Landroid/content/BroadcastReceiver;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/n2;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/n2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/n2$c;->a:Lcom/google/android/exoplayer2/n2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/n2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n2$c;-><init>(Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/n2;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/n2$c;->b(Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/n2;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/n2;->b(Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/n2$c;->a:Lcom/google/android/exoplayer2/n2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/n2;->a(Lcom/google/android/exoplayer2/n2;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/n2$c;->a:Lcom/google/android/exoplayer2/n2;

    new-instance v0, Lcom/google/android/exoplayer2/o2;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/o2;-><init>(Lcom/google/android/exoplayer2/n2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
