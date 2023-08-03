.class public final synthetic Lio/sentry/transport/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field public final synthetic a:Lio/sentry/cache/f;

.field public final synthetic b:Lio/sentry/o0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/f;Lio/sentry/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/c;->a:Lio/sentry/cache/f;

    iput-object p2, p0, Lio/sentry/transport/c;->b:Lio/sentry/o0;

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/transport/c;->a:Lio/sentry/cache/f;

    iget-object v1, p0, Lio/sentry/transport/c;->b:Lio/sentry/o0;

    invoke-static {v0, v1, p1, p2}, Lio/sentry/transport/d;->a(Lio/sentry/cache/f;Lio/sentry/o0;Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
