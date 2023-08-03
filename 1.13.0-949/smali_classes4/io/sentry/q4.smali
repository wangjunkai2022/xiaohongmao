.class public final Lio/sentry/q4;
.super Ljava/lang/Object;
.source "SentrySpanStorage.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static volatile b:Lio/sentry/q4;
    .annotation build Lm8/h;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/v0;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/q4;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()Lio/sentry/q4;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    sget-object v0, Lio/sentry/q4;->b:Lio/sentry/q4;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lio/sentry/q4;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/sentry/q4;->b:Lio/sentry/q4;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lio/sentry/q4;

    invoke-direct {v1}, Lio/sentry/q4;-><init>()V

    sput-object v1, Lio/sentry/q4;->b:Lio/sentry/q4;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lio/sentry/q4;->b:Lio/sentry/q4;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/sentry/v0;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/q4;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/v0;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lio/sentry/v0;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/q4;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/v0;

    return-object p1
.end method

.method public d(Ljava/lang/String;Lio/sentry/v0;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/v0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/q4;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
