.class public Lcom/posthog/android/q;
.super Ljava/lang/Object;
.source "PostHogFeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/q$b;
    }
.end annotation


# instance fields
.field private a:Lcom/posthog/android/PostHog;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private final f:Lcom/posthog/android/i;

.field private final g:Lcom/posthog/android/c;


# direct methods
.method private constructor <init>(Lcom/posthog/android/PostHog;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/posthog/android/i;Lcom/posthog/android/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/posthog/android/PostHog;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/posthog/android/i;",
            "Lcom/posthog/android/c;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/posthog/android/q;->a:Lcom/posthog/android/PostHog;

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/posthog/android/q;->b:Ljava/util/Map;

    const/4 p1, 0x0

    if-nez p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/posthog/android/q;->c:Ljava/lang/Boolean;

    if-nez p4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/q;->d:Ljava/lang/Boolean;

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/posthog/android/q;->e:Ljava/lang/Boolean;

    .line 8
    iput-object p5, p0, Lcom/posthog/android/q;->f:Lcom/posthog/android/i;

    .line 9
    iput-object p6, p0, Lcom/posthog/android/q;->g:Lcom/posthog/android/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/posthog/android/PostHog;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/posthog/android/i;Lcom/posthog/android/c;Lcom/posthog/android/q$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/posthog/android/q;-><init>(Lcom/posthog/android/PostHog;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/posthog/android/i;Lcom/posthog/android/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/posthog/android/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/posthog/android/q;->f()V

    return-void
.end method

.method private synthetic f()V
    .locals 2

    const-wide/16 v0, 0x5

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    invoke-virtual {p0}, Lcom/posthog/android/q;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private g(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "featureFlags"

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lcom/posthog/android/q;->a:Lcom/posthog/android/PostHog;

    iget-object v0, v0, Lcom/posthog/android/PostHog;->g:Lcom/posthog/android/m$a;

    invoke-virtual {v0}, Lcom/posthog/android/x$a;->c()Lcom/posthog/android/x;

    move-result-object v0

    check-cast v0, Lcom/posthog/android/m;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/posthog/android/m;->v(Ljava/util/Map;)Lcom/posthog/android/m;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v1, "$enabled_feature_flags"

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/posthog/android/q;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/posthog/android/q;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/posthog/android/p;

    invoke-direct {v1, p0}, Lcom/posthog/android/p;-><init>(Lcom/posthog/android/q;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/posthog/android/q;->c:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method private k(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/q;->d:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build La/g0;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build La/g0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/android/q;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p3, p0, Lcom/posthog/android/q;->f:Lcom/posthog/android/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "getFeatureFlag for key %s failed. Feature flags didn\'t load in time."

    invoke-virtual {p3, v0, p1, v1}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/posthog/android/q;->c()Lcom/posthog/android/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/posthog/android/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p3, :cond_1

    const-string v1, "send_event"

    .line 4
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/posthog/android/q;->b:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/posthog/android/q;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p3, p0, Lcom/posthog/android/q;->a:Lcom/posthog/android/PostHog;

    new-instance v1, Lcom/posthog/android/s;

    invoke-direct {v1}, Lcom/posthog/android/s;-><init>()V

    const-string v2, "$feature_flag"

    .line 7
    invoke-virtual {v1, v2, p1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object p1

    const-string v1, "$feature_flag_response"

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object p1

    const-string v1, "$feature_flag_called"

    .line 9
    invoke-virtual {p3, v1, p1}, Lcom/posthog/android/PostHog;->f(Ljava/lang/String;Lcom/posthog/android/s;)V

    :cond_1
    if-eqz v0, :cond_2

    const-string p1, ""

    if-eq v0, p1, :cond_2

    return-object v0

    :cond_2
    return-object p2
.end method

.method public c()Lcom/posthog/android/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/android/q;->a:Lcom/posthog/android/PostHog;

    iget-object v0, v0, Lcom/posthog/android/PostHog;->g:Lcom/posthog/android/m$a;

    invoke-virtual {v0}, Lcom/posthog/android/x$a;->c()Lcom/posthog/android/x;

    move-result-object v0

    check-cast v0, Lcom/posthog/android/m;

    .line 2
    invoke-virtual {v0}, Lcom/posthog/android/m;->t()Lcom/posthog/android/x;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/posthog/android/q;->c()Lcom/posthog/android/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/posthog/android/x;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build La/g0;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build La/g0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/android/q;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p3, p0, Lcom/posthog/android/q;->f:Lcom/posthog/android/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "isFeatureEnabled for key %s failed. Feature flags didn\'t load in time."

    invoke-virtual {p3, v0, p1, v1}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/android/q;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    return-object p2
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/android/q;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/posthog/android/q;->c:Ljava/lang/Boolean;

    .line 3
    invoke-direct {p0}, Lcom/posthog/android/q;->j()V

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 10

    const-string v0, "utf-8"

    const-string v1, "distinct_id"

    const-string v2, "Error while sending reload feature flags request"

    .line 1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v3}, Lcom/posthog/android/q;->k(Ljava/lang/Boolean;)V

    .line 2
    iget-object v3, p0, Lcom/posthog/android/q;->f:Lcom/posthog/android/i;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, " reloading feature flags."

    invoke-virtual {v3, v6, v5}, Lcom/posthog/android/i;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v3, p0, Lcom/posthog/android/q;->a:Lcom/posthog/android/PostHog;

    iget-object v3, v3, Lcom/posthog/android/PostHog;->f:Lcom/posthog/android/s$a;

    invoke-virtual {v3}, Lcom/posthog/android/x$a;->c()Lcom/posthog/android/x;

    move-result-object v3

    check-cast v3, Lcom/posthog/android/s;

    const/4 v5, 0x0

    .line 4
    :try_start_0
    iget-object v6, p0, Lcom/posthog/android/q;->g:Lcom/posthog/android/c;

    invoke-virtual {v6}, Lcom/posthog/android/c;->d()Lcom/posthog/android/c$c;

    move-result-object v5

    .line 5
    iget-object v6, v5, Lcom/posthog/android/c$c;->a:Ljava/net/HttpURLConnection;

    .line 6
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "token"

    .line 7
    iget-object v9, p0, Lcom/posthog/android/q;->a:Lcom/posthog/android/PostHog;

    iget-object v9, v9, Lcom/posthog/android/PostHog;->o:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v3}, Lcom/posthog/android/s;->w()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v3}, Lcom/posthog/android/s;->w()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 10
    invoke-virtual {v3}, Lcom/posthog/android/s;->t()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "groups"

    .line 11
    invoke-virtual {v3}, Lcom/posthog/android/s;->y()Lcom/posthog/android/x;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$anon_distinct_id"

    .line 12
    invoke-virtual {v3}, Lcom/posthog/android/s;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 16
    array-length v7, v1

    invoke-virtual {v3, v1, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 17
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 18
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 22
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 23
    invoke-direct {p0, v0}, Lcom/posthog/android/q;->g(Ljava/util/HashMap;)V

    .line 24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/posthog/android/q;->e:Ljava/lang/Boolean;

    .line 25
    invoke-direct {p0}, Lcom/posthog/android/q;->j()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/posthog/android/c$d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v5}, Lcom/posthog/android/internal/Utils;->e(Ljava/io/Closeable;)V

    .line 27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/posthog/android/q;->k(Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 28
    :try_start_1
    iget-object v1, p0, Lcom/posthog/android/q;->f:Lcom/posthog/android/i;

    const-string v2, "Error while creating payload"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :goto_1
    invoke-static {v5}, Lcom/posthog/android/internal/Utils;->e(Ljava/io/Closeable;)V

    .line 30
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/posthog/android/q;->k(Ljava/lang/Boolean;)V

    return-void

    :catch_1
    move-exception v0

    .line 31
    :try_start_2
    iget-object v1, p0, Lcom/posthog/android/q;->f:Lcom/posthog/android/i;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 32
    iget-object v1, p0, Lcom/posthog/android/q;->f:Lcom/posthog/android/i;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 33
    iget-object v1, p0, Lcom/posthog/android/q;->f:Lcom/posthog/android/i;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 34
    :goto_2
    invoke-static {v5}, Lcom/posthog/android/internal/Utils;->e(Ljava/io/Closeable;)V

    .line 35
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/posthog/android/q;->k(Ljava/lang/Boolean;)V

    .line 36
    throw v0
.end method
