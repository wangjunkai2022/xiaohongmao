.class Lcom/posthog/android/PostHog$h;
.super Ljava/lang/Object;
.source "PostHog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/PostHog;->M(Lcom/posthog/android/payloads/BasePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/posthog/android/h;

.field final synthetic b:Lcom/posthog/android/PostHog;


# direct methods
.method constructor <init>(Lcom/posthog/android/PostHog;Lcom/posthog/android/h;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/PostHog$h;->b:Lcom/posthog/android/PostHog;

    iput-object p2, p0, Lcom/posthog/android/PostHog$h;->a:Lcom/posthog/android/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/posthog/android/PostHog$h;->b:Lcom/posthog/android/PostHog;

    iget-object v1, p0, Lcom/posthog/android/PostHog$h;->a:Lcom/posthog/android/h;

    invoke-virtual {v0, v1}, Lcom/posthog/android/PostHog;->I(Lcom/posthog/android/h;)V

    return-void
.end method
