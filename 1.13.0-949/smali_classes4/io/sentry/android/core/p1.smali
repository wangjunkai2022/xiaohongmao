.class public final Lio/sentry/android/core/p1;
.super Ljava/lang/Object;
.source "SystemEventsBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/z0;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/p1$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field b:Lio/sentry/android/core/p1$a;
    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/k;
    .end annotation
.end field

.field private c:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/sentry/android/core/p1;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/p1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context is required"

    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/p1;->a:Landroid/content/Context;

    const-string p1, "Actions list is required"

    .line 4
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lio/sentry/android/core/p1;->d:Ljava/util/List;

    return-void
.end method

.method private static b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.appwidget.action.APPWIDGET_RESTORED"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.BATTERY_LOW"

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.BATTERY_OKAY"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.CONTENT_CHANGED"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.INPUT_METHOD_CHANGED"

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.REBOOT"

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.TIME_SET"

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.APP_ERROR"

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.BUG_REPORT"

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 4
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "Hub is required"

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 3
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p2, p0, Lio/sentry/android/core/p1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 4
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/sentry/android/core/p1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SystemEventsBreadcrumbsIntegration enabled: %s"

    .line 6
    invoke-interface {p2, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Lio/sentry/android/core/p1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    new-instance p2, Lio/sentry/android/core/p1$a;

    iget-object v0, p0, Lio/sentry/android/core/p1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lio/sentry/android/core/p1$a;-><init>(Lio/sentry/n0;Lio/sentry/o0;)V

    iput-object p2, p0, Lio/sentry/android/core/p1;->b:Lio/sentry/android/core/p1$a;

    .line 9
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 10
    iget-object p2, p0, Lio/sentry/android/core/p1;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_1
    :try_start_0
    iget-object p2, p0, Lio/sentry/android/core/p1;->a:Landroid/content/Context;

    iget-object v0, p0, Lio/sentry/android/core/p1;->b:Lio/sentry/android/core/p1$a;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 13
    iget-object p1, p0, Lio/sentry/android/core/p1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 14
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "SystemEventsBreadcrumbsIntegration installed."

    new-array v1, v3, [Ljava/lang/Object;

    .line 15
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 16
    iget-object p2, p0, Lio/sentry/android/core/p1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSystemEventBreadcrumbs(Z)V

    .line 17
    iget-object p2, p0, Lio/sentry/android/core/p1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 18
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to initialize SystemEventsBreadcrumbsIntegration."

    .line 19
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/p1;->b:Lio/sentry/android/core/p1$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/sentry/android/core/p1;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/sentry/android/core/p1;->b:Lio/sentry/android/core/p1$a;

    .line 4
    iget-object v0, p0, Lio/sentry/android/core/p1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "SystemEventsBreadcrumbsIntegration remove."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
