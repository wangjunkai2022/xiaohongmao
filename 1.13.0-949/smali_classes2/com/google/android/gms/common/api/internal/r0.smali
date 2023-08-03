.class final Lcom/google/android/gms/common/api/internal/r0;
.super Lcom/google/android/gms/common/api/internal/l1;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field final synthetic b:Lcom/google/android/gms/common/internal/e$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/s0;Lcom/google/android/gms/common/api/internal/k1;Lcom/google/android/gms/common/internal/e$c;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/r0;->b:Lcom/google/android/gms/common/internal/e$c;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/l1;-><init>(Lcom/google/android/gms/common/api/internal/k1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation build Ls7/a;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r0;->b:Lcom/google/android/gms/common/internal/e$c;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/e$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
