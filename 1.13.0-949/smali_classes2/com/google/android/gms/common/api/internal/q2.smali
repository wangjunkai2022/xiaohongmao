.class final Lcom/google/android/gms/common/api/internal/q2;
.super Lcom/google/android/gms/common/api/internal/t;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field final synthetic e:Lcom/google/android/gms/common/api/internal/u$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/u$a;Lcom/google/android/gms/common/api/internal/n;[Lcom/google/android/gms/common/Feature;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/u$a;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/common/api/internal/t;-><init>(Lcom/google/android/gms/common/api/internal/n;[Lcom/google/android/gms/common/Feature;ZI)V

    return-void
.end method


# virtual methods
.method protected final d(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$b;",
            "Lcom/google/android/gms/tasks/l<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q2;->e:Lcom/google/android/gms/common/api/internal/u$a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/u$a;->i(Lcom/google/android/gms/common/api/internal/u$a;)Lcom/google/android/gms/common/api/internal/v;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/v;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
