.class public Lcom/google/android/gms/security/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/security/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "GmsCore_OpenSSL"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/common/f;

.field private static final c:Ljava/lang/Object;

.field private static d:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ProviderInstaller.lock"
    .end annotation
.end field

.field private static e:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ProviderInstaller.lock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/f;->i()Lcom/google/android/gms/common/f;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/security/a;->b:Lcom/google/android/gms/common/f;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/security/a;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/security/a;->d:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/google/android/gms/security/a;->e:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 14
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    const-string v0, "Context must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/security/a;->b:Lcom/google/android/gms/common/f;

    const v1, 0xb5f608

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/f;->p(Landroid/content/Context;I)V

    sget-object v0, Lcom/google/android/gms/security/a;->c:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 5
    :try_start_1
    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->f:Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string v5, "com.google.android.gms.providerinstaller.dynamite"

    invoke-static {p0, v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->e(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$a;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->b()Landroid/content/Context;

    move-result-object v4
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "ProviderInstaller"

    const-string v6, "Failed to load providerinstaller module: "

    .line 6
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 7
    :cond_0
    new-instance v4, Ljava/lang/String;

    .line 8
    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    :goto_1
    if-nez v4, :cond_5

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/common/h;->i(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    :try_start_3
    sget-object v7, Lcom/google/android/gms/security/a;->e:Ljava/lang/reflect/Method;

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    if-nez v7, :cond_1

    new-array v7, v11, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v7, v10

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v7, v9

    aput-object v12, v7, v8

    const-string v12, "com.google.android.gms.common.security.ProviderInstallerImpl"

    const-string v13, "reportRequestStats"

    .line 11
    invoke-static {v6, v12, v13, v7}, Lcom/google/android/gms/security/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/google/android/gms/security/a;->e:Ljava/lang/reflect/Method;

    :cond_1
    sget-object v7, Lcom/google/android/gms/security/a;->e:Ljava/lang/reflect/Method;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v10

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v11, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v11, v8

    invoke-virtual {v7, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_4
    const-string v2, "ProviderInstaller"

    const-string v3, "Failed to report request stats: "

    .line 13
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 14
    :cond_2
    new-instance v1, Ljava/lang/String;

    .line 15
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    const-string v1, "com.google.android.gms.common.security.ProviderInstallerImpl"

    .line 16
    invoke-static {v6, p0, v1}, Lcom/google/android/gms/security/a;->e(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    monitor-exit v0

    return-void

    :cond_4
    const-string p0, "ProviderInstaller"

    const-string v1, "Failed to get remote context"

    .line 18
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    const/16 v1, 0x8

    .line 19
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p0

    :cond_5
    const-string v1, "com.google.android.gms.providerinstaller.ProviderInstallerImpl"

    .line 20
    invoke-static {v4, p0, v1}, Lcom/google/android/gms/security/a;->e(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/security/a$a;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/security/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Context must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Listener must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Must be called on the UI thread"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->f(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/security/b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/security/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/security/a$a;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 5
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static bridge synthetic c()Lcom/google/android/gms/common/f;
    .locals 1

    sget-object v0, Lcom/google/android/gms/security/a;->b:Lcom/google/android/gms/common/f;

    return-object v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "ProviderInstaller.lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object p1, Lcom/google/android/gms/security/a;->d:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, p1, v0

    const-string v2, "insertProvider"

    invoke-static {p0, p2, v2, p1}, Lcom/google/android/gms/security/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/google/android/gms/security/a;->d:Ljava/lang/reflect/Method;

    :cond_0
    sget-object p1, Lcom/google/android/gms/security/a;->d:Ljava/lang/reflect/Method;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const/4 p2, 0x6

    const-string v0, "ProviderInstaller"

    .line 4
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 6
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to install provider: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    const/16 p1, 0x8

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p0
.end method
