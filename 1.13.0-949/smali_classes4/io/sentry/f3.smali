.class public final synthetic Lio/sentry/f3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/r2$a;


# instance fields
.field public final synthetic a:Lio/sentry/h3;

.field public final synthetic b:Lio/sentry/h4;

.field public final synthetic c:Lio/sentry/b0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/h3;Lio/sentry/h4;Lio/sentry/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/f3;->a:Lio/sentry/h3;

    iput-object p2, p0, Lio/sentry/f3;->b:Lio/sentry/h4;

    iput-object p3, p0, Lio/sentry/f3;->c:Lio/sentry/b0;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/Session;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/f3;->a:Lio/sentry/h3;

    iget-object v1, p0, Lio/sentry/f3;->b:Lio/sentry/h4;

    iget-object v2, p0, Lio/sentry/f3;->c:Lio/sentry/b0;

    invoke-static {v0, v1, v2, p1}, Lio/sentry/h3;->w(Lio/sentry/h3;Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/Session;)V

    return-void
.end method
