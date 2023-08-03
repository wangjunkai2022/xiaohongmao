.class final Lio/sentry/i5$a;
.super Ljava/lang/Object;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/i5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/sentry/SentryOptions;

.field private volatile b:Lio/sentry/s0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile c:Lio/sentry/r2;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/s0;Lio/sentry/r2;)V
    .locals 1
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/r2;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISentryClient is required."

    .line 2
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/s0;

    iput-object p2, p0, Lio/sentry/i5$a;->b:Lio/sentry/s0;

    const-string p2, "Scope is required."

    .line 3
    invoke-static {p3, p2}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/r2;

    iput-object p2, p0, Lio/sentry/i5$a;->c:Lio/sentry/r2;

    const-string p2, "Options is required"

    .line 4
    invoke-static {p1, p2}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/i5$a;->a:Lio/sentry/SentryOptions;

    return-void
.end method

.method constructor <init>(Lio/sentry/i5$a;)V
    .locals 1
    .param p1    # Lio/sentry/i5$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v0, p1, Lio/sentry/i5$a;->a:Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/i5$a;->a:Lio/sentry/SentryOptions;

    .line 7
    iget-object v0, p1, Lio/sentry/i5$a;->b:Lio/sentry/s0;

    iput-object v0, p0, Lio/sentry/i5$a;->b:Lio/sentry/s0;

    .line 8
    new-instance v0, Lio/sentry/r2;

    iget-object p1, p1, Lio/sentry/i5$a;->c:Lio/sentry/r2;

    invoke-direct {v0, p1}, Lio/sentry/r2;-><init>(Lio/sentry/r2;)V

    iput-object v0, p0, Lio/sentry/i5$a;->c:Lio/sentry/r2;

    return-void
.end method


# virtual methods
.method public a()Lio/sentry/s0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/i5$a;->b:Lio/sentry/s0;

    return-object v0
.end method

.method public b()Lio/sentry/SentryOptions;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/i5$a;->a:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public c()Lio/sentry/r2;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/i5$a;->c:Lio/sentry/r2;

    return-object v0
.end method

.method public d(Lio/sentry/s0;)V
    .locals 0
    .param p1    # Lio/sentry/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/i5$a;->b:Lio/sentry/s0;

    return-void
.end method
