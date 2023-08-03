.class public final Lio/sentry/d;
.super Ljava/lang/Object;
.source "Baggage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/d$a;
    }
.end annotation

.annotation build Lm8/a$b;
.end annotation


# static fields
.field static final e:Ljava/lang/String; = "UTF-8"
    .annotation build Lm8/g;
    .end annotation
.end field

.field static final f:Ljava/lang/Integer;
    .annotation build Lm8/g;
    .end annotation
.end field

.field static final g:Ljava/lang/Integer;
    .annotation build Lm8/g;
    .end annotation
.end field

.field static final h:Ljava/lang/String; = "sentry-"
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field final b:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Z

.field final d:Lio/sentry/o0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2000

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/sentry/d;->f:Ljava/lang/Integer;

    const/16 v0, 0x40

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/sentry/d;->g:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lio/sentry/o0;)V
    .locals 3
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lio/sentry/d;-><init>(Ljava/util/Map;Ljava/lang/String;ZLio/sentry/o0;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;ZLio/sentry/o0;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lio/sentry/o0;",
            ")V"
        }
    .end annotation

    .annotation build Lm8/a$c;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/sentry/d;->a:Ljava/util/Map;

    .line 4
    iput-object p4, p0, Lio/sentry/d;->d:Lio/sentry/o0;

    .line 5
    iput-boolean p3, p0, Lio/sentry/d;->c:Z

    .line 6
    iput-object p2, p0, Lio/sentry/d;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\+"

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static d(Ljava/lang/String;)Lio/sentry/d;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/i0;->d0()Lio/sentry/i0;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i0;->A()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1, v0}, Lio/sentry/d;->f(Ljava/lang/String;ZLio/sentry/o0;)Lio/sentry/d;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Lio/sentry/o0;)Lio/sentry/d;
    .locals 1
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lio/sentry/d;->f(Ljava/lang/String;ZLio/sentry/o0;)Lio/sentry/d;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;ZLio/sentry/o0;)Lio/sentry/d;
    .locals 16
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ","

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    const/4 v7, 0x0

    const/4 v0, -0x1

    .line 3
    :try_start_0
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 4
    array-length v9, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_0
    if-ge v10, v9, :cond_2

    :try_start_1
    aget-object v12, v8, v10

    .line 5
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v13, "sentry-"

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    const-string v0, "="

    .line 6
    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 7
    invoke-virtual {v12, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 8
    invoke-static {v13}, Lio/sentry/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    .line 9
    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lio/sentry/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-interface {v3, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    :try_start_3
    sget-object v13, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v14, "Unable to decode baggage key value pair %s"

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v12, v15, v7

    invoke-interface {v2, v13, v0, v14, v15}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    const/4 v11, 0x1

    .line 14
    :goto_2
    sget-object v8, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    const-string v1, "Unable to decode baggage header %s"

    invoke-interface {v2, v8, v0, v1, v6}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v6, v11

    .line 15
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    invoke-static {v5, v4}, Lio/sentry/c;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :goto_3
    new-instance v1, Lio/sentry/d;

    invoke-direct {v1, v3, v0, v6, v2}, Lio/sentry/d;-><init>(Ljava/util/Map;Ljava/lang/String;ZLio/sentry/o0;)V

    return-object v1
.end method

.method public static g(Ljava/util/List;)Lio/sentry/d;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/d;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/i0;->d0()Lio/sentry/i0;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/i0;->A()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1, v0}, Lio/sentry/d;->i(Ljava/util/List;ZLio/sentry/o0;)Lio/sentry/d;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/util/List;Lio/sentry/o0;)Lio/sentry/d;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/o0;",
            ")",
            "Lio/sentry/d;"
        }
    .end annotation

    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lio/sentry/d;->i(Ljava/util/List;ZLio/sentry/o0;)Lio/sentry/d;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/List;ZLio/sentry/o0;)Lio/sentry/d;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lio/sentry/o0;",
            ")",
            "Lio/sentry/d;"
        }
    .end annotation

    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, ","

    .line 1
    invoke-static {v0, p0}, Lio/sentry/c;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lio/sentry/d;->f(Ljava/lang/String;ZLio/sentry/o0;)Lio/sentry/d;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-static {p0, p1, p2}, Lio/sentry/d;->f(Ljava/lang/String;ZLio/sentry/o0;)Lio/sentry/d;

    move-result-object p0

    return-object p0
.end method

.method private static p(Lio/sentry/protocol/w;)Ljava/lang/String;
    .locals 1
    .param p0    # Lio/sentry/protocol/w;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/protocol/w;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/protocol/w;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/sentry/protocol/w;->h()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "segment"

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static v(Lio/sentry/protocol/TransactionNameSource;)Z
    .locals 1
    .param p0    # Lio/sentry/protocol/TransactionNameSource;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->URL:Lio/sentry/protocol/TransactionNameSource;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static x(Lio/sentry/o5;)Ljava/lang/Double;
    .locals 0
    .param p0    # Lio/sentry/o5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lio/sentry/o5;->c()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static y(Ljava/lang/Double;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lio/sentry/util/p;->f(Ljava/lang/Double;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 3
    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    const-string v2, "#.################"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const-string v0, "sentry-environment"

    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const-string v0, "sentry-public_key"

    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const-string v0, "sentry-release"

    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const-string v0, "sentry-sample_rate"

    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const-string v0, "sentry-trace_id"

    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const-string v0, "sentry-transaction"

    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const-string v0, "sentry-user_id"

    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const-string v0, "sentry-user_segment"

    invoke-virtual {p0, v0, p1}, Lio/sentry/d;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public I(Lio/sentry/w0;Lio/sentry/protocol/w;Lio/sentry/SentryOptions;Lio/sentry/o5;)V
    .locals 2
    .param p1    # Lio/sentry/w0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/w;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/o5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/sentry/v0;->E()Lio/sentry/f5;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/f5;->j()Lio/sentry/protocol/n;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/d;->E(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/sentry/q;

    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/sentry/q;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/d;->B(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/d;->C(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lio/sentry/d;->A(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p2}, Lio/sentry/d;->p(Lio/sentry/protocol/w;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    invoke-virtual {p0, p2}, Lio/sentry/d;->H(Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lio/sentry/w0;->p()Lio/sentry/protocol/TransactionNameSource;

    move-result-object p2

    invoke-static {p2}, Lio/sentry/d;->v(Lio/sentry/protocol/TransactionNameSource;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-interface {p1}, Lio/sentry/w0;->getName()Ljava/lang/String;

    move-result-object p3

    .line 8
    :cond_1
    invoke-virtual {p0, p3}, Lio/sentry/d;->F(Ljava/lang/String;)V

    .line 9
    invoke-static {p4}, Lio/sentry/d;->x(Lio/sentry/o5;)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lio/sentry/d;->y(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/d;->D(Ljava/lang/String;)V

    return-void
.end method

.method public J(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    .line 4
    invoke-static {p1, v4}, Lio/sentry/util/q;->d(Ljava/lang/String;C)I

    move-result p1

    add-int/2addr p1, v3

    move-object v4, v1

    goto :goto_0

    :cond_0
    const-string p1, ""

    move-object v4, p1

    const/4 p1, 0x0

    .line 5
    :goto_0
    new-instance v5, Ljava/util/TreeSet;

    iget-object v6, p0, Lio/sentry/d;->a:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7
    iget-object v7, p0, Lio/sentry/d;->a:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 8
    sget-object v8, Lio/sentry/d;->g:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    if-lt p1, v9, :cond_2

    .line 9
    iget-object v7, p0, Lio/sentry/d;->d:Lio/sentry/o0;

    sget-object v9, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v2

    aput-object v8, v10, v3

    const-string v6, "Not adding baggage value %s as the total number of list members would exceed the maximum of %s."

    invoke-interface {v7, v9, v6, v10}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    :try_start_0
    invoke-direct {p0, v6}, Lio/sentry/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-direct {p0, v7}, Lio/sentry/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/2addr v11, v9

    .line 15
    sget-object v9, Lio/sentry/d;->f:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v11, v12, :cond_3

    .line 16
    iget-object v8, p0, Lio/sentry/d;->d:Lio/sentry/o0;

    sget-object v11, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v12, "Not adding baggage value %s as the total header value length would exceed the maximum of %s."

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v6, v13, v2

    aput-object v9, v13, v3

    invoke-interface {v8, v11, v12, v13}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 17
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v1

    goto :goto_1

    :catchall_0
    move-exception v8

    .line 18
    iget-object v9, p0, Lio/sentry/d;->d:Lio/sentry/o0;

    sget-object v11, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v2

    aput-object v7, v10, v3

    const-string v6, "Unable to encode baggage key value pair (key=%s,value=%s)."

    invoke-interface {v9, v11, v8, v6, v10}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public K()Lio/sentry/m5;
    .locals 11
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/d;->r()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lio/sentry/d;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 3
    new-instance v10, Lio/sentry/m5;

    new-instance v2, Lio/sentry/protocol/n;

    invoke-direct {v2, v0}, Lio/sentry/protocol/n;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lio/sentry/d;->m()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lio/sentry/d;->k()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lio/sentry/d;->t()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {p0}, Lio/sentry/d;->u()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {p0}, Lio/sentry/d;->s()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {p0}, Lio/sentry/d;->n()Ljava/lang/String;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/sentry/m5;-><init>(Lio/sentry/protocol/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/d;->c:Z

    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lio/sentry/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "sentry-environment"

    invoke-virtual {p0, v0}, Lio/sentry/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "sentry-public_key"

    invoke-virtual {p0, v0}, Lio/sentry/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "sentry-release"

    invoke-virtual {p0, v0}, Lio/sentry/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "sentry-sample_rate"

    invoke-virtual {p0, v0}, Lio/sentry/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/Double;
    .locals 5
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/d;->n()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lio/sentry/util/p;->f(Ljava/lang/Double;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "sentry-trace_id"

    invoke-virtual {p0, v0}, Lio/sentry/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "sentry-transaction"

    invoke-virtual {p0, v0}, Lio/sentry/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "sentry-user_id"

    invoke-virtual {p0, v0}, Lio/sentry/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "sentry-user_segment"

    invoke-virtual {p0, v0}, Lio/sentry/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    iget-boolean v0, p0, Lio/sentry/d;->c:Z

    return v0
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/sentry/d;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
