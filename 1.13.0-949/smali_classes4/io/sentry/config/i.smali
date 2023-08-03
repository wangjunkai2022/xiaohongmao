.class public final Lio/sentry/config/i;
.super Ljava/lang/Object;
.source "PropertiesProviderFactory.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/sentry/config/h;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/l5;

    invoke-direct {v0}, Lio/sentry/l5;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Lio/sentry/config/k;

    invoke-direct {v2}, Lio/sentry/config/k;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lio/sentry/config/d;

    invoke-direct {v2}, Lio/sentry/config/d;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "sentry.properties.file"

    .line 5
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Lio/sentry/config/e;

    invoke-direct {v3, v2, v0}, Lio/sentry/config/e;-><init>(Ljava/lang/String;Lio/sentry/o0;)V

    .line 7
    invoke-virtual {v3}, Lio/sentry/config/e;->a()Ljava/util/Properties;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    new-instance v3, Lio/sentry/config/j;

    invoke-direct {v3, v2}, Lio/sentry/config/j;-><init>(Ljava/util/Properties;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "SENTRY_PROPERTIES_FILE"

    .line 9
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v3, Lio/sentry/config/e;

    invoke-direct {v3, v2, v0}, Lio/sentry/config/e;-><init>(Ljava/lang/String;Lio/sentry/o0;)V

    .line 11
    invoke-virtual {v3}, Lio/sentry/config/e;->a()Ljava/util/Properties;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    new-instance v3, Lio/sentry/config/j;

    invoke-direct {v3, v2}, Lio/sentry/config/j;-><init>(Ljava/util/Properties;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    new-instance v2, Lio/sentry/config/b;

    invoke-direct {v2, v0}, Lio/sentry/config/b;-><init>(Lio/sentry/o0;)V

    invoke-virtual {v2}, Lio/sentry/config/b;->a()Ljava/util/Properties;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 14
    new-instance v3, Lio/sentry/config/j;

    invoke-direct {v3, v2}, Lio/sentry/config/j;-><init>(Ljava/util/Properties;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    new-instance v2, Lio/sentry/config/e;

    const-string v3, "sentry.properties"

    invoke-direct {v2, v3, v0}, Lio/sentry/config/e;-><init>(Ljava/lang/String;Lio/sentry/o0;)V

    .line 16
    invoke-virtual {v2}, Lio/sentry/config/e;->a()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    new-instance v2, Lio/sentry/config/j;

    invoke-direct {v2, v0}, Lio/sentry/config/j;-><init>(Ljava/util/Properties;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_3
    new-instance v0, Lio/sentry/config/c;

    invoke-direct {v0, v1}, Lio/sentry/config/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method
