.class public final Lcom/google/android/gms/common/api/internal/a2;
.super Lcom/google/android/gms/common/api/internal/k0;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Lcom/google/android/gms/common/api/internal/k0;"
    }
.end annotation


# instance fields
.field private final f:Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/h<",
            "TO;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/h<",
            "TO;>;)V"
        }
    .end annotation

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/k0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/a2;->f:Lcom/google/android/gms/common/api/h;

    return-void
.end method


# virtual methods
.method public final H(Lcom/google/android/gms/common/api/internal/h3;)V
    .locals 0

    return-void
.end method

.method public final I(Lcom/google/android/gms/common/api/internal/h3;)V
    .locals 0

    return-void
.end method

.method public final l(Lcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "R::",
            "Lcom/google/android/gms/common/api/q;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/a2;->f:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/h;->h(Lcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/e$a<",
            "+",
            "Lcom/google/android/gms/common/api/q;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/a2;->f:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/h;->n(Lcom/google/android/gms/common/api/internal/e$a;)Lcom/google/android/gms/common/api/internal/e$a;

    move-result-object p1

    return-object p1
.end method

.method public final q()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/a2;->f:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->q()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final r()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/a2;->f:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->t()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
