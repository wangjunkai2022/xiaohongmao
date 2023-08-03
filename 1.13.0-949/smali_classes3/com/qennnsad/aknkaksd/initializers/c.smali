.class public final synthetic Lcom/qennnsad/aknkaksd/initializers/c;
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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/initializers/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/SentryOptions;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/initializers/c;->a:Ljava/lang/String;

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/initializers/SentryInitializer;->a(Ljava/lang/String;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
