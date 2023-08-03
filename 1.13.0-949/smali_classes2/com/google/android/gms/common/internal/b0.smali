.class public interface abstract Lcom/google/android/gms/common/internal/b0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/j<",
        "Lcom/google/android/gms/common/internal/c0;",
        ">;"
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/k;
    .param p1    # Lcom/google/android/gms/common/internal/TelemetryData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/TelemetryData;",
            ")",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method
