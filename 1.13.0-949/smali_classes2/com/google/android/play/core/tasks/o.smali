.class public final Lcom/google/android/play/core/tasks/o;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final a:Lcom/google/android/play/core/tasks/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/tasks/r;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/r;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/o;->a:Lcom/google/android/play/core/tasks/r;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/tasks/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/o;->a:Lcom/google/android/play/core/tasks/r;

    return-object v0
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/o;->a:Lcom/google/android/play/core/tasks/r;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/r;->l(Ljava/lang/Exception;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/o;->a:Lcom/google/android/play/core/tasks/r;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/r;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/o;->a:Lcom/google/android/play/core/tasks/r;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/r;->n(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/o;->a:Lcom/google/android/play/core/tasks/r;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/r;->o(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
