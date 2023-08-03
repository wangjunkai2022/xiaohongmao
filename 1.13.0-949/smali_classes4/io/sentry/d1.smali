.class public final synthetic Lio/sentry/d1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/h1$b;


# instance fields
.field public final synthetic a:Lio/sentry/h1;

.field public final synthetic b:Lio/sentry/i1;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/h1;Lio/sentry/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/d1;->a:Lio/sentry/h1;

    iput-object p2, p0, Lio/sentry/d1;->b:Lio/sentry/i1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/sentry/d1;->a:Lio/sentry/h1;

    iget-object v1, p0, Lio/sentry/d1;->b:Lio/sentry/i1;

    invoke-static {v0, v1}, Lio/sentry/h1;->a(Lio/sentry/h1;Lio/sentry/i1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
