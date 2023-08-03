.class final Lcom/google/android/play/core/assetpacks/h0;
.super Lcom/google/android/play/core/internal/l2;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final c:Lcom/google/android/play/core/internal/h;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/play/core/assetpacks/p0;

.field private final f:Lcom/google/android/play/core/assetpacks/k4;

.field private final g:Lcom/google/android/play/core/assetpacks/r1;

.field final h:Landroid/app/NotificationManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/p0;Lcom/google/android/play/core/assetpacks/k4;Lcom/google/android/play/core/assetpacks/r1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/internal/l2;-><init>()V

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "AssetPackExtractionService"

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/h0;->c:Lcom/google/android/play/core/internal/h;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/h0;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/h0;->e:Lcom/google/android/play/core/assetpacks/p0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/h0;->f:Lcom/google/android/play/core/assetpacks/k4;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/h0;->g:Lcom/google/android/play/core/assetpacks/r1;

    const-string p2, "notification"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/h0;->h:Landroid/app/NotificationManager;

    return-void
.end method

.method private final declared-synchronized x(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "File downloads by Play"

    .line 1
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "playcore-assetpacks-service-notification-channel"

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/h0;->h:Landroid/app/NotificationManager;

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized z(Landroid/os/Bundle;Lcom/google/android/play/core/internal/n2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/h0;->c:Lcom/google/android/play/core/internal/h;

    const-string v1, "updateServiceState AIDL call"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/h0;->d:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/android/play/core/internal/h1;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/h0;->d:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/google/android/play/core/internal/h1;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "action_type"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/h0;->g:Lcom/google/android/play/core/assetpacks/r1;

    .line 5
    invoke-virtual {v1, p2}, Lcom/google/android/play/core/assetpacks/r1;->c(Lcom/google/android/play/core/internal/n2;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_1

    const-string v3, "notification_channel_name"

    .line 6
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-direct {p0, v3}, Lcom/google/android/play/core/assetpacks/h0;->x(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/h0;->f:Lcom/google/android/play/core/assetpacks/k4;

    .line 8
    invoke-virtual {v3, v1}, Lcom/google/android/play/core/assetpacks/k4;->r(Z)V

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/h0;->g:Lcom/google/android/play/core/assetpacks/r1;

    const-string v4, "notification_title"

    .line 9
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notification_subtext"

    .line 10
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "notification_timeout"

    const-wide/32 v7, 0x927c0

    .line 11
    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "notification_on_click_intent"

    .line 12
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    if-lt p2, v0, :cond_2

    .line 13
    new-instance p2, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/h0;->d:Landroid/content/Context;

    const-string v9, "playcore-assetpacks-service-notification-channel"

    invoke-direct {p2, v0, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, v6, v7}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object p2

    goto :goto_0

    .line 15
    :cond_2
    new-instance p2, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/h0;->d:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x2

    .line 16
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 17
    :goto_0
    instance-of v0, v8, Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 18
    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {p2, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_3
    const v0, 0x1080081

    .line 19
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    if-nez v4, :cond_4

    const-string v4, "Downloading additional file"

    .line 21
    :cond_4
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-nez v5, :cond_5

    const-string v5, "Transferring"

    .line 22
    :cond_5
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v0, "notification_color"

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    .line 24
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 25
    :cond_6
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 26
    invoke-virtual {v3, p1}, Lcom/google/android/play/core/assetpacks/r1;->a(Landroid/app/Notification;)V

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/h0;->d:Landroid/content/Context;

    const-class v0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;

    .line 27
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/h0;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/h0;->g:Lcom/google/android/play/core/assetpacks/r1;

    .line 28
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    const/4 p1, 0x2

    if-ne v0, p1, :cond_8

    .line 29
    :try_start_1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/h0;->f:Lcom/google/android/play/core/assetpacks/k4;

    .line 30
    invoke-virtual {p1, v2}, Lcom/google/android/play/core/assetpacks/k4;->r(Z)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/h0;->g:Lcom/google/android/play/core/assetpacks/r1;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/r1;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    :try_start_2
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/h0;->c:Lcom/google/android/play/core/internal/h;

    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Unknown action type received: %d"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Landroid/os/Bundle;

    .line 33
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/android/play/core/internal/n2;->w(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 34
    :cond_9
    :goto_1
    :try_start_3
    new-instance p1, Landroid/os/Bundle;

    .line 35
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/android/play/core/internal/n2;->w(Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final m0(Landroid/os/Bundle;Lcom/google/android/play/core/internal/n2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/h0;->c:Lcom/google/android/play/core/internal/h;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "clearAssetPackStorage AIDL call"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/h0;->d:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/google/android/play/core/internal/h1;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/h0;->d:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/play/core/internal/h1;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/h0;->e:Lcom/google/android/play/core/assetpacks/p0;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/p0;->Q()V

    new-instance p1, Landroid/os/Bundle;

    .line 6
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/android/play/core/internal/n2;->h(Landroid/os/Bundle;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    .line 8
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/android/play/core/internal/n2;->w(Landroid/os/Bundle;)V

    return-void
.end method

.method public final t0(Landroid/os/Bundle;Lcom/google/android/play/core/internal/n2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/h0;->z(Landroid/os/Bundle;Lcom/google/android/play/core/internal/n2;)V

    return-void
.end method
