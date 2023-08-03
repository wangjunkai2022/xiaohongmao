.class public final Lio/sentry/android/core/internal/modules/a;
.super Lio/sentry/internal/modules/b;
.source "AssetsModulesLoader.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final e:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/o0;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Lio/sentry/internal/modules/b;-><init>(Lio/sentry/o0;)V

    .line 2
    iput-object p1, p0, Lio/sentry/android/core/internal/modules/a;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected b()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "sentry-external-modules.txt"

    .line 1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 2
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/internal/modules/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v2}, Lio/sentry/internal/modules/b;->c(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    iget-object v2, p0, Lio/sentry/internal/modules/b;->a:Lio/sentry/o0;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error extracting modules."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :catch_1
    iget-object v2, p0, Lio/sentry/internal/modules/b;->a:Lio/sentry/o0;

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v0, "%s file was not found."

    invoke-interface {v2, v3, v0, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method
