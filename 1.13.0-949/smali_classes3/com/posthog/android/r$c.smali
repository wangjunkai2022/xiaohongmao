.class Lcom/posthog/android/r$c;
.super Ljava/lang/Object;
.source "PostHogIntegration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/r;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/posthog/android/r;


# direct methods
.method constructor <init>(Lcom/posthog/android/r;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/android/r$c;->a:Lcom/posthog/android/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/posthog/android/r$c;->a:Lcom/posthog/android/r;

    iget-object v0, v0, Lcom/posthog/android/r;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/posthog/android/r$c;->a:Lcom/posthog/android/r;

    invoke-virtual {v1}, Lcom/posthog/android/r;->s()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
