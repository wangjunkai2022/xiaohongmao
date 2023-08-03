.class public final synthetic Lio/sentry/x3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/u0;

.field public final synthetic b:Lio/sentry/Session;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/u0;Lio/sentry/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/x3;->a:Lio/sentry/u0;

    iput-object p2, p0, Lio/sentry/x3;->b:Lio/sentry/Session;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/sentry/x3;->a:Lio/sentry/u0;

    iget-object v1, p0, Lio/sentry/x3;->b:Lio/sentry/Session;

    invoke-static {v0, v1}, Lio/sentry/f4;->q(Lio/sentry/u0;Lio/sentry/Session;)[B

    move-result-object v0

    return-object v0
.end method
