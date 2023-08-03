.class public final synthetic Lio/sentry/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/m;

.field public final synthetic b:Lio/sentry/w0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/m;Lio/sentry/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/l;->a:Lio/sentry/m;

    iput-object p2, p0, Lio/sentry/l;->b:Lio/sentry/w0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/l;->a:Lio/sentry/m;

    iget-object v1, p0, Lio/sentry/l;->b:Lio/sentry/w0;

    invoke-static {v0, v1}, Lio/sentry/m;->c(Lio/sentry/m;Lio/sentry/w0;)V

    return-void
.end method
