.class public final Lcom/google/android/gms/common/api/internal/z3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/i$b;
.implements Lcom/google/android/gms/common/api/i$c;


# instance fields
.field public final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Z

.field private e:Lcom/google/android/gms/common/api/internal/a4;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z3;->c:Lcom/google/android/gms/common/api/a;

    iput-boolean p2, p0, Lcom/google/android/gms/common/api/internal/z3;->d:Z

    return-void
.end method

.method private final b()Lcom/google/android/gms/common/api/internal/a4;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z3;->e:Lcom/google/android/gms/common/api/internal/a4;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z3;->e:Lcom/google/android/gms/common/api/internal/a4;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/a4;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z3;->e:Lcom/google/android/gms/common/api/internal/a4;

    return-void
.end method

.method public final s(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/z3;->b()Lcom/google/android/gms/common/api/internal/a4;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/f;->s(Landroid/os/Bundle;)V

    return-void
.end method

.method public final x(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/z3;->b()Lcom/google/android/gms/common/api/internal/a4;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/f;->x(I)V

    return-void
.end method

.method public final z(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/z3;->b()Lcom/google/android/gms/common/api/internal/a4;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z3;->c:Lcom/google/android/gms/common/api/a;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/z3;->d:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/a4;->n1(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V

    return-void
.end method
