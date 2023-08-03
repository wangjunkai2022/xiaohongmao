.class public final Lio/sentry/f4;
.super Ljava/lang/Object;
.source "SentryEnvelopeItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/f4$a;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final d:Ljava/nio/charset/Charset;


# instance fields
.field private final a:Lio/sentry/g4;

.field private final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "[B>;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:[B
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/f4;->d:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lio/sentry/g4;Ljava/util/concurrent/Callable;)V
    .locals 1
    .param p1    # Lio/sentry/g4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/g4;",
            "Ljava/util/concurrent/Callable<",
            "[B>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SentryEnvelopeItemHeader is required."

    .line 6
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/g4;

    iput-object p1, p0, Lio/sentry/f4;->a:Lio/sentry/g4;

    const-string p1, "DataFactory is required."

    .line 7
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lio/sentry/f4;->b:Ljava/util/concurrent/Callable;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lio/sentry/f4;->c:[B

    return-void
.end method

.method constructor <init>(Lio/sentry/g4;[B)V
    .locals 1
    .param p1    # Lio/sentry/g4;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SentryEnvelopeItemHeader is required."

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/g4;

    iput-object p1, p0, Lio/sentry/f4;->a:Lio/sentry/g4;

    .line 3
    iput-object p2, p0, Lio/sentry/f4;->c:[B

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/sentry/f4;->b:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private static synthetic E(Lio/sentry/f4$a;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/sentry/f4$a;->a()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic F(Lio/sentry/f4$a;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/sentry/f4$a;->a()[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic G(Lio/sentry/b;JLio/sentry/u0;Lio/sentry/o0;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/b;->d()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/b;->d()[B

    move-result-object p3

    .line 3
    array-length p4, p3

    int-to-long v0, p4

    invoke-virtual {p0}, Lio/sentry/b;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p2, p0}, Lio/sentry/f4;->s(JJLjava/lang/String;)V

    return-object p3

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/sentry/b;->h()Lio/sentry/m1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/sentry/b;->h()Lio/sentry/m1;

    move-result-object v0

    .line 6
    invoke-static {p3, p4, v0}, Lio/sentry/util/j;->b(Lio/sentry/u0;Lio/sentry/o0;Lio/sentry/m1;)[B

    move-result-object p3

    if-eqz p3, :cond_2

    .line 7
    array-length p4, p3

    int-to-long v0, p4

    .line 8
    invoke-virtual {p0}, Lio/sentry/b;->f()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {v0, v1, p1, p2, p0}, Lio/sentry/f4;->s(JJLjava/lang/String;)V

    return-object p3

    .line 10
    :cond_1
    invoke-virtual {p0}, Lio/sentry/b;->g()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 11
    invoke-virtual {p0}, Lio/sentry/b;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lio/sentry/f4;->W(Ljava/lang/String;J)[B

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    new-instance p1, Lio/sentry/exception/SentryEnvelopeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 13
    invoke-virtual {p0}, Lio/sentry/b;->f()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, p3

    const-string p0, "Couldn\'t attach the attachment %s.\nPlease check that either bytes, serializable or a path is set."

    .line 14
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static synthetic H(Lio/sentry/u0;Lio/sentry/clientreport/b;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/f4;->d:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/u0;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static synthetic I(Lio/sentry/f4$a;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/sentry/f4$a;->a()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic J(Lio/sentry/f4$a;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/sentry/f4$a;->a()[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic K(Lio/sentry/u0;Lio/sentry/e3;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/f4;->d:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/u0;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static synthetic L(Lio/sentry/f4$a;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/sentry/f4$a;->a()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic M(Lio/sentry/f4$a;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/sentry/f4$a;->a()[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic N(Ljava/io/File;JLio/sentry/m2;Lio/sentry/u0;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/sentry/f4;->W(Ljava/lang/String;J)[B

    move-result-object p1

    const/4 p2, 0x3

    .line 3
    invoke-static {p1, p2}, Lio/sentry/vendor/a;->f([BI)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p3, p1}, Lio/sentry/m2;->r0(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Lio/sentry/m2;->b0()V

    .line 7
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 8
    :try_start_1
    new-instance p2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/f4;->d:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    :try_start_2
    invoke-interface {p4, p3, p2}, Lio/sentry/u0;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 10
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p3

    :catchall_0
    move-exception p3

    .line 13
    :try_start_5
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_7
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    :try_start_9
    new-instance p2, Lio/sentry/exception/SentryEnvelopeException;

    const-string p3, "Failed to serialize profiling trace data\n%s"

    new-array p4, v2, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 16
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 17
    throw p1

    .line 18
    :cond_0
    new-instance p0, Lio/sentry/exception/SentryEnvelopeException;

    const-string p1, "Profiling trace file is empty"

    invoke-direct {p0, p1}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_1
    new-instance p1, Lio/sentry/exception/SentryEnvelopeException;

    new-array p2, v2, [Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "Dropping profiling trace data, because the file \'%s\' doesn\'t exists"

    .line 21
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static synthetic O(Lio/sentry/f4$a;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/sentry/f4$a;->a()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic P(Lio/sentry/f4$a;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/sentry/f4$a;->a()[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic Q(Lio/sentry/u0;Lio/sentry/Session;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/f4;->d:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/u0;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static synthetic R(Lio/sentry/f4$a;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/sentry/f4$a;->a()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic S(Lio/sentry/f4$a;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/sentry/f4$a;->a()[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic T(Lio/sentry/u0;Lio/sentry/w5;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lio/sentry/f4;->d:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-interface {p0, p1, v1}, Lio/sentry/u0;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static synthetic U(Lio/sentry/f4$a;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/sentry/f4$a;->a()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic V(Lio/sentry/f4$a;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/sentry/f4$a;->a()[B

    move-result-object p0

    return-object p0
.end method

.method private static W(Ljava/lang/String;J)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-gtz v6, :cond_1

    .line 5
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 7
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v4, 0x400

    :try_start_3
    new-array v4, v4, [B

    .line 8
    :goto_0
    invoke-virtual {p2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 9
    invoke-virtual {v3, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v4

    :catchall_0
    move-exception v4

    .line 12
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_8
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_9
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-virtual {v3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p2

    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    :try_start_c
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2

    .line 13
    :cond_1
    new-instance v4, Lio/sentry/exception/SentryEnvelopeException;

    const-string v5, "Dropping item, because its size located at \'%s\' with %d bytes is bigger than the maximum allowed size of %d bytes."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v2

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v0

    .line 15
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 16
    :cond_2
    new-instance p1, Lio/sentry/exception/SentryEnvelopeException;

    const-string p2, "Reading the item %s failed, because can\'t read the file."

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v2

    .line 17
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Lio/sentry/exception/SentryEnvelopeException;

    const-string p2, "Reading the item %s failed, because the file located at the path is not a file."

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v2

    .line 19
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 20
    :goto_4
    new-instance p2, Lio/sentry/exception/SentryEnvelopeException;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Reading the item %s failed.\n%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic a(Lio/sentry/f4$a;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lio/sentry/f4;->I(Lio/sentry/f4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/io/File;JLio/sentry/m2;Lio/sentry/u0;)[B
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/sentry/f4;->N(Ljava/io/File;JLio/sentry/m2;Lio/sentry/u0;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lio/sentry/f4$a;)[B
    .locals 0

    invoke-static {p0}, Lio/sentry/f4;->P(Lio/sentry/f4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lio/sentry/f4$a;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lio/sentry/f4;->E(Lio/sentry/f4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lio/sentry/u0;Lio/sentry/e3;)[B
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/f4;->K(Lio/sentry/u0;Lio/sentry/e3;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lio/sentry/f4$a;)[B
    .locals 0

    invoke-static {p0}, Lio/sentry/f4;->J(Lio/sentry/f4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lio/sentry/f4$a;)[B
    .locals 0

    invoke-static {p0}, Lio/sentry/f4;->F(Lio/sentry/f4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lio/sentry/u0;Lio/sentry/clientreport/b;)[B
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/f4;->H(Lio/sentry/u0;Lio/sentry/clientreport/b;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lio/sentry/f4$a;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lio/sentry/f4;->O(Lio/sentry/f4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lio/sentry/u0;Lio/sentry/w5;)[B
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/f4;->T(Lio/sentry/u0;Lio/sentry/w5;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lio/sentry/f4$a;)[B
    .locals 0

    invoke-static {p0}, Lio/sentry/f4;->V(Lio/sentry/f4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lio/sentry/f4$a;)[B
    .locals 0

    invoke-static {p0}, Lio/sentry/f4;->M(Lio/sentry/f4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lio/sentry/f4$a;)[B
    .locals 0

    invoke-static {p0}, Lio/sentry/f4;->S(Lio/sentry/f4$a;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lio/sentry/f4$a;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lio/sentry/f4;->L(Lio/sentry/f4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lio/sentry/b;JLio/sentry/u0;Lio/sentry/o0;)[B
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/sentry/f4;->G(Lio/sentry/b;JLio/sentry/u0;Lio/sentry/o0;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lio/sentry/f4$a;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lio/sentry/f4;->R(Lio/sentry/f4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lio/sentry/u0;Lio/sentry/Session;)[B
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/f4;->Q(Lio/sentry/u0;Lio/sentry/Session;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lio/sentry/f4$a;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lio/sentry/f4;->U(Lio/sentry/f4$a;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static s(JJLjava/lang/String;)V
    .locals 3
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lio/sentry/exception/SentryEnvelopeException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, p4

    const/4 p0, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "Dropping attachment with filename \'%s\', because the size of the passed bytes with %d bytes is bigger than the maximum allowed attachment size of %d bytes."

    .line 3
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/sentry/exception/SentryEnvelopeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static t(Lio/sentry/u0;Lio/sentry/o0;Lio/sentry/b;J)Lio/sentry/f4;
    .locals 8
    .param p0    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/sentry/f4$a;

    new-instance v7, Lio/sentry/n3;

    move-object v1, v7

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/sentry/n3;-><init>(Lio/sentry/b;JLio/sentry/u0;Lio/sentry/o0;)V

    invoke-direct {v0, v7}, Lio/sentry/f4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    new-instance p0, Lio/sentry/g4;

    sget-object v2, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    new-instance v3, Lio/sentry/c4;

    invoke-direct {v3, v0}, Lio/sentry/c4;-><init>(Lio/sentry/f4$a;)V

    .line 3
    invoke-virtual {p2}, Lio/sentry/b;->e()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p2}, Lio/sentry/b;->f()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {p2}, Lio/sentry/b;->c()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/sentry/g4;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lio/sentry/f4;

    new-instance p2, Lio/sentry/e4;

    invoke-direct {p2, v0}, Lio/sentry/e4;-><init>(Lio/sentry/f4$a;)V

    invoke-direct {p1, p0, p2}, Lio/sentry/f4;-><init>(Lio/sentry/g4;Ljava/util/concurrent/Callable;)V

    return-object p1
.end method

.method public static u(Lio/sentry/u0;Lio/sentry/clientreport/b;)Lio/sentry/f4;
    .locals 4
    .param p0    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/clientreport/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "ISerializer is required."

    .line 1
    invoke-static {p0, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ClientReport is required."

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/sentry/f4$a;

    new-instance v1, Lio/sentry/z3;

    invoke-direct {v1, p0, p1}, Lio/sentry/z3;-><init>(Lio/sentry/u0;Lio/sentry/clientreport/b;)V

    invoke-direct {v0, v1}, Lio/sentry/f4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    new-instance p0, Lio/sentry/g4;

    .line 5
    invoke-static {p1}, Lio/sentry/SentryItemType;->resolve(Ljava/lang/Object;)Lio/sentry/SentryItemType;

    move-result-object p1

    new-instance v1, Lio/sentry/a4;

    invoke-direct {v1, v0}, Lio/sentry/a4;-><init>(Lio/sentry/f4$a;)V

    const-string v2, "application/json"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lio/sentry/g4;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lio/sentry/f4;

    new-instance v1, Lio/sentry/d4;

    invoke-direct {v1, v0}, Lio/sentry/d4;-><init>(Lio/sentry/f4$a;)V

    invoke-direct {p1, p0, v1}, Lio/sentry/f4;-><init>(Lio/sentry/g4;Ljava/util/concurrent/Callable;)V

    return-object p1
.end method

.method public static v(Lio/sentry/u0;Lio/sentry/e3;)Lio/sentry/f4;
    .locals 4
    .param p0    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "ISerializer is required."

    .line 1
    invoke-static {p0, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "SentryEvent is required."

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/sentry/f4$a;

    new-instance v1, Lio/sentry/w3;

    invoke-direct {v1, p0, p1}, Lio/sentry/w3;-><init>(Lio/sentry/u0;Lio/sentry/e3;)V

    invoke-direct {v0, v1}, Lio/sentry/f4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    new-instance p0, Lio/sentry/g4;

    .line 5
    invoke-static {p1}, Lio/sentry/SentryItemType;->resolve(Ljava/lang/Object;)Lio/sentry/SentryItemType;

    move-result-object p1

    new-instance v1, Lio/sentry/s3;

    invoke-direct {v1, v0}, Lio/sentry/s3;-><init>(Lio/sentry/f4$a;)V

    const-string v2, "application/json"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lio/sentry/g4;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lio/sentry/f4;

    new-instance v1, Lio/sentry/q3;

    invoke-direct {v1, v0}, Lio/sentry/q3;-><init>(Lio/sentry/f4$a;)V

    invoke-direct {p1, p0, v1}, Lio/sentry/f4;-><init>(Lio/sentry/g4;Ljava/util/concurrent/Callable;)V

    return-object p1
.end method

.method public static w(Lio/sentry/m2;JLio/sentry/u0;)Lio/sentry/f4;
    .locals 9
    .param p0    # Lio/sentry/m2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/m2;->S()Ljava/io/File;

    move-result-object v6

    .line 2
    new-instance v7, Lio/sentry/f4$a;

    new-instance v8, Lio/sentry/v3;

    move-object v0, v8

    move-object v1, v6

    move-wide v2, p1

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/sentry/v3;-><init>(Ljava/io/File;JLio/sentry/m2;Lio/sentry/u0;)V

    invoke-direct {v7, v8}, Lio/sentry/f4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    new-instance p0, Lio/sentry/g4;

    sget-object p1, Lio/sentry/SentryItemType;->Profile:Lio/sentry/SentryItemType;

    new-instance p2, Lio/sentry/o3;

    invoke-direct {p2, v7}, Lio/sentry/o3;-><init>(Lio/sentry/f4$a;)V

    .line 4
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "application-json"

    invoke-direct {p0, p1, p2, v0, p3}, Lio/sentry/g4;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lio/sentry/f4;

    new-instance p2, Lio/sentry/b4;

    invoke-direct {p2, v7}, Lio/sentry/b4;-><init>(Lio/sentry/f4$a;)V

    invoke-direct {p1, p0, p2}, Lio/sentry/f4;-><init>(Lio/sentry/g4;Ljava/util/concurrent/Callable;)V

    return-object p1
.end method

.method public static x(Lio/sentry/u0;Lio/sentry/Session;)Lio/sentry/f4;
    .locals 4
    .param p0    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/Session;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "ISerializer is required."

    .line 1
    invoke-static {p0, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Session is required."

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/sentry/f4$a;

    new-instance v1, Lio/sentry/x3;

    invoke-direct {v1, p0, p1}, Lio/sentry/x3;-><init>(Lio/sentry/u0;Lio/sentry/Session;)V

    invoke-direct {v0, v1}, Lio/sentry/f4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    new-instance p0, Lio/sentry/g4;

    sget-object p1, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    new-instance v1, Lio/sentry/t3;

    invoke-direct {v1, v0}, Lio/sentry/t3;-><init>(Lio/sentry/f4$a;)V

    const-string v2, "application/json"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lio/sentry/g4;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lio/sentry/f4;

    new-instance v1, Lio/sentry/r3;

    invoke-direct {v1, v0}, Lio/sentry/r3;-><init>(Lio/sentry/f4$a;)V

    invoke-direct {p1, p0, v1}, Lio/sentry/f4;-><init>(Lio/sentry/g4;Ljava/util/concurrent/Callable;)V

    return-object p1
.end method

.method public static y(Lio/sentry/u0;Lio/sentry/w5;)Lio/sentry/f4;
    .locals 4
    .param p0    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/w5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "ISerializer is required."

    .line 1
    invoke-static {p0, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UserFeedback is required."

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/sentry/f4$a;

    new-instance v1, Lio/sentry/y3;

    invoke-direct {v1, p0, p1}, Lio/sentry/y3;-><init>(Lio/sentry/u0;Lio/sentry/w5;)V

    invoke-direct {v0, v1}, Lio/sentry/f4$a;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    new-instance p0, Lio/sentry/g4;

    sget-object p1, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    new-instance v1, Lio/sentry/u3;

    invoke-direct {v1, v0}, Lio/sentry/u3;-><init>(Lio/sentry/f4$a;)V

    const-string v2, "application/json"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lio/sentry/g4;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lio/sentry/f4;

    new-instance v1, Lio/sentry/p3;

    invoke-direct {v1, v0}, Lio/sentry/p3;-><init>(Lio/sentry/f4$a;)V

    invoke-direct {p1, p0, v1}, Lio/sentry/f4;-><init>(Lio/sentry/g4;Ljava/util/concurrent/Callable;)V

    return-object p1
.end method


# virtual methods
.method public A()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/f4;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/f4;->b:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lio/sentry/f4;->c:[B

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/f4;->c:[B

    return-object v0
.end method

.method public B(Lio/sentry/u0;)Lio/sentry/h4;
    .locals 4
    .param p1    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/f4;->a:Lio/sentry/g4;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/sentry/g4;->e()Lio/sentry/SentryItemType;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 3
    invoke-virtual {p0}, Lio/sentry/f4;->A()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v3, Lio/sentry/f4;->d:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    :try_start_0
    const-class v1, Lio/sentry/h4;

    invoke-interface {p1, v0, v1}, Lio/sentry/u0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/h4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public C()Lio/sentry/g4;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/f4;->a:Lio/sentry/g4;

    return-object v0
.end method

.method public D(Lio/sentry/u0;)Lio/sentry/protocol/u;
    .locals 4
    .param p1    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/f4;->a:Lio/sentry/g4;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/sentry/g4;->e()Lio/sentry/SentryItemType;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 3
    invoke-virtual {p0}, Lio/sentry/f4;->A()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v3, Lio/sentry/f4;->d:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    :try_start_0
    const-class v1, Lio/sentry/protocol/u;

    invoke-interface {p1, v0, v1}, Lio/sentry/u0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/protocol/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public z(Lio/sentry/u0;)Lio/sentry/clientreport/b;
    .locals 4
    .param p1    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/f4;->a:Lio/sentry/g4;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/sentry/g4;->e()Lio/sentry/SentryItemType;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryItemType;->ClientReport:Lio/sentry/SentryItemType;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 3
    invoke-virtual {p0}, Lio/sentry/f4;->A()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v3, Lio/sentry/f4;->d:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    :try_start_0
    const-class v1, Lio/sentry/clientreport/b;

    invoke-interface {p1, v0, v1}, Lio/sentry/u0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/clientreport/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
