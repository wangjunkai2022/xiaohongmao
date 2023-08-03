.class Lcom/posthog/android/PostHog$b$a;
.super Ljava/lang/Object;
.source "PostHog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/PostHog$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/posthog/android/PostHog$b;


# direct methods
.method constructor <init>(Lcom/posthog/android/PostHog$b;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/PostHog$b$a;->a:Lcom/posthog/android/PostHog$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/posthog/android/PostHog$b$a;->a:Lcom/posthog/android/PostHog$b;

    iget-object v1, v0, Lcom/posthog/android/PostHog$b;->b:Lcom/posthog/android/PostHog;

    iget-object v0, v0, Lcom/posthog/android/PostHog$b;->a:Lcom/posthog/android/h;

    invoke-virtual {v1, v0}, Lcom/posthog/android/PostHog;->I(Lcom/posthog/android/h;)V

    return-void
.end method
