.class public abstract Lcom/google/android/gms/common/internal/service/k;
.super Lcom/google/android/gms/internal/base/b;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/service/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.ICommonCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/base/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final J1(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/common/internal/service/l;->i1(I)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
