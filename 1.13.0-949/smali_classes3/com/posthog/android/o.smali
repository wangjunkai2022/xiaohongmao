.class public Lcom/posthog/android/o;
.super Lcom/posthog/android/x;
.source "PostHogContext.java"


# static fields
.field private static final b:Ljava/lang/String; = "$locale"

.field private static final c:Ljava/lang/String; = "$user_agent"

.field private static final d:Ljava/lang/String; = "$timezone"

.field private static final e:Ljava/lang/String; = "$app_name"

.field private static final f:Ljava/lang/String; = "$app_version"

.field private static final g:Ljava/lang/String; = "$app_namespace"

.field private static final h:Ljava/lang/String; = "$app_build"

.field private static final i:Ljava/lang/String; = "$device_id"

.field private static final j:Ljava/lang/String; = "$device_manufacturer"

.field private static final k:Ljava/lang/String; = "$device_model"

.field private static final l:Ljava/lang/String; = "$device_name"

.field private static final m:Ljava/lang/String; = "$device_token"

.field private static final n:Ljava/lang/String; = "$device_advertising_id"

.field private static final o:Ljava/lang/String; = "$device_ad_capturing_enabled"

.field private static final p:Ljava/lang/String; = "$lib"

.field private static final q:Ljava/lang/String; = "$lib_version"

.field private static final r:Ljava/lang/String; = "$network_bluetooth"

.field private static final s:Ljava/lang/String; = "$network_carrier"

.field private static final t:Ljava/lang/String; = "$network_cellular"

.field private static final u:Ljava/lang/String; = "$network_wifi"

.field private static final v:Ljava/lang/String; = "$os_name"

.field private static final w:Ljava/lang/String; = "$os_version"

.field private static final x:Ljava/lang/String; = "$screen_density"

.field private static final y:Ljava/lang/String; = "$screen_height"

.field private static final z:Ljava/lang/String; = "$screen_width"


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/posthog/android/x;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static D(Ljava/util/Map;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "undefined"

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method static declared-synchronized t(Landroid/content/Context;Lcom/posthog/android/s;Z)Lcom/posthog/android/o;
    .locals 3

    const-class v0, Lcom/posthog/android/o;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lcom/posthog/android/o;

    new-instance v2, Lcom/posthog/android/internal/Utils$NullableConcurrentHashMap;

    invoke-direct {v2}, Lcom/posthog/android/internal/Utils$NullableConcurrentHashMap;-><init>()V

    invoke-direct {v1, v2}, Lcom/posthog/android/o;-><init>(Ljava/util/Map;)V

    .line 2
    invoke-virtual {v1, p0}, Lcom/posthog/android/o;->v(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1, p0, p1, p2}, Lcom/posthog/android/o;->w(Landroid/content/Context;Lcom/posthog/android/s;Z)V

    .line 4
    invoke-virtual {v1}, Lcom/posthog/android/o;->y()V

    const-string p1, "$locale"

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p0}, Lcom/posthog/android/o;->A(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v1}, Lcom/posthog/android/o;->B()V

    .line 8
    invoke-virtual {v1, p0}, Lcom/posthog/android/o;->C(Landroid/content/Context;)V

    const-string p0, "$user_agent"

    const-string p1, "http.agent"

    .line 9
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/posthog/android/o;->D(Ljava/util/Map;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "$timezone"

    .line 10
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/posthog/android/o;->D(Ljava/util/Map;Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method A(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 1
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "connectivity"

    .line 2
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "$network_wifi"

    invoke-virtual {p0, v4, v2}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    .line 5
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "$network_bluetooth"

    invoke-virtual {p0, v4, v2}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "$network_cellular"

    invoke-virtual {p0, v1, v0}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "phone"

    .line 9
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const-string v0, "$network_carrier"

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const-string p1, "unknown"

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void
.end method

.method B()V
    .locals 2

    const-string v0, "$os_name"

    const-string v1, "Android"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "$os_version"

    invoke-virtual {p0, v1, v0}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method C(Landroid/content/Context;)V
    .locals 2

    const-string v0, "window"

    .line 1
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "$screen_density"

    invoke-virtual {p0, v1, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "$screen_height"

    invoke-virtual {p0, v1, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "$screen_width"

    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public E(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/o;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/posthog/android/x;->o(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/x;

    return-object p0
.end method

.method public F()Lcom/posthog/android/o;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 2
    new-instance v1, Lcom/posthog/android/o;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/posthog/android/o;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic o(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/x;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/posthog/android/o;->E(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/o;

    move-result-object p1

    return-object p1
.end method

.method s(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/posthog/android/i;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 1
    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->A(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/posthog/android/f;

    invoke-direct {v0, p0, p2, p3}, Lcom/posthog/android/f;-><init>(Lcom/posthog/android/o;Ljava/util/concurrent/CountDownLatch;Lcom/posthog/android/i;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/content/Context;

    aput-object p1, p2, v1

    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Not collecting advertising ID because com.google.android.gms.ads.identifier.AdvertisingIdClient was not found on the classpath."

    .line 3
    invoke-virtual {p3, v0, p1}, Lcom/posthog/android/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method

.method u(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p1}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$device_advertising_id"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "$device_ad_capturing_enabled"

    invoke-virtual {p0, p2, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method v(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v1, "$app_name"

    .line 3
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/posthog/android/o;->D(Ljava/util/Map;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "$app_version"

    .line 4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/posthog/android/o;->D(Ljava/util/Map;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "$app_namespace"

    .line 5
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/posthog/android/o;->D(Ljava/util/Map;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "$app_build"

    .line 6
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method w(Landroid/content/Context;Lcom/posthog/android/s;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-static {p1}, Lcom/posthog/android/internal/Utils;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/posthog/android/s;->t()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "$device_id"

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string p2, "$device_manufacturer"

    invoke-virtual {p0, p2, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p2, "$device_model"

    invoke-virtual {p0, p2, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string p2, "$device_name"

    invoke-virtual {p0, p2, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method x(Ljava/lang/String;)V
    .locals 1

    const-string v0, "$device_token"

    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method y()V
    .locals 2

    const-string v0, "$lib"

    const-string v1, "posthog-android"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "$lib_version"

    const-string v1, "2.0.3"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
