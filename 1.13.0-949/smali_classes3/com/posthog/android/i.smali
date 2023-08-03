.class public final Lcom/posthog/android/i;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final c:Ljava/lang/String; = "PostHog"


# instance fields
.field public final a:Lcom/posthog/android/PostHog$LogLevel;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/posthog/android/PostHog$LogLevel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/posthog/android/i;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/posthog/android/i;->a:Lcom/posthog/android/PostHog$LogLevel;

    return-void
.end method

.method private d(Lcom/posthog/android/PostHog$LogLevel;)Z
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/i;->a:Lcom/posthog/android/PostHog$LogLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static g(Lcom/posthog/android/PostHog$LogLevel;)Lcom/posthog/android/i;
    .locals 2

    new-instance v0, Lcom/posthog/android/i;

    const-string v1, "PostHog"

    invoke-direct {v0, v1, p0}, Lcom/posthog/android/i;-><init>(Ljava/lang/String;Lcom/posthog/android/PostHog$LogLevel;)V

    return-object v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/posthog/android/PostHog$LogLevel;->DEBUG:Lcom/posthog/android/PostHog$LogLevel;

    invoke-direct {p0, v0}, Lcom/posthog/android/i;->d(Lcom/posthog/android/PostHog$LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/posthog/android/i;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/posthog/android/PostHog$LogLevel;->INFO:Lcom/posthog/android/PostHog$LogLevel;

    invoke-direct {p0, v0}, Lcom/posthog/android/i;->d(Lcom/posthog/android/PostHog$LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/posthog/android/i;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/posthog/android/PostHog$LogLevel;->INFO:Lcom/posthog/android/PostHog$LogLevel;

    invoke-direct {p0, v0}, Lcom/posthog/android/i;->d(Lcom/posthog/android/PostHog$LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/posthog/android/i;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/posthog/android/i;
    .locals 3

    new-instance v0, Lcom/posthog/android/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostHog-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/posthog/android/i;->a:Lcom/posthog/android/PostHog$LogLevel;

    invoke-direct {v0, p1, v1}, Lcom/posthog/android/i;-><init>(Ljava/lang/String;Lcom/posthog/android/PostHog$LogLevel;)V

    return-object v0
.end method

.method public varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/posthog/android/PostHog$LogLevel;->VERBOSE:Lcom/posthog/android/PostHog$LogLevel;

    invoke-direct {p0, v0}, Lcom/posthog/android/i;->d(Lcom/posthog/android/PostHog$LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/posthog/android/i;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
