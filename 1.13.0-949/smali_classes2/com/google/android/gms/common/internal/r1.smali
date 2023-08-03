.class public final Lcom/google/android/gms/common/internal/r1;
.super Lcom/google/android/gms/common/internal/g1;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# annotations
.annotation build Ly2/d0;
.end annotation


# instance fields
.field private c:Lcom/google/android/gms/common/internal/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/e;I)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/internal/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/g1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/r1;->c:Lcom/google/android/gms/common/internal/e;

    iput p2, p0, Lcom/google/android/gms/common/internal/r1;->d:I

    return-void
.end method


# virtual methods
.method public final e0(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r1;->c:Lcom/google/android/gms/common/internal/e;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/r1;->c:Lcom/google/android/gms/common/internal/e;

    iget v1, p0, Lcom/google/android/gms/common/internal/r1;->d:I

    .line 2
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/e;->U(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/r1;->c:Lcom/google/android/gms/common/internal/e;

    return-void
.end method

.method public final g(ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final t1(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzj;)V
    .locals 2
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/internal/zzj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/r1;->c:Lcom/google/android/gms/common/internal/e;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/e;->i0(Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/internal/zzj;)V

    iget-object p3, p3, Lcom/google/android/gms/common/internal/zzj;->zza:Landroid/os/Bundle;

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/r1;->e0(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method
