.class final Lio/sentry/r2$c;
.super Ljava/lang/Object;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/sentry/Session;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Lio/sentry/Session;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/Session;Lio/sentry/Session;)V
    .locals 0
    .param p1    # Lio/sentry/Session;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/Session;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/r2$c;->b:Lio/sentry/Session;

    .line 3
    iput-object p2, p0, Lio/sentry/r2$c;->a:Lio/sentry/Session;

    return-void
.end method


# virtual methods
.method public a()Lio/sentry/Session;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/r2$c;->b:Lio/sentry/Session;

    return-object v0
.end method

.method public b()Lio/sentry/Session;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/r2$c;->a:Lio/sentry/Session;

    return-object v0
.end method
