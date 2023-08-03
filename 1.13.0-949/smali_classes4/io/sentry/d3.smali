.class public final Lio/sentry/d3;
.super Ljava/lang/Object;
.source "SentryAutoDateProvider.java"

# interfaces
.implements Lio/sentry/k3;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/k3;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/sentry/d3;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lio/sentry/l4;

    invoke-direct {v0}, Lio/sentry/l4;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->a:Lio/sentry/k3;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lio/sentry/o4;

    invoke-direct {v0}, Lio/sentry/o4;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->a:Lio/sentry/k3;

    :goto_0
    return-void
.end method

.method private static a()Z
    .locals 1

    invoke-static {}, Lio/sentry/util/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/sentry/util/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public now()Lio/sentry/j3;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/d3;->a:Lio/sentry/k3;

    invoke-interface {v0}, Lio/sentry/k3;->now()Lio/sentry/j3;

    move-result-object v0

    return-object v0
.end method
