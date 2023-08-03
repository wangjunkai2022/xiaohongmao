.class public final Lio/sentry/android/core/b1;
.super Ljava/lang/Object;
.source "NdkIntegration.java"

# interfaces
.implements Lio/sentry/z0;
.implements Ljava/io/Closeable;


# static fields
.field public static final c:Ljava/lang/String; = "io.sentry.android.ndk.SentryNdk"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Lio/sentry/android/core/SentryAndroidOptions;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/android/core/b1;->a:Ljava/lang/Class;

    return-void
.end method

.method private b(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setEnableNdk(Z)V

    .line 2
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setEnableScopeSync(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 6
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
    instance-of p1, p2, Lio/sentry/android/core/SentryAndroidOptions;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const-string p1, "SentryAndroidOptions is required"

    .line 3
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 4
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableNdk()Z

    move-result p1

    .line 5
    iget-object p2, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "NdkIntegration enabled: %s"

    invoke-interface {p2, v1, v4, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lio/sentry/android/core/b1;->a:Ljava/lang/Class;

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "No cache dir path is defined in options."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p1}, Lio/sentry/android/core/b1;->b(Lio/sentry/SentryOptions;)V

    return-void

    .line 10
    :cond_1
    :try_start_0
    iget-object p1, p0, Lio/sentry/android/core/b1;->a:Ljava/lang/Class;

    const-string p2, "init"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lio/sentry/android/core/SentryAndroidOptions;

    aput-object v4, v3, v5

    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 11
    iget-object v2, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    aput-object v2, p2, v5

    .line 12
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    const-string p2, "NdkIntegration installed."

    new-array v0, v5, [Ljava/lang/Object;

    invoke-interface {p1, v1, p2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    iget-object p2, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p2}, Lio/sentry/android/core/b1;->b(Lio/sentry/SentryOptions;)V

    .line 15
    iget-object p2, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to initialize SentryNdk."

    invoke-interface {p2, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    iget-object p2, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p2}, Lio/sentry/android/core/b1;->b(Lio/sentry/SentryOptions;)V

    .line 17
    iget-object p2, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 18
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to invoke the SentryNdk.init method."

    .line 19
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p1}, Lio/sentry/android/core/b1;->b(Lio/sentry/SentryOptions;)V

    :goto_1
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
    iget-object v0, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableNdk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/b1;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "close"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "NdkIntegration removed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to close SentryNdk."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to invoke the SentryNdk.close method."

    .line 8
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v0}, Lio/sentry/android/core/b1;->b(Lio/sentry/SentryOptions;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/sentry/android/core/b1;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, v1}, Lio/sentry/android/core/b1;->b(Lio/sentry/SentryOptions;)V

    .line 10
    throw v0

    :cond_0
    :goto_1
    return-void
.end method

.method d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/b1;->a:Ljava/lang/Class;

    return-object v0
.end method
