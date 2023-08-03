.class final Lcom/posthog/android/r$a;
.super Ljava/lang/Object;
.source "PostHogIntegration.java"

# interfaces
.implements Lcom/posthog/android/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "PostHog"

    return-object v0
.end method

.method public b(Lcom/posthog/android/PostHog;)Lcom/posthog/android/g;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/posthog/android/PostHog;",
            ")",
            "Lcom/posthog/android/g<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/posthog/android/PostHog;->m()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p1, Lcom/posthog/android/PostHog;->k:Lcom/posthog/android/c;

    iget-object v2, p1, Lcom/posthog/android/PostHog;->l:Lcom/posthog/android/b;

    iget-object v3, p1, Lcom/posthog/android/PostHog;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p1, Lcom/posthog/android/PostHog;->c:Lcom/posthog/android/v;

    iget-object v5, p1, Lcom/posthog/android/PostHog;->j:Ljava/lang/String;

    iget-wide v6, p1, Lcom/posthog/android/PostHog;->r:J

    iget v8, p1, Lcom/posthog/android/PostHog;->q:I

    .line 2
    invoke-virtual {p1}, Lcom/posthog/android/PostHog;->s()Lcom/posthog/android/i;

    move-result-object v9

    iget-object v10, p1, Lcom/posthog/android/PostHog;->m:Lcom/posthog/android/e;

    .line 3
    invoke-static/range {v0 .. v10}, Lcom/posthog/android/r;->o(Landroid/content/Context;Lcom/posthog/android/c;Lcom/posthog/android/b;Ljava/util/concurrent/ExecutorService;Lcom/posthog/android/v;Ljava/lang/String;JILcom/posthog/android/i;Lcom/posthog/android/e;)Lcom/posthog/android/r;

    move-result-object p1

    return-object p1
.end method
