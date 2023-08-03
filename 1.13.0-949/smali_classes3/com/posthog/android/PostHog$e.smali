.class Lcom/posthog/android/PostHog$e;
.super Ljava/lang/Object;
.source "PostHog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/PostHog;->Q(Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/posthog/android/k;

.field final synthetic b:Lcom/posthog/android/s;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/posthog/android/PostHog;


# direct methods
.method constructor <init>(Lcom/posthog/android/PostHog;Lcom/posthog/android/k;Lcom/posthog/android/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/PostHog$e;->d:Lcom/posthog/android/PostHog;

    iput-object p2, p0, Lcom/posthog/android/PostHog$e;->a:Lcom/posthog/android/k;

    iput-object p3, p0, Lcom/posthog/android/PostHog$e;->b:Lcom/posthog/android/s;

    iput-object p4, p0, Lcom/posthog/android/PostHog$e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/posthog/android/PostHog$e;->a:Lcom/posthog/android/k;

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/posthog/android/PostHog$e;->d:Lcom/posthog/android/PostHog;

    iget-object v1, v1, Lcom/posthog/android/PostHog;->e:Lcom/posthog/android/k;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/posthog/android/PostHog$e;->b:Lcom/posthog/android/s;

    if-nez v2, :cond_1

    .line 4
    sget-object v2, Lcom/posthog/android/PostHog;->F:Lcom/posthog/android/s;

    :cond_1
    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/posthog/android/k;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/posthog/android/PostHog$e;->a:Lcom/posthog/android/k;

    .line 6
    invoke-virtual {v0}, Lcom/posthog/android/k;->a()Ljava/util/Map;

    move-result-object v0

    const-string v4, "send_feature_flags"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/posthog/android/PostHog$e;->a:Lcom/posthog/android/k;

    invoke-virtual {v0}, Lcom/posthog/android/k;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_2
    if-eqz v3, :cond_4

    .line 8
    iget-object v0, p0, Lcom/posthog/android/PostHog$e;->d:Lcom/posthog/android/PostHog;

    invoke-static {v0}, Lcom/posthog/android/PostHog;->a(Lcom/posthog/android/PostHog;)Lcom/posthog/android/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/posthog/android/q;->c()Lcom/posthog/android/x;

    move-result-object v0

    .line 9
    iget-object v3, p0, Lcom/posthog/android/PostHog$e;->d:Lcom/posthog/android/PostHog;

    invoke-static {v3}, Lcom/posthog/android/PostHog;->a(Lcom/posthog/android/PostHog;)Lcom/posthog/android/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/posthog/android/q;->d()Ljava/util/List;

    move-result-object v3

    .line 10
    invoke-virtual {v0}, Lcom/posthog/android/x;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/posthog/android/s;->D(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v2, v3}, Lcom/posthog/android/s;->A(Ljava/util/List;)Lcom/posthog/android/s;

    .line 13
    :cond_4
    new-instance v0, Lcom/posthog/android/payloads/e$a;

    invoke-direct {v0}, Lcom/posthog/android/payloads/e$a;-><init>()V

    iget-object v3, p0, Lcom/posthog/android/PostHog$e;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v3}, Lcom/posthog/android/payloads/e$a;->j(Ljava/lang/String;)Lcom/posthog/android/payloads/e$a;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v2}, Lcom/posthog/android/payloads/BasePayload$a;->f(Ljava/util/Map;)Lcom/posthog/android/payloads/BasePayload$a;

    move-result-object v0

    check-cast v0, Lcom/posthog/android/payloads/e$a;

    .line 16
    iget-object v2, p0, Lcom/posthog/android/PostHog$e;->d:Lcom/posthog/android/PostHog;

    invoke-virtual {v2, v0, v1}, Lcom/posthog/android/PostHog;->j(Lcom/posthog/android/payloads/BasePayload$a;Lcom/posthog/android/k;)V

    return-void
.end method
