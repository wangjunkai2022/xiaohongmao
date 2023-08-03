.class public final synthetic Lio/sentry/w4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/r2$b;


# instance fields
.field public final synthetic a:Lio/sentry/a5;

.field public final synthetic b:Lio/sentry/r2;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/a5;Lio/sentry/r2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/w4;->a:Lio/sentry/a5;

    iput-object p2, p0, Lio/sentry/w4;->b:Lio/sentry/r2;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/w0;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/w4;->a:Lio/sentry/a5;

    iget-object v1, p0, Lio/sentry/w4;->b:Lio/sentry/r2;

    invoke-static {v0, v1, p1}, Lio/sentry/a5;->K(Lio/sentry/a5;Lio/sentry/r2;Lio/sentry/w0;)V

    return-void
.end method
