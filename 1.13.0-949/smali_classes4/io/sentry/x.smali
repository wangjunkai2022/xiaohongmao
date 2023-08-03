.class public final Lio/sentry/x;
.super Lio/sentry/p;
.source "EnvelopeSender.java"

# interfaces
.implements Lio/sentry/l0;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final c:Lio/sentry/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lio/sentry/u0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lio/sentry/o0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/n0;Lio/sentry/u0;Lio/sentry/o0;J)V
    .locals 0
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p3, p4, p5}, Lio/sentry/p;-><init>(Lio/sentry/o0;J)V

    const-string p4, "Hub is required."

    .line 2
    invoke-static {p1, p4}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/n0;

    iput-object p1, p0, Lio/sentry/x;->c:Lio/sentry/n0;

    const-string p1, "Serializer is required."

    .line 3
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/u0;

    iput-object p1, p0, Lio/sentry/x;->d:Lio/sentry/u0;

    const-string p1, "Logger is required."

    .line 4
    invoke-static {p3, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/o0;

    iput-object p1, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    return-void
.end method

.method public static synthetic g(Lio/sentry/x;Ljava/lang/Throwable;Ljava/io/File;Lio/sentry/hints/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/x;->k(Ljava/lang/Throwable;Ljava/io/File;Lio/sentry/hints/h;)V

    return-void
.end method

.method public static synthetic h(Lio/sentry/x;Lio/sentry/hints/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/x;->j(Lio/sentry/hints/f;)V

    return-void
.end method

.method public static synthetic i(Lio/sentry/x;Ljava/io/File;Lio/sentry/hints/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/x;->l(Ljava/io/File;Lio/sentry/hints/h;)V

    return-void
.end method

.method private synthetic j(Lio/sentry/hints/f;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/hints/f;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Timed out waiting for envelope submission."

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic k(Ljava/lang/Throwable;Ljava/io/File;Lio/sentry/hints/h;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-interface {p3, v0}, Lio/sentry/hints/h;->c(Z)V

    .line 2
    iget-object p3, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    const-string p2, "File \'%s\' won\'t retry."

    invoke-interface {p3, v1, p1, p2, v2}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic l(Ljava/io/File;Lio/sentry/hints/h;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lio/sentry/hints/h;->a()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string p2, "after trying to capture it"

    .line 2
    invoke-direct {p0, p1, p2}, Lio/sentry/x;->m(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Deleted file %s."

    invoke-interface {p2, v2, p1, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "File not deleted since retry was marked. %s."

    .line 6
    invoke-interface {p2, v2, p1, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private m(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/io/File;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "Failed to delete \'%s\' %s"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2
    iget-object v4, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v6, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object p2, v6, v1

    .line 4
    invoke-interface {v4, v5, v0, v6}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 5
    iget-object v5, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 7
    invoke-interface {v5, v6, v4, v0, v3}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
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

    invoke-virtual {p0, v0, p2}, Lio/sentry/x;->f(Ljava/io/File;Lio/sentry/b0;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, ".envelope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

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
    .locals 9
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

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 2
    iget-object p2, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "\'%s\' is not a file."

    invoke-interface {p2, v0, p1, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/sentry/x;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object p2, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "File \'%s\' doesn\'t match extension expected."

    .line 6
    invoke-interface {p2, v0, p1, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    iget-object p2, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v3, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "File \'%s\' cannot be deleted so it will not be processed."

    .line 10
    invoke-interface {p2, v0, p1, v1}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    :try_start_1
    iget-object v4, p0, Lio/sentry/x;->d:Lio/sentry/u0;

    invoke-interface {v4, v1}, Lio/sentry/u0;->d(Ljava/io/InputStream;)Lio/sentry/l3;

    move-result-object v4

    if-nez v4, :cond_3

    .line 13
    iget-object v4, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Failed to deserialize cached envelope %s"

    new-array v7, v3, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 15
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v5, p0, Lio/sentry/x;->c:Lio/sentry/n0;

    invoke-interface {v5, v4, p2}, Lio/sentry/n0;->o(Lio/sentry/l3;Lio/sentry/b0;)Lio/sentry/protocol/n;

    .line 17
    :goto_0
    const-class v4, Lio/sentry/hints/f;

    iget-object v5, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    new-instance v6, Lio/sentry/u;

    invoke-direct {v6, p0}, Lio/sentry/u;-><init>(Lio/sentry/x;)V

    invoke-static {p2, v4, v5, v6}, Lio/sentry/util/h;->p(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/o0;Lio/sentry/util/h$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    iget-object v1, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    new-instance v2, Lio/sentry/v;

    invoke-direct {v2, p0, p1}, Lio/sentry/v;-><init>(Lio/sentry/x;Ljava/io/File;)V

    goto :goto_2

    :catchall_0
    move-exception v4

    .line 20
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 21
    :try_start_5
    iget-object v4, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Failed to capture cached envelope %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 23
    invoke-interface {v4, v5, v1, v6, v3}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v2, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    new-instance v3, Lio/sentry/w;

    invoke-direct {v3, p0, v1, p1}, Lio/sentry/w;-><init>(Lio/sentry/x;Ljava/lang/Throwable;Ljava/io/File;)V

    invoke-static {p2, v0, v2, v3}, Lio/sentry/util/h;->p(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/o0;Lio/sentry/util/h$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 25
    iget-object v1, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    new-instance v2, Lio/sentry/v;

    invoke-direct {v2, p0, p1}, Lio/sentry/v;-><init>(Lio/sentry/x;Ljava/io/File;)V

    goto :goto_2

    :catch_0
    move-exception v1

    .line 26
    :try_start_6
    iget-object v4, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "I/O on file \'%s\' failed."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-interface {v4, v5, v1, v6, v3}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 27
    iget-object v1, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    new-instance v2, Lio/sentry/v;

    invoke-direct {v2, p0, p1}, Lio/sentry/v;-><init>(Lio/sentry/x;Ljava/io/File;)V

    goto :goto_2

    :catch_1
    move-exception v1

    .line 28
    :try_start_7
    iget-object v4, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "File \'%s\' cannot be found."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-interface {v4, v5, v1, v6, v3}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 29
    iget-object v1, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    new-instance v2, Lio/sentry/v;

    invoke-direct {v2, p0, p1}, Lio/sentry/v;-><init>(Lio/sentry/x;Ljava/io/File;)V

    :goto_2
    invoke-static {p2, v0, v1, v2}, Lio/sentry/util/h;->p(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/o0;Lio/sentry/util/h$a;)V

    return-void

    :catchall_3
    move-exception v1

    iget-object v2, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    new-instance v3, Lio/sentry/v;

    invoke-direct {v3, p0, p1}, Lio/sentry/v;-><init>(Lio/sentry/x;Ljava/io/File;)V

    invoke-static {p2, v0, v2, v3}, Lio/sentry/util/h;->p(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/o0;Lio/sentry/util/h$a;)V

    .line 30
    throw v1
.end method
