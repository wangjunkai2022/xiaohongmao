.class Lcom/posthog/android/r$b;
.super Ljava/lang/Object;
.source "PostHogIntegration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/posthog/android/r;-><init>(Landroid/content/Context;Lcom/posthog/android/c;Lcom/posthog/android/b;Ljava/util/concurrent/ExecutorService;Lcom/posthog/android/l;Lcom/posthog/android/v;JILcom/posthog/android/i;Lcom/posthog/android/e;)V
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

    iput-object p1, p0, Lcom/posthog/android/r$b;->a:Lcom/posthog/android/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/r$b;->a:Lcom/posthog/android/r;

    invoke-virtual {v0}, Lcom/posthog/android/r;->c()V

    return-void
.end method
