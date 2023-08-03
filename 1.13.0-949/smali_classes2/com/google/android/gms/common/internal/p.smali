.class public interface abstract Lcom/google/android/gms/common/internal/p;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/p$a;
    }
.end annotation


# virtual methods
.method public abstract Y0(Lcom/google/android/gms/common/internal/o;Lcom/google/android/gms/common/internal/GetServiceRequest;)V
    .param p1    # Lcom/google/android/gms/common/internal/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/internal/GetServiceRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method
