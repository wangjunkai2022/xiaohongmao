.class public final Lio/sentry/j1;
.super Ljava/lang/Object;
.source "JsonObjectSerializer.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "[OBJECT]"


# instance fields
.field public final a:Lio/sentry/l1;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/sentry/l1;

    invoke-direct {v0, p1}, Lio/sentry/l1;-><init>(I)V

    iput-object v0, p0, Lio/sentry/j1;->a:Lio/sentry/l1;

    return-void
.end method

.method private b(Lio/sentry/k1;Lio/sentry/o0;Ljava/util/Collection;)V
    .locals 1
    .param p1    # Lio/sentry/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/k1;",
            "Lio/sentry/o0;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->d()Lio/sentry/vendor/gson/stream/c;

    .line 2
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/j1;->a(Lio/sentry/k1;Lio/sentry/o0;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->k()Lio/sentry/vendor/gson/stream/c;

    return-void
.end method

.method private c(Lio/sentry/k1;Lio/sentry/o0;Ljava/util/Date;)V
    .locals 2
    .param p1    # Lio/sentry/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p3}, Lio/sentry/k;->g(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 2
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error when serializing Date"

    invoke-interface {p2, v0, v1, p3}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->E()Lio/sentry/vendor/gson/stream/c;

    :goto_0
    return-void
.end method

.method private d(Lio/sentry/k1;Lio/sentry/o0;Ljava/util/Map;)V
    .locals 3
    .param p1    # Lio/sentry/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/k1;",
            "Lio/sentry/o0;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->h()Lio/sentry/vendor/gson/stream/c;

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 5
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lio/sentry/j1;->a(Lio/sentry/k1;Lio/sentry/o0;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->p()Lio/sentry/vendor/gson/stream/c;

    return-void
.end method

.method private e(Lio/sentry/k1;Lio/sentry/o0;Ljava/util/TimeZone;)V
    .locals 2
    .param p1    # Lio/sentry/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/TimeZone;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 2
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error when serializing TimeZone"

    invoke-interface {p2, v0, v1, p3}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->E()Lio/sentry/vendor/gson/stream/c;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/k1;Lio/sentry/o0;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lio/sentry/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->E()Lio/sentry/vendor/gson/stream/c;

    goto/16 :goto_0

    .line 2
    :cond_0
    instance-of v0, p3, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 3
    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    goto/16 :goto_0

    .line 4
    :cond_1
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    goto/16 :goto_0

    .line 6
    :cond_2
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 7
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lio/sentry/vendor/gson/stream/c;->n0(Z)Lio/sentry/vendor/gson/stream/c;

    goto/16 :goto_0

    .line 8
    :cond_3
    instance-of v0, p3, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 9
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p1, p3}, Lio/sentry/vendor/gson/stream/c;->h0(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/c;

    goto/16 :goto_0

    .line 10
    :cond_4
    instance-of v0, p3, Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 11
    check-cast p3, Ljava/util/Date;

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/j1;->c(Lio/sentry/k1;Lio/sentry/o0;Ljava/util/Date;)V

    goto/16 :goto_0

    .line 12
    :cond_5
    instance-of v0, p3, Ljava/util/TimeZone;

    if-eqz v0, :cond_6

    .line 13
    check-cast p3, Ljava/util/TimeZone;

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/j1;->e(Lio/sentry/k1;Lio/sentry/o0;Ljava/util/TimeZone;)V

    goto/16 :goto_0

    .line 14
    :cond_6
    instance-of v0, p3, Lio/sentry/m1;

    if-eqz v0, :cond_7

    .line 15
    check-cast p3, Lio/sentry/m1;

    invoke-interface {p3, p1, p2}, Lio/sentry/m1;->serialize(Lio/sentry/k1;Lio/sentry/o0;)V

    goto/16 :goto_0

    .line 16
    :cond_7
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_8

    .line 17
    check-cast p3, Ljava/util/Collection;

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/j1;->b(Lio/sentry/k1;Lio/sentry/o0;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 18
    :cond_8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/j1;->b(Lio/sentry/k1;Lio/sentry/o0;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 20
    :cond_9
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 21
    check-cast p3, Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/j1;->d(Lio/sentry/k1;Lio/sentry/o0;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 22
    :cond_a
    instance-of v0, p3, Ljava/util/Locale;

    if-eqz v0, :cond_b

    .line 23
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    goto/16 :goto_0

    .line 24
    :cond_b
    instance-of v0, p3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eqz v0, :cond_c

    .line 25
    check-cast p3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {p3}, Lio/sentry/util/j;->a(Ljava/util/concurrent/atomic/AtomicIntegerArray;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/j1;->b(Lio/sentry/k1;Lio/sentry/o0;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 26
    :cond_c
    instance-of v0, p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_d

    .line 27
    check-cast p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-virtual {p1, p2}, Lio/sentry/vendor/gson/stream/c;->n0(Z)Lio/sentry/vendor/gson/stream/c;

    goto :goto_0

    .line 28
    :cond_d
    instance-of v0, p3, Ljava/net/URI;

    if-eqz v0, :cond_e

    .line 29
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    goto :goto_0

    .line 30
    :cond_e
    instance-of v0, p3, Ljava/net/InetAddress;

    if-eqz v0, :cond_f

    .line 31
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    goto :goto_0

    .line 32
    :cond_f
    instance-of v0, p3, Ljava/util/UUID;

    if-eqz v0, :cond_10

    .line 33
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    goto :goto_0

    .line 34
    :cond_10
    instance-of v0, p3, Ljava/util/Currency;

    if-eqz v0, :cond_11

    .line 35
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    goto :goto_0

    .line 36
    :cond_11
    instance-of v0, p3, Ljava/util/Calendar;

    if-eqz v0, :cond_12

    .line 37
    check-cast p3, Ljava/util/Calendar;

    invoke-static {p3}, Lio/sentry/util/j;->c(Ljava/util/Calendar;)Ljava/util/Map;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/j1;->d(Lio/sentry/k1;Lio/sentry/o0;Ljava/util/Map;)V

    goto :goto_0

    .line 38
    :cond_12
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 39
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    goto :goto_0

    .line 40
    :cond_13
    :try_start_0
    iget-object v0, p0, Lio/sentry/j1;->a:Lio/sentry/l1;

    invoke-virtual {v0, p3, p2}, Lio/sentry/l1;->d(Ljava/lang/Object;Lio/sentry/o0;)Ljava/lang/Object;

    move-result-object p3

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/j1;->a(Lio/sentry/k1;Lio/sentry/o0;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 42
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed serializing unknown object."

    invoke-interface {p2, v0, v1, p3}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "[OBJECT]"

    .line 43
    invoke-virtual {p1, p2}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    :goto_0
    return-void
.end method
