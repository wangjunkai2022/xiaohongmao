.class public abstract Lcom/google/android/gms/dynamic/d$a;
.super Lcom/google/android/gms/internal/common/k;
.source "com.google.android.gms:play-services-basement@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/dynamic/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/k;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static x(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
    .locals 2
    .param p0    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/dynamic/d;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/dynamic/d;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/dynamic/r;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/r;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
