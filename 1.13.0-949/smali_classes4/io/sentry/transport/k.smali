.class public final synthetic Lio/sentry/transport/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/h$c;


# instance fields
.field public final synthetic a:Lio/sentry/transport/d$c;

.field public final synthetic b:Lio/sentry/l3;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/transport/d$c;Lio/sentry/l3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/k;->a:Lio/sentry/transport/d$c;

    iput-object p2, p0, Lio/sentry/transport/k;->b:Lio/sentry/l3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/transport/k;->a:Lio/sentry/transport/d$c;

    iget-object v1, p0, Lio/sentry/transport/k;->b:Lio/sentry/l3;

    invoke-static {v0, v1, p1}, Lio/sentry/transport/d$c;->b(Lio/sentry/transport/d$c;Lio/sentry/l3;Ljava/lang/Object;)V

    return-void
.end method
