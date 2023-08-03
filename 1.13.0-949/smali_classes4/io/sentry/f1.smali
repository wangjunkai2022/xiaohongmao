.class public final synthetic Lio/sentry/f1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/h1$b;


# instance fields
.field public final synthetic a:Lio/sentry/i1;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/f1;->a:Lio/sentry/i1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/f1;->a:Lio/sentry/i1;

    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/a;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
