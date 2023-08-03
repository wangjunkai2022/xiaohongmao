.class public abstract Lcom/google/android/gms/common/internal/l2;
.super Lcom/google/android/gms/internal/common/k;
.source "com.google.android.gms:play-services-basement@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/m2;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.ICertData"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/k;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static x(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/m2;
    .locals 2

    const-string v0, "com.google.android.gms.common.internal.ICertData"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/common/internal/m2;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/common/internal/m2;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/k2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/k2;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final s(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/m2;->e()I

    move-result p1

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/m2;->b()Lcom/google/android/gms/dynamic/d;

    move-result-object p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    return p2
.end method
