.class public final synthetic Lio/sentry/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/e0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/c0;->a:Lio/sentry/e0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/c0;->a:Lio/sentry/e0;

    invoke-static {v0}, Lio/sentry/e0;->a(Lio/sentry/e0;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
