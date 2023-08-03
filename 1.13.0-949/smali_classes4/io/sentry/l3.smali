.class public final Lio/sentry/l3;
.super Ljava/lang/Object;
.source "SentryEnvelope.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/m3;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lio/sentry/f4;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/m3;Ljava/lang/Iterable;)V
    .locals 1
    .param p1    # Lio/sentry/m3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/m3;",
            "Ljava/lang/Iterable<",
            "Lio/sentry/f4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SentryEnvelopeHeader is required."

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/m3;

    iput-object p1, p0, Lio/sentry/l3;->a:Lio/sentry/m3;

    const-string p1, "SentryEnvelope items are required."

    .line 3
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iput-object p1, p0, Lio/sentry/l3;->b:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;Lio/sentry/f4;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/l;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/f4;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SentryEnvelopeItem is required."

    .line 8
    invoke-static {p3, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lio/sentry/m3;

    invoke-direct {v0, p1, p2}, Lio/sentry/m3;-><init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;)V

    iput-object v0, p0, Lio/sentry/l3;->a:Lio/sentry/m3;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iput-object p1, p0, Lio/sentry/l3;->b:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;Ljava/lang/Iterable;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/l;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Iterable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/n;",
            "Lio/sentry/protocol/l;",
            "Ljava/lang/Iterable<",
            "Lio/sentry/f4;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lio/sentry/m3;

    invoke-direct {v0, p1, p2}, Lio/sentry/m3;-><init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;)V

    iput-object v0, p0, Lio/sentry/l3;->a:Lio/sentry/m3;

    const-string p1, "SentryEnvelope items are required."

    .line 6
    invoke-static {p3, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iput-object p1, p0, Lio/sentry/l3;->b:Ljava/lang/Iterable;

    return-void
.end method

.method public static a(Lio/sentry/u0;Lio/sentry/m2;JLio/sentry/protocol/l;)Lio/sentry/l3;
    .locals 3
    .param p0    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/m2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/protocol/l;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/SentryEnvelopeException;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "Serializer is required."

    .line 1
    invoke-static {p0, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Profiling trace data is required."

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/sentry/l3;

    new-instance v1, Lio/sentry/protocol/n;

    .line 4
    invoke-virtual {p1}, Lio/sentry/m2;->P()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/protocol/n;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p1, p2, p3, p0}, Lio/sentry/f4;->w(Lio/sentry/m2;JLio/sentry/u0;)Lio/sentry/f4;

    move-result-object p0

    invoke-direct {v0, v1, p4, p0}, Lio/sentry/l3;-><init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;Lio/sentry/f4;)V

    return-object v0
.end method

.method public static b(Lio/sentry/u0;Lio/sentry/e3;Lio/sentry/protocol/l;)Lio/sentry/l3;
    .locals 2
    .param p0    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/e3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/l;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "Serializer is required."

    .line 1
    invoke-static {p0, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item is required."

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/sentry/l3;

    .line 4
    invoke-virtual {p1}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v1

    invoke-static {p0, p1}, Lio/sentry/f4;->v(Lio/sentry/u0;Lio/sentry/e3;)Lio/sentry/f4;

    move-result-object p0

    invoke-direct {v0, v1, p2, p0}, Lio/sentry/l3;-><init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;Lio/sentry/f4;)V

    return-object v0
.end method

.method public static c(Lio/sentry/u0;Lio/sentry/Session;Lio/sentry/protocol/l;)Lio/sentry/l3;
    .locals 1
    .param p0    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/Session;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/l;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "Serializer is required."

    .line 1
    invoke-static {p0, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "session is required."

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/sentry/l3;

    .line 4
    invoke-static {p0, p1}, Lio/sentry/f4;->x(Lio/sentry/u0;Lio/sentry/Session;)Lio/sentry/f4;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, p2, p0}, Lio/sentry/l3;-><init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;Lio/sentry/f4;)V

    return-object v0
.end method


# virtual methods
.method public d()Lio/sentry/m3;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/l3;->a:Lio/sentry/m3;

    return-object v0
.end method

.method public e()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lio/sentry/f4;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/l3;->b:Ljava/lang/Iterable;

    return-object v0
.end method
