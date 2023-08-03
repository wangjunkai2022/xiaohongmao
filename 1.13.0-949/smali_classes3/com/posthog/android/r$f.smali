.class Lcom/posthog/android/r$f;
.super Landroid/os/Handler;
.source "PostHogIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# static fields
.field static final b:I = 0x1

.field static final c:I


# instance fields
.field private final a:Lcom/posthog/android/r;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/posthog/android/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lcom/posthog/android/r$f;->a:Lcom/posthog/android/r;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/posthog/android/r$f;->a:Lcom/posthog/android/r;

    invoke-virtual {p1}, Lcom/posthog/android/r;->v()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dispatcher message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/posthog/android/payloads/BasePayload;

    .line 5
    iget-object v0, p0, Lcom/posthog/android/r$f;->a:Lcom/posthog/android/r;

    invoke-virtual {v0, p1}, Lcom/posthog/android/r;->r(Lcom/posthog/android/payloads/BasePayload;)V

    :goto_0
    return-void
.end method
