.class public final Lio/sentry/internal/modules/d;
.super Lio/sentry/internal/modules/b;
.source "ResourcesModulesLoader.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final e:Ljava/lang/ClassLoader;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/o0;)V
    .locals 1
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    const-class v0, Lio/sentry/internal/modules/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/internal/modules/d;-><init>(Lio/sentry/o0;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/o0;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lio/sentry/internal/modules/b;-><init>(Lio/sentry/o0;)V

    if-nez p2, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/internal/modules/d;->e:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p2, p0, Lio/sentry/internal/modules/d;->e:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method


# virtual methods
.method protected b()Ljava/util/Map;
    .locals 7
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
    iget-object v2, p0, Lio/sentry/internal/modules/d;->e:Ljava/lang/ClassLoader;

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lio/sentry/internal/modules/b;->a:Lio/sentry/o0;

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "%s file was not found."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p0, v2}, Lio/sentry/internal/modules/b;->c(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    iget-object v2, p0, Lio/sentry/internal/modules/b;->a:Lio/sentry/o0;

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Access to resources denied."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
