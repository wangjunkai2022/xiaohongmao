.class public interface abstract Lcom/google/android/play/core/appupdate/b;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# virtual methods
.method public abstract a(Lcom/google/android/play/core/appupdate/a;Landroid/app/Activity;Lcom/google/android/play/core/appupdate/d;I)Z
    .param p1    # Lcom/google/android/play/core/appupdate/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/play/core/appupdate/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract b(Lcom/google/android/play/core/appupdate/a;ILcom/google/android/play/core/common/a;I)Z
    .param p1    # Lcom/google/android/play/core/appupdate/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Ld3/b;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/play/core/common/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract c()Lcom/google/android/play/core/tasks/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/google/android/play/core/tasks/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/appupdate/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e(Lcom/google/android/play/core/install/a;)V
    .param p1    # Lcom/google/android/play/core/install/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract f(Lcom/google/android/play/core/appupdate/a;Lcom/google/android/play/core/common/a;Lcom/google/android/play/core/appupdate/d;I)Z
    .param p1    # Lcom/google/android/play/core/appupdate/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/play/core/common/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/play/core/appupdate/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract g(Lcom/google/android/play/core/appupdate/a;Landroid/app/Activity;Lcom/google/android/play/core/appupdate/d;)Lcom/google/android/play/core/tasks/d;
    .param p1    # Lcom/google/android/play/core/appupdate/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/play/core/appupdate/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/appupdate/a;",
            "Landroid/app/Activity;",
            "Lcom/google/android/play/core/appupdate/d;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h(Lcom/google/android/play/core/appupdate/a;ILandroid/app/Activity;I)Z
    .param p1    # Lcom/google/android/play/core/appupdate/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Ld3/b;
        .end annotation
    .end param
    .param p3    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract i(Lcom/google/android/play/core/install/a;)V
    .param p1    # Lcom/google/android/play/core/install/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
