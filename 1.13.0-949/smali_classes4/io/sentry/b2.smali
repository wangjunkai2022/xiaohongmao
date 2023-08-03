.class public final Lio/sentry/b2;
.super Ljava/lang/Object;
.source "NoOpSpan.java"

# interfaces
.implements Lio/sentry/v0;


# static fields
.field private static final a:Lio/sentry/b2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/b2;

    invoke-direct {v0}, Lio/sentry/b2;-><init>()V

    sput-object v0, Lio/sentry/b2;->a:Lio/sentry/b2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static K()Lio/sentry/b2;
    .locals 1

    sget-object v0, Lio/sentry/b2;->a:Lio/sentry/b2;

    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public E()Lio/sentry/f5;
    .locals 7
    .annotation build Lm8/g;
    .end annotation

    new-instance v6, Lio/sentry/f5;

    sget-object v1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    sget-object v2, Lio/sentry/h5;->b:Lio/sentry/h5;

    const-string v3, "op"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/sentry/f5;-><init>(Lio/sentry/protocol/n;Lio/sentry/h5;Ljava/lang/String;Lio/sentry/h5;Lio/sentry/o5;)V

    return-object v6
.end method

.method public F()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public G(Lio/sentry/SpanStatus;Lio/sentry/j3;)V
    .locals 0
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/b2;->K()Lio/sentry/b2;

    move-result-object p1

    return-object p1
.end method

.method public J(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lio/sentry/SpanStatus;)V
    .locals 0
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public d()Lio/sentry/v4;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/v4;

    sget-object v1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    sget-object v2, Lio/sentry/h5;->b:Lio/sentry/h5;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/v4;-><init>(Lio/sentry/protocol/n;Lio/sentry/h5;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public n(Ljava/lang/String;)Lio/sentry/v0;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/b2;->K()Lio/sentry/b2;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method public q()Lio/sentry/m5;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lio/sentry/m5;

    sget-object v1, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lio/sentry/m5;-><init>(Lio/sentry/protocol/n;Ljava/lang/String;)V

    return-object v0
.end method

.method public r(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method

.method public s(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public t(Lio/sentry/SpanStatus;)V
    .locals 0
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public v(Ljava/util/List;)Lio/sentry/e;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/e;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/Instrumenter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/b2;->K()Lio/sentry/b2;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/MeasurementUnit;
        .annotation build Lm8/g;
        .end annotation
    .end param

    return-void
.end method
