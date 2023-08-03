.class public final synthetic Lio/sentry/z2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/c3$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/z2;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/SentryOptions;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/z2;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/sentry/c3;->b(Ljava/lang/String;Lio/sentry/SentryOptions;)V

    return-void
.end method
