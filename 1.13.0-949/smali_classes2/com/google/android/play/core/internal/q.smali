.class final Lcom/google/android/play/core/internal/q;
.super Lcom/google/android/play/core/internal/i;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic b:Lcom/google/android/play/core/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/q;->b:Lcom/google/android/play/core/internal/s;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/q;->b:Lcom/google/android/play/core/internal/s;

    iget-object v0, v0, Lcom/google/android/play/core/internal/s;->a:Lcom/google/android/play/core/internal/t;

    invoke-static {v0}, Lcom/google/android/play/core/internal/t;->p(Lcom/google/android/play/core/internal/t;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/q;->b:Lcom/google/android/play/core/internal/s;

    iget-object v0, v0, Lcom/google/android/play/core/internal/s;->a:Lcom/google/android/play/core/internal/t;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/t;->l(Lcom/google/android/play/core/internal/t;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/q;->b:Lcom/google/android/play/core/internal/s;

    iget-object v0, v0, Lcom/google/android/play/core/internal/s;->a:Lcom/google/android/play/core/internal/t;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/t;->k(Lcom/google/android/play/core/internal/t;Z)V

    return-void
.end method
