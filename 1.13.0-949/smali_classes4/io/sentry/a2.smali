.class final Lio/sentry/a2;
.super Ljava/lang/Object;
.source "NoOpSerializer.java"

# interfaces
.implements Lio/sentry/u0;


# static fields
.field private static final a:Lio/sentry/a2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/a2;

    invoke-direct {v0}, Lio/sentry/a2;-><init>()V

    sput-object v0, Lio/sentry/a2;->a:Lio/sentry/a2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f()Lio/sentry/a2;
    .locals 1

    sget-object v0, Lio/sentry/a2;->a:Lio/sentry/a2;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 0
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

    return-void
.end method

.method public b(Lio/sentry/l3;Ljava/io/OutputStream;)V
    .locals 0
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

    return-void
.end method

.method public c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/io/InputStream;)Lio/sentry/l3;
    .locals 0
    .param p1    # Ljava/io/InputStream;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Ljava/util/Map;)Ljava/lang/String;
    .locals 0
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

    const-string p1, ""

    return-object p1
.end method
