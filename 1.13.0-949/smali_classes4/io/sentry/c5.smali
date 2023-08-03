.class public final synthetic Lio/sentry/c5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/n0;

.field public final synthetic b:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/c5;->a:Lio/sentry/n0;

    iput-object p2, p0, Lio/sentry/c5;->b:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/c5;->a:Lio/sentry/n0;

    iget-object v1, p0, Lio/sentry/c5;->b:Lio/sentry/SentryOptions;

    invoke-static {v0, v1}, Lio/sentry/d5;->b(Lio/sentry/n0;Lio/sentry/SentryOptions;)V

    return-void
.end method
