.class public final synthetic Lio/sentry/y3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/u0;

.field public final synthetic b:Lio/sentry/w5;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/u0;Lio/sentry/w5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/y3;->a:Lio/sentry/u0;

    iput-object p2, p0, Lio/sentry/y3;->b:Lio/sentry/w5;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/sentry/y3;->a:Lio/sentry/u0;

    iget-object v1, p0, Lio/sentry/y3;->b:Lio/sentry/w5;

    invoke-static {v0, v1}, Lio/sentry/f4;->j(Lio/sentry/u0;Lio/sentry/w5;)[B

    move-result-object v0

    return-object v0
.end method
