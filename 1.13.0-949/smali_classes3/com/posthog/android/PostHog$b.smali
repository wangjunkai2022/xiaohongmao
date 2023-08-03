.class Lcom/posthog/android/PostHog$b;
.super Ljava/lang/Object;
.source "PostHog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/PostHog;->N(Lcom/posthog/android/h;)V
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

    iput-object p1, p0, Lcom/posthog/android/PostHog$b;->b:Lcom/posthog/android/PostHog;

    iput-object p2, p0, Lcom/posthog/android/PostHog$b;->a:Lcom/posthog/android/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/posthog/android/PostHog;->y:Landroid/os/Handler;

    new-instance v1, Lcom/posthog/android/PostHog$b$a;

    invoke-direct {v1, p0}, Lcom/posthog/android/PostHog$b$a;-><init>(Lcom/posthog/android/PostHog$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
