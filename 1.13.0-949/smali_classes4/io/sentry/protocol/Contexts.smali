.class public final Lio/sentry/protocol/Contexts;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "Contexts.java"

# interfaces
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Contexts$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lio/sentry/m1;"
    }
.end annotation


# static fields
.field private static final a:J = 0x380de2130187123L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/Contexts;)V
    .locals 4
    .param p1    # Lio/sentry/protocol/Contexts;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "app"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lio/sentry/protocol/a;

    if-eqz v2, :cond_1

    .line 6
    new-instance v0, Lio/sentry/protocol/a;

    check-cast v1, Lio/sentry/protocol/a;

    invoke-direct {v0, v1}, Lio/sentry/protocol/a;-><init>(Lio/sentry/protocol/a;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/a;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "browser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lio/sentry/protocol/b;

    if-eqz v2, :cond_2

    .line 8
    new-instance v0, Lio/sentry/protocol/b;

    check-cast v1, Lio/sentry/protocol/b;

    invoke-direct {v0, v1}, Lio/sentry/protocol/b;-><init>(Lio/sentry/protocol/b;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setBrowser(Lio/sentry/protocol/b;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Lio/sentry/protocol/Device;

    if-eqz v2, :cond_3

    .line 10
    new-instance v0, Lio/sentry/protocol/Device;

    check-cast v1, Lio/sentry/protocol/Device;

    invoke-direct {v0, v1}, Lio/sentry/protocol/Device;-><init>(Lio/sentry/protocol/Device;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "os"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v1, Lio/sentry/protocol/h;

    if-eqz v2, :cond_4

    .line 12
    new-instance v0, Lio/sentry/protocol/h;

    check-cast v1, Lio/sentry/protocol/h;

    invoke-direct {v0, v1}, Lio/sentry/protocol/h;-><init>(Lio/sentry/protocol/h;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/h;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "runtime"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v1, Lio/sentry/protocol/p;

    if-eqz v2, :cond_5

    .line 14
    new-instance v0, Lio/sentry/protocol/p;

    check-cast v1, Lio/sentry/protocol/p;

    invoke-direct {v0, v1}, Lio/sentry/protocol/p;-><init>(Lio/sentry/protocol/p;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setRuntime(Lio/sentry/protocol/p;)V

    goto/16 :goto_0

    .line 15
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "gpu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, v1, Lio/sentry/protocol/d;

    if-eqz v2, :cond_6

    .line 16
    new-instance v0, Lio/sentry/protocol/d;

    check-cast v1, Lio/sentry/protocol/d;

    invoke-direct {v0, v1}, Lio/sentry/protocol/d;-><init>(Lio/sentry/protocol/d;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setGpu(Lio/sentry/protocol/d;)V

    goto/16 :goto_0

    .line 17
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "trace"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    instance-of v2, v1, Lio/sentry/f5;

    if-eqz v2, :cond_7

    .line 18
    new-instance v0, Lio/sentry/f5;

    check-cast v1, Lio/sentry/f5;

    invoke-direct {v0, v1}, Lio/sentry/f5;-><init>(Lio/sentry/f5;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/f5;)V

    goto/16 :goto_0

    .line 19
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "response"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    instance-of v2, v1, Lio/sentry/protocol/j;

    if-eqz v2, :cond_8

    .line 20
    new-instance v0, Lio/sentry/protocol/j;

    check-cast v1, Lio/sentry/protocol/j;

    invoke-direct {v0, v1}, Lio/sentry/protocol/j;-><init>(Lio/sentry/protocol/j;)V

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setResponse(Lio/sentry/protocol/j;)V

    goto/16 :goto_0

    .line 21
    :cond_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getApp()Lio/sentry/protocol/a;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    const-class v0, Lio/sentry/protocol/a;

    const-string v1, "app"

    invoke-direct {p0, v1, v0}, Lio/sentry/protocol/Contexts;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/a;

    return-object v0
.end method

.method public getBrowser()Lio/sentry/protocol/b;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    const-class v0, Lio/sentry/protocol/b;

    const-string v1, "browser"

    invoke-direct {p0, v1, v0}, Lio/sentry/protocol/Contexts;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/b;

    return-object v0
.end method

.method public getDevice()Lio/sentry/protocol/Device;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    const-class v0, Lio/sentry/protocol/Device;

    const-string v1, "device"

    invoke-direct {p0, v1, v0}, Lio/sentry/protocol/Contexts;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Device;

    return-object v0
.end method

.method public getGpu()Lio/sentry/protocol/d;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    const-class v0, Lio/sentry/protocol/d;

    const-string v1, "gpu"

    invoke-direct {p0, v1, v0}, Lio/sentry/protocol/Contexts;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/d;

    return-object v0
.end method

.method public getOperatingSystem()Lio/sentry/protocol/h;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    const-class v0, Lio/sentry/protocol/h;

    const-string v1, "os"

    invoke-direct {p0, v1, v0}, Lio/sentry/protocol/Contexts;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/h;

    return-object v0
.end method

.method public getResponse()Lio/sentry/protocol/j;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    const-class v0, Lio/sentry/protocol/j;

    const-string v1, "response"

    invoke-direct {p0, v1, v0}, Lio/sentry/protocol/Contexts;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/j;

    return-object v0
.end method

.method public getRuntime()Lio/sentry/protocol/p;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    const-class v0, Lio/sentry/protocol/p;

    const-string v1, "runtime"

    invoke-direct {p0, v1, v0}, Lio/sentry/protocol/Contexts;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/p;

    return-object v0
.end method

.method public getTrace()Lio/sentry/f5;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    const-class v0, Lio/sentry/f5;

    const-string v1, "trace"

    invoke-direct {p0, v1, v0}, Lio/sentry/protocol/Contexts;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/f5;

    return-object v0
.end method

.method public serialize(Lio/sentry/k1;Lio/sentry/o0;)V
    .locals 3
    .param p1    # Lio/sentry/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->h()Lio/sentry/vendor/gson/stream/c;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->p()Lio/sentry/vendor/gson/stream/c;

    return-void
.end method

.method public setApp(Lio/sentry/protocol/a;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "app"

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBrowser(Lio/sentry/protocol/b;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "browser"

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDevice(Lio/sentry/protocol/Device;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/Device;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "device"

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setGpu(Lio/sentry/protocol/d;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/d;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "gpu"

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOperatingSystem(Lio/sentry/protocol/h;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/h;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "os"

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setResponse(Lio/sentry/protocol/j;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/j;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRuntime(Lio/sentry/protocol/p;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/p;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "runtime"

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTrace(Lio/sentry/f5;)V
    .locals 1
    .param p1    # Lio/sentry/f5;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "traceContext is required"

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "trace"

    .line 2
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
