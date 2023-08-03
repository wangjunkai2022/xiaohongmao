.class Lcom/posthog/android/u;
.super Ljava/lang/Object;
.source "RealMiddlewareChain.java"

# interfaces
.implements Lcom/posthog/android/j$a;


# instance fields
.field private a:I

.field private final b:Lcom/posthog/android/payloads/BasePayload;
    .annotation build La/f0;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation build La/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/android/j;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/posthog/android/PostHog;
    .annotation build La/f0;
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/posthog/android/payloads/BasePayload;Ljava/util/List;Lcom/posthog/android/PostHog;)V
    .locals 0
    .param p2    # Lcom/posthog/android/payloads/BasePayload;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p4    # Lcom/posthog/android/PostHog;
        .annotation build La/f0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/posthog/android/payloads/BasePayload;",
            "Ljava/util/List<",
            "Lcom/posthog/android/j;",
            ">;",
            "Lcom/posthog/android/PostHog;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/posthog/android/u;->a:I

    .line 3
    iput-object p2, p0, Lcom/posthog/android/u;->b:Lcom/posthog/android/payloads/BasePayload;

    .line 4
    iput-object p3, p0, Lcom/posthog/android/u;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/posthog/android/u;->d:Lcom/posthog/android/PostHog;

    return-void
.end method


# virtual methods
.method public a()Lcom/posthog/android/payloads/BasePayload;
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/u;->b:Lcom/posthog/android/payloads/BasePayload;

    return-object v0
.end method

.method public b(Lcom/posthog/android/payloads/BasePayload;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/posthog/android/u;->a:I

    iget-object v1, p0, Lcom/posthog/android/u;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/posthog/android/u;

    iget v1, p0, Lcom/posthog/android/u;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/posthog/android/u;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/posthog/android/u;->d:Lcom/posthog/android/PostHog;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/posthog/android/u;-><init>(ILcom/posthog/android/payloads/BasePayload;Ljava/util/List;Lcom/posthog/android/PostHog;)V

    .line 3
    iget-object p1, p0, Lcom/posthog/android/u;->c:Ljava/util/List;

    iget v1, p0, Lcom/posthog/android/u;->a:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/posthog/android/j;

    invoke-interface {p1, v0}, Lcom/posthog/android/j;->a(Lcom/posthog/android/j$a;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/posthog/android/u;->d:Lcom/posthog/android/PostHog;

    invoke-virtual {v0, p1}, Lcom/posthog/android/PostHog;->M(Lcom/posthog/android/payloads/BasePayload;)V

    return-void
.end method
