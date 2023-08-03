.class public final Lcom/google/android/gms/common/internal/u1;
.super Lcom/google/android/gms/common/internal/e1;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# instance fields
.field final synthetic g:Lcom/google/android/gms/common/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/e;ILandroid/os/Bundle;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/u1;->g:Lcom/google/android/gms/common/internal/e;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/e1;-><init>(Lcom/google/android/gms/common/internal/e;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final f(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/u1;->g:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/e;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u1;->g:Lcom/google/android/gms/common/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->n0(Lcom/google/android/gms/common/internal/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/u1;->g:Lcom/google/android/gms/common/internal/e;

    const/16 v0, 0x10

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/e;->j0(Lcom/google/android/gms/common/internal/e;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/u1;->g:Lcom/google/android/gms/common/internal/e;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/e;->p:Lcom/google/android/gms/common/internal/e$c;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/e$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u1;->g:Lcom/google/android/gms/common/internal/e;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/e;->S(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected final g()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/u1;->g:Lcom/google/android/gms/common/internal/e;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/e;->p:Lcom/google/android/gms/common/internal/e$c;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/e$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
