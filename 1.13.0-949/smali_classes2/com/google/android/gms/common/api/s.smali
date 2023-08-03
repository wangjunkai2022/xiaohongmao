.class public abstract Lcom/google/android/gms/common/api/s;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/q;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/r<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/q;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/q;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/s;->c(Lcom/google/android/gms/common/api/q;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/s;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to release "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ResultCallbacks"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public abstract b(Lcom/google/android/gms/common/api/Status;)V
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract c(Lcom/google/android/gms/common/api/q;)V
    .param p1    # Lcom/google/android/gms/common/api/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method
