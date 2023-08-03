.class Lcom/posthog/android/PostHog$g;
.super Ljava/lang/Object;
.source "PostHog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/PostHog;->x(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/posthog/android/k;

.field final synthetic b:Lcom/posthog/android/s;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/posthog/android/PostHog;


# direct methods
.method constructor <init>(Lcom/posthog/android/PostHog;Lcom/posthog/android/k;Lcom/posthog/android/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/PostHog$g;->e:Lcom/posthog/android/PostHog;

    iput-object p2, p0, Lcom/posthog/android/PostHog$g;->a:Lcom/posthog/android/k;

    iput-object p3, p0, Lcom/posthog/android/PostHog$g;->b:Lcom/posthog/android/s;

    iput-object p4, p0, Lcom/posthog/android/PostHog$g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/posthog/android/PostHog$g;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/posthog/android/PostHog$g;->a:Lcom/posthog/android/k;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/posthog/android/PostHog$g;->e:Lcom/posthog/android/PostHog;

    iget-object v0, v0, Lcom/posthog/android/PostHog;->e:Lcom/posthog/android/k;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/posthog/android/PostHog$g;->b:Lcom/posthog/android/s;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/posthog/android/PostHog;->F:Lcom/posthog/android/s;

    .line 5
    :cond_1
    new-instance v2, Lcom/posthog/android/payloads/c$a;

    invoke-direct {v2}, Lcom/posthog/android/payloads/c$a;-><init>()V

    iget-object v3, p0, Lcom/posthog/android/PostHog$g;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v3}, Lcom/posthog/android/payloads/c$a;->l(Ljava/lang/String;)Lcom/posthog/android/payloads/c$a;

    move-result-object v2

    iget-object v3, p0, Lcom/posthog/android/PostHog$g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/posthog/android/payloads/c$a;->j(Ljava/lang/String;)Lcom/posthog/android/payloads/c$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/posthog/android/payloads/c$a;->k(Ljava/util/Map;)Lcom/posthog/android/payloads/c$a;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/posthog/android/PostHog$g;->e:Lcom/posthog/android/PostHog;

    invoke-virtual {v2, v1, v0}, Lcom/posthog/android/PostHog;->j(Lcom/posthog/android/payloads/BasePayload$a;Lcom/posthog/android/k;)V

    return-void
.end method
