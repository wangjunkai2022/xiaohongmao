.class final Lcom/google/android/gms/common/internal/service/e;
.super Lcom/google/android/gms/common/internal/service/b;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field private final c:Lcom/google/android/gms/common/api/internal/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/e$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/e$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/e$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/service/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/service/e;->c:Lcom/google/android/gms/common/api/internal/e$b;

    return-void
.end method


# virtual methods
.method public final i1(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/service/e;->c:Lcom/google/android/gms/common/api/internal/e$b;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/e$b;->a(Ljava/lang/Object;)V

    return-void
.end method
