.class abstract Lcom/google/android/gms/common/internal/e1;
.super Lcom/google/android/gms/common/internal/q1;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/q1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic f:Lcom/google/android/gms/common/internal/e;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/internal/e;ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/e1;->f:Lcom/google/android/gms/common/internal/e;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/q1;-><init>(Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/e1;->d:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/e1;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/google/android/gms/common/internal/e1;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/e1;->g()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/e1;->f:Lcom/google/android/gms/common/internal/e;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/e;->h0(Lcom/google/android/gms/common/internal/e;ILandroid/os/IInterface;)V

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/e1;->f(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/e1;->f:Lcom/google/android/gms/common/internal/e;

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/e;->h0(Lcom/google/android/gms/common/internal/e;ILandroid/os/IInterface;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/e1;->e:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string v0, "pendingIntent"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/PendingIntent;

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    iget v0, p0, Lcom/google/android/gms/common/internal/e1;->d:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/e1;->f(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected final b()V
    .locals 0

    return-void
.end method

.method protected abstract f(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method protected abstract g()Z
.end method
