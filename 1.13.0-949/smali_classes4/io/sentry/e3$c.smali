.class public final Lio/sentry/e3$c;
.super Ljava/lang/Object;
.source "SentryBaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/sentry/e3;Lio/sentry/k1;Lio/sentry/o0;)V
    .locals 2
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/sentry/e3;->a(Lio/sentry/e3;)Lio/sentry/protocol/n;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "event_id"

    .line 2
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->a(Lio/sentry/e3;)Lio/sentry/protocol/n;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    :cond_0
    const-string v0, "contexts"

    .line 3
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->c(Lio/sentry/e3;)Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 4
    invoke-static {p1}, Lio/sentry/e3;->l(Lio/sentry/e3;)Lio/sentry/protocol/l;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "sdk"

    .line 5
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->l(Lio/sentry/e3;)Lio/sentry/protocol/l;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 6
    :cond_1
    invoke-static {p1}, Lio/sentry/e3;->n(Lio/sentry/e3;)Lio/sentry/protocol/i;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "request"

    .line 7
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->n(Lio/sentry/e3;)Lio/sentry/protocol/i;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 8
    :cond_2
    invoke-static {p1}, Lio/sentry/e3;->p(Lio/sentry/e3;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lio/sentry/e3;->p(Lio/sentry/e3;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tags"

    .line 9
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->p(Lio/sentry/e3;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 10
    :cond_3
    invoke-static {p1}, Lio/sentry/e3;->r(Lio/sentry/e3;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "release"

    .line 11
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->r(Lio/sentry/e3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 12
    :cond_4
    invoke-static {p1}, Lio/sentry/e3;->t(Lio/sentry/e3;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "environment"

    .line 13
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->t(Lio/sentry/e3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 14
    :cond_5
    invoke-static {p1}, Lio/sentry/e3;->v(Lio/sentry/e3;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "platform"

    .line 15
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->v(Lio/sentry/e3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 16
    :cond_6
    invoke-static {p1}, Lio/sentry/e3;->x(Lio/sentry/e3;)Lio/sentry/protocol/w;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "user"

    .line 17
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->x(Lio/sentry/e3;)Lio/sentry/protocol/w;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 18
    :cond_7
    invoke-static {p1}, Lio/sentry/e3;->z(Lio/sentry/e3;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "server_name"

    .line 19
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->z(Lio/sentry/e3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 20
    :cond_8
    invoke-static {p1}, Lio/sentry/e3;->d(Lio/sentry/e3;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "dist"

    .line 21
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->d(Lio/sentry/e3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 22
    :cond_9
    invoke-static {p1}, Lio/sentry/e3;->f(Lio/sentry/e3;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lio/sentry/e3;->f(Lio/sentry/e3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "breadcrumbs"

    .line 23
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->f(Lio/sentry/e3;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 24
    :cond_a
    invoke-static {p1}, Lio/sentry/e3;->h(Lio/sentry/e3;)Lio/sentry/protocol/c;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "debug_meta"

    .line 25
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    invoke-static {p1}, Lio/sentry/e3;->h(Lio/sentry/e3;)Lio/sentry/protocol/c;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 26
    :cond_b
    invoke-static {p1}, Lio/sentry/e3;->j(Lio/sentry/e3;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lio/sentry/e3;->j(Lio/sentry/e3;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "extra"

    .line 27
    invoke-virtual {p2, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object p2

    invoke-static {p1}, Lio/sentry/e3;->j(Lio/sentry/e3;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    :cond_c
    return-void
.end method
