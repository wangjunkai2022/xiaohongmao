.class Lcom/posthog/android/PostHog$f;
.super Ljava/lang/Object;
.source "PostHog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/PostHog;->c(Ljava/lang/String;Lcom/posthog/android/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/posthog/android/k;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/posthog/android/PostHog;


# direct methods
.method constructor <init>(Lcom/posthog/android/PostHog;Lcom/posthog/android/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/PostHog$f;->c:Lcom/posthog/android/PostHog;

    iput-object p2, p0, Lcom/posthog/android/PostHog$f;->a:Lcom/posthog/android/k;

    iput-object p3, p0, Lcom/posthog/android/PostHog$f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/posthog/android/PostHog$f;->a:Lcom/posthog/android/k;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/posthog/android/PostHog$f;->c:Lcom/posthog/android/PostHog;

    iget-object v0, v0, Lcom/posthog/android/PostHog;->e:Lcom/posthog/android/k;

    .line 3
    :cond_0
    new-instance v1, Lcom/posthog/android/payloads/a$a;

    invoke-direct {v1}, Lcom/posthog/android/payloads/a$a;-><init>()V

    iget-object v2, p0, Lcom/posthog/android/PostHog$f;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/posthog/android/payloads/a$a;->j(Ljava/lang/String;)Lcom/posthog/android/payloads/a$a;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/posthog/android/PostHog$f;->c:Lcom/posthog/android/PostHog;

    invoke-virtual {v2, v1, v0}, Lcom/posthog/android/PostHog;->j(Lcom/posthog/android/payloads/BasePayload$a;Lcom/posthog/android/k;)V

    return-void
.end method
