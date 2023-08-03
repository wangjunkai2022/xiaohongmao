.class public final Lio/sentry/j2;
.super Lio/sentry/p;
.source "OutboxSender.java"

# interfaces
.implements Lio/sentry/l0;


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final g:Ljava/nio/charset/Charset;


# instance fields
.field private final c:Lio/sentry/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lio/sentry/k0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lio/sentry/u0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lio/sentry/o0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/j2;->g:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/n0;Lio/sentry/k0;Lio/sentry/u0;Lio/sentry/o0;J)V
    .locals 0
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/k0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p4, p5, p6}, Lio/sentry/p;-><init>(Lio/sentry/o0;J)V

    const-string p5, "Hub is required."

    .line 2
    invoke-static {p1, p5}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/n0;

    iput-object p1, p0, Lio/sentry/j2;->c:Lio/sentry/n0;

    const-string p1, "Envelope reader is required."

    .line 3
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/k0;

    iput-object p1, p0, Lio/sentry/j2;->d:Lio/sentry/k0;

    const-string p1, "Serializer is required."

    .line 4
    invoke-static {p3, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/u0;

    iput-object p1, p0, Lio/sentry/j2;->e:Lio/sentry/u0;

    const-string p1, "Logger is required."

    .line 5
    invoke-static {p4, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/o0;

    iput-object p1, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    return-void
.end method

.method public static synthetic g(Lio/sentry/j2;Ljava/io/File;Lio/sentry/hints/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/j2;->k(Ljava/io/File;Lio/sentry/hints/h;)V

    return-void
.end method

.method public static synthetic h(Lio/sentry/hints/g;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/j2;->j(Lio/sentry/hints/g;)V

    return-void
.end method

.method private i(Lio/sentry/m5;)Lio/sentry/o5;
    .locals 6
    .param p1    # Lio/sentry/m5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lio/sentry/m5;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 3
    invoke-static {v2, v1}, Lio/sentry/util/p;->f(Ljava/lang/Double;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-object v2, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Invalid sample rate parsed from TraceContext: %s"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v3, Lio/sentry/o5;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v2}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 6
    :catch_0
    iget-object v2, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Unable to parse sample rate from TraceContext: %s"

    invoke-interface {v2, v3, p1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_1
    :goto_0
    new-instance p1, Lio/sentry/o5;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;)V

    return-object p1
.end method

.method private static synthetic j(Lio/sentry/hints/g;)V
    .locals 0

    invoke-interface {p0}, Lio/sentry/hints/g;->reset()V

    return-void
.end method

.method private synthetic k(Ljava/io/File;Lio/sentry/hints/h;)V
    .locals 6

    const-string v0, "Failed to delete: %s"

    .line 1
    invoke-interface {p2}, Lio/sentry/hints/h;->a()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p2

    invoke-interface {v2, v3, v0, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    iget-object v3, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-interface {v3, v4, v2, v0, v1}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private l(Lio/sentry/f4;I)V
    .locals 4
    .param p1    # Lio/sentry/f4;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 3
    invoke-virtual {p1}, Lio/sentry/f4;->C()Lio/sentry/g4;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/g4;->e()Lio/sentry/SentryItemType;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "Item %d of type %s returned null by the parser."

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private m(I)V
    .locals 4

    iget-object v0, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Item %d is being captured."

    invoke-interface {v0, v1, p1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private n(Lio/sentry/protocol/n;)V
    .locals 4
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Timed out waiting for event id submission: %s"

    invoke-interface {v0, v1, p1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private o(Lio/sentry/l3;Lio/sentry/protocol/n;I)V
    .locals 4
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/n;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 3
    invoke-virtual {p1}, Lio/sentry/l3;->d()Lio/sentry/m3;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/m3;->a()Lio/sentry/protocol/n;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v2, p3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const-string p1, "Item %d of has a different event id (%s) to the envelope header (%s)"

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private p(Lio/sentry/l3;Lio/sentry/b0;)V
    .locals 10
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lio/sentry/l3;->e()Ljava/lang/Iterable;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/util/a;->g(Ljava/lang/Iterable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Processing Envelope with %d item(s)"

    .line 3
    invoke-interface {v0, v1, v4, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lio/sentry/l3;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/f4;

    add-int/2addr v1, v2

    .line 5
    invoke-virtual {v3}, Lio/sentry/f4;->C()Lio/sentry/g4;

    move-result-object v4

    if-nez v4, :cond_0

    .line 6
    iget-object v3, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v7, "Item %d has no header"

    invoke-interface {v3, v4, v7, v6}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v4, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    invoke-virtual {v3}, Lio/sentry/f4;->C()Lio/sentry/g4;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/g4;->e()Lio/sentry/SentryItemType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "Item failed to process."

    if-eqz v4, :cond_5

    .line 8
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 9
    invoke-virtual {v3}, Lio/sentry/f4;->A()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v9, Lio/sentry/j2;->g:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    iget-object v7, p0, Lio/sentry/j2;->e:Lio/sentry/u0;

    const-class v8, Lio/sentry/h4;

    invoke-interface {v7, v4, v8}, Lio/sentry/u0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/sentry/h4;

    if-nez v7, :cond_1

    .line 11
    invoke-direct {p0, v3, v1}, Lio/sentry/j2;->l(Lio/sentry/f4;I)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v7}, Lio/sentry/e3;->O()Lio/sentry/protocol/l;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v7}, Lio/sentry/e3;->O()Lio/sentry/protocol/l;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/l;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lio/sentry/util/h;->q(Lio/sentry/b0;Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p1}, Lio/sentry/l3;->d()Lio/sentry/m3;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/m3;->a()Lio/sentry/protocol/n;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {p1}, Lio/sentry/l3;->d()Lio/sentry/m3;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/m3;->a()Lio/sentry/protocol/n;

    move-result-object v3

    invoke-virtual {v7}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v8

    invoke-virtual {v3, v8}, Lio/sentry/protocol/n;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 16
    invoke-virtual {v7}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1}, Lio/sentry/j2;->o(Lio/sentry/l3;Lio/sentry/protocol/n;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    .line 18
    :cond_3
    :try_start_3
    iget-object v3, p0, Lio/sentry/j2;->c:Lio/sentry/n0;

    invoke-interface {v3, v7, p2}, Lio/sentry/n0;->j(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;

    .line 19
    invoke-direct {p0, v1}, Lio/sentry/j2;->m(I)V

    .line 20
    invoke-direct {p0, p2}, Lio/sentry/j2;->q(Lio/sentry/b0;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 21
    invoke-virtual {v7}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/sentry/j2;->n(Lio/sentry/protocol/n;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    :try_start_4
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    goto/16 :goto_6

    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_5

    :catchall_0
    move-exception v3

    .line 23
    :try_start_5
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v3

    .line 24
    iget-object v4, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v4, v7, v6, v3}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 25
    :cond_5
    sget-object v4, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    invoke-virtual {v3}, Lio/sentry/f4;->C()Lio/sentry/g4;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/g4;->e()Lio/sentry/SentryItemType;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 26
    :try_start_7
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 27
    invoke-virtual {v3}, Lio/sentry/f4;->A()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v9, Lio/sentry/j2;->g:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 28
    :try_start_8
    iget-object v7, p0, Lio/sentry/j2;->e:Lio/sentry/u0;

    const-class v8, Lio/sentry/protocol/u;

    .line 29
    invoke-interface {v7, v4, v8}, Lio/sentry/u0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/sentry/protocol/u;

    if-nez v7, :cond_6

    .line 30
    invoke-direct {p0, v3, v1}, Lio/sentry/j2;->l(Lio/sentry/f4;I)V

    goto :goto_3

    .line 31
    :cond_6
    invoke-virtual {p1}, Lio/sentry/l3;->d()Lio/sentry/m3;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/m3;->a()Lio/sentry/protocol/n;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 32
    invoke-virtual {p1}, Lio/sentry/l3;->d()Lio/sentry/m3;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/m3;->a()Lio/sentry/protocol/n;

    move-result-object v3

    invoke-virtual {v7}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v8

    invoke-virtual {v3, v8}, Lio/sentry/protocol/n;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 33
    invoke-virtual {v7}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1}, Lio/sentry/j2;->o(Lio/sentry/l3;Lio/sentry/protocol/n;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 34
    :try_start_9
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/16 :goto_0

    .line 35
    :cond_7
    :try_start_a
    invoke-virtual {p1}, Lio/sentry/l3;->d()Lio/sentry/m3;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/m3;->c()Lio/sentry/m5;

    move-result-object v3

    .line 36
    invoke-virtual {v7}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/f5;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 37
    invoke-virtual {v7}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v8

    .line 38
    invoke-virtual {v8}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/f5;

    move-result-object v8

    .line 39
    invoke-direct {p0, v3}, Lio/sentry/j2;->i(Lio/sentry/m5;)Lio/sentry/o5;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/sentry/f5;->o(Lio/sentry/o5;)V

    .line 40
    :cond_8
    iget-object v8, p0, Lio/sentry/j2;->c:Lio/sentry/n0;

    invoke-interface {v8, v7, v3, p2}, Lio/sentry/n0;->r(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;)Lio/sentry/protocol/n;

    .line 41
    invoke-direct {p0, v1}, Lio/sentry/j2;->m(I)V

    .line 42
    invoke-direct {p0, p2}, Lio/sentry/j2;->q(Lio/sentry/b0;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 43
    invoke-virtual {v7}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/sentry/j2;->n(Lio/sentry/protocol/n;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 44
    :try_start_b
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    goto/16 :goto_6

    :cond_9
    :goto_3
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_3
    move-exception v3

    .line 45
    :try_start_c
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v4

    :try_start_d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v3

    .line 46
    iget-object v4, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v4, v7, v6, v3}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 47
    :cond_a
    new-instance v4, Lio/sentry/l3;

    .line 48
    invoke-virtual {p1}, Lio/sentry/l3;->d()Lio/sentry/m3;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/m3;->a()Lio/sentry/protocol/n;

    move-result-object v6

    invoke-virtual {p1}, Lio/sentry/l3;->d()Lio/sentry/m3;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/m3;->b()Lio/sentry/protocol/l;

    move-result-object v7

    invoke-direct {v4, v6, v7, v3}, Lio/sentry/l3;-><init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;Lio/sentry/f4;)V

    .line 49
    iget-object v6, p0, Lio/sentry/j2;->c:Lio/sentry/n0;

    invoke-interface {v6, v4, p2}, Lio/sentry/n0;->o(Lio/sentry/l3;Lio/sentry/b0;)Lio/sentry/protocol/n;

    .line 50
    iget-object v4, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 51
    invoke-virtual {v3}, Lio/sentry/f4;->C()Lio/sentry/g4;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/g4;->e()Lio/sentry/SentryItemType;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "%s item %d is being captured."

    .line 53
    invoke-interface {v4, v6, v8, v7}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0, p2}, Lio/sentry/j2;->q(Lio/sentry/b0;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 55
    iget-object p1, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v2, [Ljava/lang/Object;

    .line 56
    invoke-virtual {v3}, Lio/sentry/f4;->C()Lio/sentry/g4;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/g4;->e()Lio/sentry/SentryItemType;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Timed out waiting for item type submission: %s"

    .line 57
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 58
    :cond_b
    :goto_5
    invoke-static {p2}, Lio/sentry/util/h;->f(Lio/sentry/b0;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    instance-of v4, v3, Lio/sentry/hints/m;

    if-eqz v4, :cond_c

    .line 60
    check-cast v3, Lio/sentry/hints/m;

    invoke-interface {v3}, Lio/sentry/hints/m;->e()Z

    move-result v3

    if-nez v3, :cond_c

    .line 61
    iget-object p1, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v2, [Ljava/lang/Object;

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Envelope had a failed capture at item %d. No more items will be sent."

    .line 63
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 64
    :cond_c
    const-class v3, Lio/sentry/hints/g;

    sget-object v4, Lio/sentry/i2;->a:Lio/sentry/i2;

    invoke-static {p2, v3, v4}, Lio/sentry/util/h;->n(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;)V

    goto/16 :goto_0

    :cond_d
    :goto_6
    return-void
.end method

.method private q(Lio/sentry/b0;)Z
    .locals 2
    .param p1    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lio/sentry/util/h;->f(Lio/sentry/b0;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lio/sentry/hints/f;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lio/sentry/hints/f;

    invoke-interface {p1}, Lio/sentry/hints/f;->d()Z

    move-result p1

    return p1

    .line 4
    :cond_0
    const-class v0, Lio/sentry/hints/f;

    iget-object v1, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    invoke-static {v0, p1, v1}, Lio/sentry/util/k;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/o0;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lio/sentry/b0;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "Path is required."

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lio/sentry/j2;->f(Ljava/io/File;Lio/sentry/b0;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "session"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "startup_crash"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic e(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lio/sentry/p;->e(Ljava/io/File;)V

    return-void
.end method

.method protected f(Ljava/io/File;Lio/sentry/b0;)V
    .locals 8
    .param p1    # Ljava/io/File;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    const-class v0, Lio/sentry/hints/h;

    const-string v1, "File is required."

    invoke-static {p1, v1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/sentry/j2;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 3
    iget-object p2, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "File \'%s\' should be ignored."

    invoke-interface {p2, v0, p1, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    iget-object v4, p0, Lio/sentry/j2;->d:Lio/sentry/k0;

    invoke-interface {v4, v1}, Lio/sentry/k0;->a(Ljava/io/InputStream;)Lio/sentry/l3;

    move-result-object v4

    if-nez v4, :cond_1

    .line 6
    iget-object v4, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Stream from path %s resulted in a null envelope."

    new-array v3, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 8
    invoke-interface {v4, v5, v6, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0, v4, p2}, Lio/sentry/j2;->p(Lio/sentry/l3;Lio/sentry/b0;)V

    .line 10
    iget-object v4, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "File \'%s\' is done."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    iget-object v1, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    new-instance v2, Lio/sentry/h2;

    invoke-direct {v2, p0, p1}, Lio/sentry/h2;-><init>(Lio/sentry/j2;Ljava/io/File;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 13
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 14
    :try_start_5
    iget-object v2, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error processing envelope."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 15
    iget-object v1, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    new-instance v2, Lio/sentry/h2;

    invoke-direct {v2, p0, p1}, Lio/sentry/h2;-><init>(Lio/sentry/j2;Ljava/io/File;)V

    :goto_2
    invoke-static {p2, v0, v1, v2}, Lio/sentry/util/h;->p(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/o0;Lio/sentry/util/h$a;)V

    return-void

    :goto_3
    iget-object v2, p0, Lio/sentry/j2;->f:Lio/sentry/o0;

    new-instance v3, Lio/sentry/h2;

    invoke-direct {v3, p0, p1}, Lio/sentry/h2;-><init>(Lio/sentry/j2;Ljava/io/File;)V

    invoke-static {p2, v0, v2, v3}, Lio/sentry/util/h;->p(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/o0;Lio/sentry/util/h$a;)V

    .line 16
    throw v1
.end method
