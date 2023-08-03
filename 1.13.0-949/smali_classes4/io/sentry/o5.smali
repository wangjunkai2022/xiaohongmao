.class public final Lio/sentry/o5;
.super Ljava/lang/Object;
.source "TracesSamplingDecision.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Ljava/lang/Boolean;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/lang/Double;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:Ljava/lang/Boolean;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Ljava/lang/Double;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Double;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/sentry/o5;->a:Ljava/lang/Boolean;

    .line 5
    iput-object p2, p0, Lio/sentry/o5;->b:Ljava/lang/Double;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/o5;->c:Ljava/lang/Boolean;

    .line 7
    iput-object p4, p0, Lio/sentry/o5;->d:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Double;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/o5;->d:Ljava/lang/Double;

    return-object v0
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/o5;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c()Ljava/lang/Double;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/o5;->b:Ljava/lang/Double;

    return-object v0
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/o5;->a:Ljava/lang/Boolean;

    return-object v0
.end method
