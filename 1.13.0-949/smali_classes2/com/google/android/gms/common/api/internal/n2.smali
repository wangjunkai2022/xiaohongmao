.class public final Lcom/google/android/gms/common/api/internal/n2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/o3;

.field public final b:I

.field public final c:Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/h<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/o3;ILcom/google/android/gms/common/api/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/o3;",
            "I",
            "Lcom/google/android/gms/common/api/h<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n2;->a:Lcom/google/android/gms/common/api/internal/o3;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/n2;->b:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/n2;->c:Lcom/google/android/gms/common/api/h;

    return-void
.end method
