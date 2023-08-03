.class public final Lcom/google/android/gms/common/internal/service/q;
.super Lcom/google/android/gms/common/internal/i;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/i<",
        "Lcom/google/android/gms/common/internal/service/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final O:Lcom/google/android/gms/common/internal/c0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/f;Lcom/google/android/gms/common/internal/c0;Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/internal/q;)V
    .locals 7

    const/16 v3, 0x10e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/f;Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/internal/q;)V

    iput-object p4, p0, Lcom/google/android/gms/common/internal/service/q;->O:Lcom/google/android/gms/common/internal/c0;

    return-void
.end method


# virtual methods
.method public final B()[Lcom/google/android/gms/common/Feature;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/base/d;->b:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method protected final G()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/service/q;->O:Lcom/google/android/gms/common/internal/c0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c0;->c()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final L()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    return-object v0
.end method

.method protected final M()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.common.telemetry.service.START"

    return-object v0
.end method

.method protected final P()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final r()I
    .locals 1

    const v0, 0xc1fa340

    return v0
.end method

.method protected final synthetic y(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/common/internal/service/j;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/common/internal/service/j;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/service/j;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/service/j;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
