.class public final Lcom/google/android/gms/common/api/internal/l3;
.super Lcom/google/android/gms/common/api/internal/g3;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/g3<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/common/api/internal/o2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/o2;Lcom/google/android/gms/tasks/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/o2;",
            "Lcom/google/android/gms/tasks/l<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/g3;-><init>(ILcom/google/android/gms/tasks/l;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/l3;->c:Lcom/google/android/gms/common/api/internal/o2;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lcom/google/android/gms/common/api/internal/h0;Z)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/h0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/v1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/v1<",
            "*>;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/l3;->c:Lcom/google/android/gms/common/api/internal/o2;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/o2;->a:Lcom/google/android/gms/common/api/internal/t;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/t;->f()Z

    move-result p1

    return p1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/v1;)[Lcom/google/android/gms/common/Feature;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/v1<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/l3;->c:Lcom/google/android/gms/common/api/internal/o2;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/o2;->a:Lcom/google/android/gms/common/api/internal/t;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/t;->c()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/v1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/v1<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l3;->c:Lcom/google/android/gms/common/api/internal/o2;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/o2;->a:Lcom/google/android/gms/common/api/internal/t;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/v1;->t()Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/g3;->b:Lcom/google/android/gms/tasks/l;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/t;->d(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/l;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l3;->c:Lcom/google/android/gms/common/api/internal/o2;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/o2;->a:Lcom/google/android/gms/common/api/internal/t;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/t;->b()Lcom/google/android/gms/common/api/internal/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/v1;->v()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l3;->c:Lcom/google/android/gms/common/api/internal/o2;

    .line 3
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
