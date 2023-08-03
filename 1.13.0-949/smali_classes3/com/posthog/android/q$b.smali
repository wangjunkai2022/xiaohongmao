.class public Lcom/posthog/android/q$b;
.super Ljava/lang/Object;
.source "PostHogFeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/posthog/android/PostHog;

.field private b:Lcom/posthog/android/i;

.field private c:Lcom/posthog/android/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/posthog/android/q;
    .locals 9

    .line 1
    new-instance v8, Lcom/posthog/android/q;

    iget-object v1, p0, Lcom/posthog/android/q$b;->a:Lcom/posthog/android/PostHog;

    iget-object v5, p0, Lcom/posthog/android/q$b;->b:Lcom/posthog/android/i;

    iget-object v6, p0, Lcom/posthog/android/q$b;->c:Lcom/posthog/android/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/posthog/android/q;-><init>(Lcom/posthog/android/PostHog;Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/posthog/android/i;Lcom/posthog/android/c;Lcom/posthog/android/q$a;)V

    .line 2
    iget-object v0, p0, Lcom/posthog/android/q$b;->a:Lcom/posthog/android/PostHog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v8}, Lcom/posthog/android/q;->h()V

    :cond_0
    return-object v8
.end method

.method b(Lcom/posthog/android/c;)Lcom/posthog/android/q$b;
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/q$b;->c:Lcom/posthog/android/c;

    return-object p0
.end method

.method c(Lcom/posthog/android/i;)Lcom/posthog/android/q$b;
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/q$b;->b:Lcom/posthog/android/i;

    return-object p0
.end method

.method public d(Lcom/posthog/android/PostHog;)Lcom/posthog/android/q$b;
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/q$b;->a:Lcom/posthog/android/PostHog;

    return-object p0
.end method
