.class public interface abstract Lcom/google/mlkit/common/sdkinternal/model/k;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RemoteT:",
        "Lcom/google/mlkit/common/model/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# virtual methods
.method public abstract a(Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/model/b;)Lcom/google/android/gms/tasks/k;
    .param p1    # Lcom/google/mlkit/common/model/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/common/model/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRemoteT;",
            "Lcom/google/mlkit/common/model/b;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method

.method public abstract b()Lcom/google/android/gms/tasks/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/util/Set<",
            "TRemoteT;>;>;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method

.method public abstract c(Lcom/google/mlkit/common/model/d;)Lcom/google/android/gms/tasks/k;
    .param p1    # Lcom/google/mlkit/common/model/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRemoteT;)",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method

.method public abstract d(Lcom/google/mlkit/common/model/d;)Lcom/google/android/gms/tasks/k;
    .param p1    # Lcom/google/mlkit/common/model/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRemoteT;)",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method
