.class public final Lio/sentry/n1;
.super Ljava/lang/Object;
.source "JsonSerializer.java"

# interfaces
.implements Lio/sentry/u0;


# static fields
.field private static final c:Ljava/nio/charset/Charset;


# instance fields
.field private final a:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/sentry/c1<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/n1;->c:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 2
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/sentry/n1;->b:Ljava/util/Map;

    .line 4
    const-class v0, Lio/sentry/protocol/a;

    new-instance v1, Lio/sentry/protocol/a$a;

    invoke-direct {v1}, Lio/sentry/protocol/a$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v0, Lio/sentry/f;

    new-instance v1, Lio/sentry/f$a;

    invoke-direct {v1}, Lio/sentry/f$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v0, Lio/sentry/protocol/b;

    new-instance v1, Lio/sentry/protocol/b$a;

    invoke-direct {v1}, Lio/sentry/protocol/b$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v0, Lio/sentry/protocol/Contexts;

    new-instance v1, Lio/sentry/protocol/Contexts$a;

    invoke-direct {v1}, Lio/sentry/protocol/Contexts$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v0, Lio/sentry/protocol/DebugImage;

    new-instance v1, Lio/sentry/protocol/DebugImage$a;

    invoke-direct {v1}, Lio/sentry/protocol/DebugImage$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v0, Lio/sentry/protocol/c;

    new-instance v1, Lio/sentry/protocol/c$a;

    invoke-direct {v1}, Lio/sentry/protocol/c$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-class v0, Lio/sentry/protocol/Device;

    new-instance v1, Lio/sentry/protocol/Device$a;

    invoke-direct {v1}, Lio/sentry/protocol/Device$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class v0, Lio/sentry/protocol/Device$DeviceOrientation;

    new-instance v1, Lio/sentry/protocol/Device$DeviceOrientation$a;

    invoke-direct {v1}, Lio/sentry/protocol/Device$DeviceOrientation$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v0, Lio/sentry/protocol/d;

    new-instance v1, Lio/sentry/protocol/d$a;

    invoke-direct {v1}, Lio/sentry/protocol/d$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-class v0, Lio/sentry/protocol/e;

    new-instance v1, Lio/sentry/protocol/e$a;

    invoke-direct {v1}, Lio/sentry/protocol/e$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v0, Lio/sentry/protocol/f;

    new-instance v1, Lio/sentry/protocol/f$a;

    invoke-direct {v1}, Lio/sentry/protocol/f$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-class v0, Lio/sentry/protocol/g;

    new-instance v1, Lio/sentry/protocol/g$a;

    invoke-direct {v1}, Lio/sentry/protocol/g$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-class v0, Lio/sentry/protocol/h;

    new-instance v1, Lio/sentry/protocol/h$a;

    invoke-direct {v1}, Lio/sentry/protocol/h$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-class v0, Lio/sentry/m2;

    new-instance v1, Lio/sentry/m2$b;

    invoke-direct {v1}, Lio/sentry/m2$b;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-class v0, Lio/sentry/n2;

    new-instance v1, Lio/sentry/n2$a;

    invoke-direct {v1}, Lio/sentry/n2$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-class v0, Lio/sentry/profilemeasurements/a;

    new-instance v1, Lio/sentry/profilemeasurements/a$a;

    invoke-direct {v1}, Lio/sentry/profilemeasurements/a$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-class v0, Lio/sentry/profilemeasurements/b;

    new-instance v1, Lio/sentry/profilemeasurements/b$a;

    invoke-direct {v1}, Lio/sentry/profilemeasurements/b$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-class v0, Lio/sentry/protocol/i;

    new-instance v1, Lio/sentry/protocol/i$a;

    invoke-direct {v1}, Lio/sentry/protocol/i$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-class v0, Lio/sentry/protocol/k;

    new-instance v1, Lio/sentry/protocol/k$a;

    invoke-direct {v1}, Lio/sentry/protocol/k$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-class v0, Lio/sentry/protocol/l;

    new-instance v1, Lio/sentry/protocol/l$a;

    invoke-direct {v1}, Lio/sentry/protocol/l$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-class v0, Lio/sentry/m3;

    new-instance v1, Lio/sentry/m3$a;

    invoke-direct {v1}, Lio/sentry/m3$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-class v0, Lio/sentry/g4;

    new-instance v1, Lio/sentry/g4$a;

    invoke-direct {v1}, Lio/sentry/g4$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-class v0, Lio/sentry/h4;

    new-instance v1, Lio/sentry/h4$a;

    invoke-direct {v1}, Lio/sentry/h4$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-class v0, Lio/sentry/protocol/m;

    new-instance v1, Lio/sentry/protocol/m$a;

    invoke-direct {v1}, Lio/sentry/protocol/m$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-class v0, Lio/sentry/SentryItemType;

    new-instance v1, Lio/sentry/SentryItemType$a;

    invoke-direct {v1}, Lio/sentry/SentryItemType$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-class v0, Lio/sentry/SentryLevel;

    new-instance v1, Lio/sentry/SentryLevel$a;

    invoke-direct {v1}, Lio/sentry/SentryLevel$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-class v0, Lio/sentry/protocol/o;

    new-instance v1, Lio/sentry/protocol/o$a;

    invoke-direct {v1}, Lio/sentry/protocol/o$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-class v0, Lio/sentry/protocol/p;

    new-instance v1, Lio/sentry/protocol/p$a;

    invoke-direct {v1}, Lio/sentry/protocol/p$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-class v0, Lio/sentry/protocol/q;

    new-instance v1, Lio/sentry/protocol/q$a;

    invoke-direct {v1}, Lio/sentry/protocol/q$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v0, Lio/sentry/protocol/r;

    new-instance v1, Lio/sentry/protocol/r$a;

    invoke-direct {v1}, Lio/sentry/protocol/r$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-class v0, Lio/sentry/protocol/s;

    new-instance v1, Lio/sentry/protocol/s$a;

    invoke-direct {v1}, Lio/sentry/protocol/s$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v0, Lio/sentry/protocol/t;

    new-instance v1, Lio/sentry/protocol/t$a;

    invoke-direct {v1}, Lio/sentry/protocol/t$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v0, Lio/sentry/protocol/u;

    new-instance v1, Lio/sentry/protocol/u$a;

    invoke-direct {v1}, Lio/sentry/protocol/u$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-class v0, Lio/sentry/Session;

    new-instance v1, Lio/sentry/Session$a;

    invoke-direct {v1}, Lio/sentry/Session$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-class v0, Lio/sentry/f5;

    new-instance v1, Lio/sentry/f5$a;

    invoke-direct {v1}, Lio/sentry/f5$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-class v0, Lio/sentry/h5;

    new-instance v1, Lio/sentry/h5$a;

    invoke-direct {v1}, Lio/sentry/h5$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-class v0, Lio/sentry/SpanStatus;

    new-instance v1, Lio/sentry/SpanStatus$a;

    invoke-direct {v1}, Lio/sentry/SpanStatus$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-class v0, Lio/sentry/protocol/w;

    new-instance v1, Lio/sentry/protocol/w$a;

    invoke-direct {v1}, Lio/sentry/protocol/w$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-class v0, Lio/sentry/w5;

    new-instance v1, Lio/sentry/w5$a;

    invoke-direct {v1}, Lio/sentry/w5$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-class v0, Lio/sentry/clientreport/b;

    new-instance v1, Lio/sentry/clientreport/b$a;

    invoke-direct {v1}, Lio/sentry/clientreport/b$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-class v0, Lio/sentry/protocol/y;

    new-instance v1, Lio/sentry/protocol/y$a;

    invoke-direct {v1}, Lio/sentry/protocol/y$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-class v0, Lio/sentry/protocol/x;

    new-instance v1, Lio/sentry/protocol/x$a;

    invoke-direct {v1}, Lio/sentry/protocol/x$a;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private f(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Lio/sentry/k1;

    iget-object v2, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getMaxDepth()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lio/sentry/k1;-><init>(Ljava/io/Writer;I)V

    if-eqz p2, :cond_0

    const-string p2, "\t"

    .line 3
    invoke-virtual {v1, p2}, Lio/sentry/vendor/gson/stream/c;->L(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    invoke-virtual {v1, p2, p1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 5
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/io/Writer;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "The entity is required."

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The Writer object is required."

    .line 2
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {v0, v1}, Lio/sentry/o0;->d(Lio/sentry/SentryLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lio/sentry/n1;->f(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const-string v2, "Serializing object: %s"

    invoke-interface {v3, v1, v2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_0
    new-instance v0, Lio/sentry/k1;

    iget-object v1, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getMaxDepth()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lio/sentry/k1;-><init>(Ljava/io/Writer;I)V

    .line 7
    iget-object v1, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 8
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public b(Lio/sentry/l3;Ljava/io/OutputStream;)V
    .locals 6
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/io/OutputStream;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "The SentryEnvelope object is required."

    .line 1
    invoke-static {p1, v1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "The Stream object is required."

    .line 2
    invoke-static {p2, v1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lio/sentry/n1;->c:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/l3;->d()Lio/sentry/m3;

    move-result-object v1

    new-instance v3, Lio/sentry/k1;

    iget-object v4, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    .line 6
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getMaxDepth()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lio/sentry/k1;-><init>(Ljava/io/Writer;I)V

    iget-object v4, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/sentry/m3;->serialize(Lio/sentry/k1;Lio/sentry/o0;)V

    .line 7
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lio/sentry/l3;->e()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/f4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {v1}, Lio/sentry/f4;->A()[B

    move-result-object v3

    .line 10
    invoke-virtual {v1}, Lio/sentry/f4;->C()Lio/sentry/g4;

    move-result-object v1

    new-instance v4, Lio/sentry/k1;

    iget-object v5, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    .line 11
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getMaxDepth()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lio/sentry/k1;-><init>(Ljava/io/Writer;I)V

    iget-object v5, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lio/sentry/g4;->serialize(Lio/sentry/k1;Lio/sentry/o0;)V

    .line 12
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 14
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 15
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 16
    :try_start_2
    iget-object v3, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    .line 17
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to create envelope item. Dropping it."

    .line 18
    invoke-interface {v3, v4, v5, v1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 20
    throw p1
.end method

.method public c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/io/Reader;
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
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lio/sentry/i1;

    invoke-direct {v1, p1}, Lio/sentry/i1;-><init>(Ljava/io/Reader;)V

    .line 2
    iget-object p1, p0, Lio/sentry/n1;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/c1;

    if-eqz p1, :cond_0

    .line 3
    iget-object v2, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lio/sentry/c1;->a(Lio/sentry/i1;Lio/sentry/o0;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error when deserializing"

    invoke-interface {p2, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public d(Ljava/io/InputStream;)Lio/sentry/l3;
    .locals 3
    .param p1    # Ljava/io/InputStream;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "The InputStream object is required."

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/k0;->a(Ljava/io/InputStream;)Lio/sentry/l3;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lio/sentry/n1;->a:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error deserializing envelope."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/sentry/n1;->f(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
