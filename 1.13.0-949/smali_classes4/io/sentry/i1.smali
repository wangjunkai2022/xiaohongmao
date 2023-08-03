.class public final Lio/sentry/i1;
.super Lio/sentry/vendor/gson/stream/a;
.source "JsonObjectReader.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/vendor/gson/stream/a;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public A0()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->K()V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->H()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public B0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/util/Map;
    .locals 4
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/c1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/o0;",
            "Lio/sentry/c1<",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->K()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->b()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {p2, p0, p1}, Lio/sentry/c1;->a(Lio/sentry/i1;Lio/sentry/o0;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to deserialize object in map."

    invoke-interface {p1, v2, v3, v1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    .line 9
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->p()V

    return-object v0
.end method

.method public C0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance v0, Lio/sentry/h1;

    invoke-direct {v0}, Lio/sentry/h1;-><init>()V

    invoke-virtual {v0, p0}, Lio/sentry/h1;->c(Lio/sentry/i1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public D0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/c1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/o0;",
            "Lio/sentry/c1<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->K()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p2, p0, p1}, Lio/sentry/c1;->a(Lio/sentry/i1;Lio/sentry/o0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public E0()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->K()V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F0(Lio/sentry/o0;)Ljava/util/TimeZone;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->K()V

    return-object v2

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error when deserializing TimeZone"

    invoke-interface {p1, v1, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public G0(Lio/sentry/o0;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/o0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/i1;->C0()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string p3, "Error deserializing unknown key: %s"

    invoke-interface {p1, v0, p2, p3, v1}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public t0()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->K()V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->D()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public u0(Lio/sentry/o0;)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->K()V

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->M()Ljava/lang/String;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-static {v0}, Lio/sentry/k;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 5
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Error when deserializing UTC timestamp format, it might be millis timestamp format."

    invoke-interface {p1, v3, v4, v1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :try_start_1
    invoke-static {v0}, Lio/sentry/k;->f(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    .line 7
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error when deserializing millis timestamp format."

    invoke-interface {p1, v1, v3, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public v0()Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->K()V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->E()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public w0()Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->E()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public x0()Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->K()V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/sentry/i1;->w0()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public y0()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->K()V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->G()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public z0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/util/List;
    .locals 4
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/c1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/o0;",
            "Lio/sentry/c1<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->K()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->a()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_1
    :try_start_0
    invoke-interface {p2, p0, p1}, Lio/sentry/c1;->a(Lio/sentry/i1;Lio/sentry/o0;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to deserialize object in list."

    invoke-interface {p1, v2, v3, v1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    .line 8
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/a;->k()V

    return-object v0
.end method
