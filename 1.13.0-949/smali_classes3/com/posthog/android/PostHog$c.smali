.class Lcom/posthog/android/PostHog$c;
.super Ljava/lang/Object;
.source "PostHog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/PostHog;->B(Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/posthog/android/s;

.field final synthetic c:Lcom/posthog/android/k;

.field final synthetic d:Lcom/posthog/android/PostHog;


# direct methods
.method constructor <init>(Lcom/posthog/android/PostHog;Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/PostHog$c;->d:Lcom/posthog/android/PostHog;

    iput-object p2, p0, Lcom/posthog/android/PostHog$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/posthog/android/PostHog$c;->b:Lcom/posthog/android/s;

    iput-object p4, p0, Lcom/posthog/android/PostHog$c;->c:Lcom/posthog/android/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/posthog/android/PostHog$c;->d:Lcom/posthog/android/PostHog;

    iget-object v0, v0, Lcom/posthog/android/PostHog;->f:Lcom/posthog/android/s$a;

    invoke-virtual {v0}, Lcom/posthog/android/x$a;->c()Lcom/posthog/android/x;

    move-result-object v0

    check-cast v0, Lcom/posthog/android/s;

    .line 2
    iget-object v1, p0, Lcom/posthog/android/PostHog$c;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/posthog/android/PostHog$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/posthog/android/s;->C(Ljava/lang/String;)Lcom/posthog/android/s;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/posthog/android/PostHog$c;->b:Lcom/posthog/android/s;

    invoke-static {v1}, Lcom/posthog/android/internal/Utils;->y(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/posthog/android/PostHog$c;->b:Lcom/posthog/android/s;

    invoke-virtual {v0, v1}, Lcom/posthog/android/x;->putAll(Ljava/util/Map;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/posthog/android/PostHog$c;->d:Lcom/posthog/android/PostHog;

    iget-object v1, v1, Lcom/posthog/android/PostHog;->f:Lcom/posthog/android/s$a;

    invoke-virtual {v1, v0}, Lcom/posthog/android/x$a;->e(Lcom/posthog/android/x;)V

    .line 7
    iget-object v0, p0, Lcom/posthog/android/PostHog$c;->c:Lcom/posthog/android/k;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/posthog/android/PostHog$c;->d:Lcom/posthog/android/PostHog;

    iget-object v0, v0, Lcom/posthog/android/PostHog;->e:Lcom/posthog/android/k;

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/posthog/android/PostHog$c;->b:Lcom/posthog/android/s;

    if-nez v1, :cond_3

    .line 10
    sget-object v1, Lcom/posthog/android/PostHog;->F:Lcom/posthog/android/s;

    .line 11
    :cond_3
    new-instance v2, Lcom/posthog/android/payloads/d$a;

    invoke-direct {v2}, Lcom/posthog/android/payloads/d$a;-><init>()V

    .line 12
    invoke-virtual {v2, v1}, Lcom/posthog/android/payloads/d$a;->l(Ljava/util/Map;)Lcom/posthog/android/payloads/d$a;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/posthog/android/PostHog$c;->d:Lcom/posthog/android/PostHog;

    invoke-virtual {v2, v1, v0}, Lcom/posthog/android/PostHog;->j(Lcom/posthog/android/payloads/BasePayload$a;Lcom/posthog/android/k;)V

    return-void
.end method
