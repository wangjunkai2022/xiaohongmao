.class final Lcom/google/android/gms/common/api/internal/p3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/i$c;


# instance fields
.field public final c:I

.field public final d:Lcom/google/android/gms/common/api/i;

.field public final e:Lcom/google/android/gms/common/api/i$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic f:Lcom/google/android/gms/common/api/internal/q3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/q3;ILcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/i$c;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/common/api/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/p3;->f:Lcom/google/android/gms/common/api/internal/q3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/api/internal/p3;->c:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/p3;->d:Lcom/google/android/gms/common/api/i;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/p3;->e:Lcom/google/android/gms/common/api/i$c;

    return-void
.end method


# virtual methods
.method public final z(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "beginFailureResolution for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoManageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p3;->f:Lcom/google/android/gms/common/api/internal/q3;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/p3;->c:I

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/v3;->t(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
