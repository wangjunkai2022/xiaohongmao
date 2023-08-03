.class public final synthetic Lio/sentry/t2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/u2$a;

.field public final synthetic b:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/u2$a;Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/t2;->a:Lio/sentry/u2$a;

    iput-object p2, p0, Lio/sentry/t2;->b:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/t2;->a:Lio/sentry/u2$a;

    iget-object v1, p0, Lio/sentry/t2;->b:Lio/sentry/SentryOptions;

    invoke-static {v0, v1}, Lio/sentry/u2;->b(Lio/sentry/u2$a;Lio/sentry/SentryOptions;)V

    return-void
.end method
