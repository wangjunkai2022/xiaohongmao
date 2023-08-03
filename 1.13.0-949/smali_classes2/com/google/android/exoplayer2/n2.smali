.class final Lcom/google/android/exoplayer2/n2;
.super Ljava/lang/Object;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/n2$c;,
        Lcom/google/android/exoplayer2/n2$b;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "StreamVolumeManager"

.field private static final j:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static final k:I = 0x1


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/exoplayer2/n2$b;

.field private final d:Landroid/media/AudioManager;

.field private e:Lcom/google/android/exoplayer2/n2$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/n2$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/n2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/n2;->b:Landroid/os/Handler;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/n2;->c:Lcom/google/android/exoplayer2/n2$b;

    const-string p2, "audio"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 6
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/n2;->d:Landroid/media/AudioManager;

    const/4 p3, 0x3

    .line 7
    iput p3, p0, Lcom/google/android/exoplayer2/n2;->f:I

    .line 8
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/n2;->h(Landroid/media/AudioManager;I)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/n2;->g:I

    .line 9
    iget p3, p0, Lcom/google/android/exoplayer2/n2;->f:I

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/n2;->f(Landroid/media/AudioManager;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/n2;->h:Z

    .line 10
    new-instance p2, Lcom/google/android/exoplayer2/n2$c;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/exoplayer2/n2$c;-><init>(Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/n2$a;)V

    .line 11
    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 13
    iput-object p2, p0, Lcom/google/android/exoplayer2/n2;->e:Lcom/google/android/exoplayer2/n2$c;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "StreamVolumeManager"

    const-string p3, "Error registering stream volume receiver"

    .line 14
    invoke-static {p2, p3, p1}, Lcom/google/android/exoplayer2/util/w;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/n2;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/n2;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/n2;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/n2;->o()V

    return-void
.end method

.method private static f(Landroid/media/AudioManager;I)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->h(Landroid/media/AudioManager;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static h(Landroid/media/AudioManager;I)I
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const/16 v1, 0x3c

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not retrieve stream volume for stream type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/w;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/n2;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/n2;->f:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/n2;->h(Landroid/media/AudioManager;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->d:Landroid/media/AudioManager;

    iget v2, p0, Lcom/google/android/exoplayer2/n2;->f:I

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/n2;->f(Landroid/media/AudioManager;I)Z

    move-result v1

    .line 3
    iget v2, p0, Lcom/google/android/exoplayer2/n2;->g:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/n2;->h:Z

    if-eq v2, v1, :cond_1

    .line 4
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/n2;->g:I

    .line 5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/n2;->h:Z

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/n2;->c:Lcom/google/android/exoplayer2/n2$b;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/n2$b;->N(IZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/n2;->g:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n2;->e()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n2;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/n2;->f:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/n2;->o()V

    return-void
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/n2;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/n2;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/n2;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/n2;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/n2;->g:I

    return v0
.end method

.method public i()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/n2;->g:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n2;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n2;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/n2;->f:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/n2;->o()V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/n2;->h:Z

    return v0
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/n2;->e:Lcom/google/android/exoplayer2/n2$c;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/n2;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StreamVolumeManager"

    const-string v2, "Error unregistering stream volume receiver"

    .line 3
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/w;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/n2;->e:Lcom/google/android/exoplayer2/n2$c;

    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/n2;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/n2;->f:I

    if-eqz p1, :cond_0

    const/16 p1, -0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/n2;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/n2;->f:I

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 4
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/n2;->o()V

    return-void
.end method

.method public m(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/n2;->f:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/n2;->f:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/n2;->o()V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/n2;->c:Lcom/google/android/exoplayer2/n2$b;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/n2$b;->H(I)V

    return-void
.end method

.method public n(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n2;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n2;->d()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/n2;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/android/exoplayer2/n2;->f:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/n2;->o()V

    :cond_1
    :goto_0
    return-void
.end method
