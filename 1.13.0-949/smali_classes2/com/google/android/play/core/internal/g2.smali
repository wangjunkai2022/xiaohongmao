.class public final Lcom/google/android/play/core/internal/g2;
.super Lcom/google/android/play/core/internal/y1;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/i2;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/internal/y1;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final C0(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/y1;->s()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/a2;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xa

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/y1;->x(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final D0(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/y1;->s()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/a2;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x9

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/y1;->x(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final J0(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/y1;->s()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/a2;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x7

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/y1;->x(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final L(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/y1;->s()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/a2;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xd

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/y1;->x(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a1(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/y1;->s()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/a2;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/y1;->x(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final l1(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/y1;->s()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/a2;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xb

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/y1;->x(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final n0(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/y1;->s()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/a2;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/y1;->x(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final o0(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/y1;->s()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/a2;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x6

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/y1;->x(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final r1(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/y1;->s()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/a2;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xe

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/y1;->x(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final x0(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/k2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/y1;->s()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/a2;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/a2;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/y1;->x(ILandroid/os/Parcel;)V

    return-void
.end method
