.class public final synthetic Lio/sentry/q3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/f4$a;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/f4$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/q3;->a:Lio/sentry/f4$a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/q3;->a:Lio/sentry/f4$a;

    invoke-static {v0}, Lio/sentry/f4;->l(Lio/sentry/f4$a;)[B

    move-result-object v0

    return-object v0
.end method
