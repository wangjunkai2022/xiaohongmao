.class final Lcom/google/android/play/core/internal/l;
.super Lcom/google/android/play/core/internal/i;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic b:Lcom/google/android/play/core/internal/i;

.field final synthetic c:Lcom/google/android/play/core/internal/t;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/t;Lcom/google/android/play/core/tasks/o;Lcom/google/android/play/core/internal/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/l;->c:Lcom/google/android/play/core/internal/t;

    iput-object p3, p0, Lcom/google/android/play/core/internal/l;->b:Lcom/google/android/play/core/internal/i;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/i;-><init>(Lcom/google/android/play/core/tasks/o;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/internal/l;->c:Lcom/google/android/play/core/internal/t;

    iget-object v1, p0, Lcom/google/android/play/core/internal/l;->b:Lcom/google/android/play/core/internal/i;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/t;->n(Lcom/google/android/play/core/internal/t;Lcom/google/android/play/core/internal/i;)V

    return-void
.end method
