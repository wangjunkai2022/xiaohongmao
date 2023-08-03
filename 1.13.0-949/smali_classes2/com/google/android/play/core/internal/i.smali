.class public abstract Lcom/google/android/play/core/internal/i;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/tasks/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/internal/i;->a:Lcom/google/android/play/core/tasks/o;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/tasks/o;)V
    .locals 0
    .param p1    # Lcom/google/android/play/core/tasks/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/i;->a:Lcom/google/android/play/core/tasks/o;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method final b()Lcom/google/android/play/core/tasks/o;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/internal/i;->a:Lcom/google/android/play/core/tasks/o;

    return-object v0
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/internal/i;->a:Lcom/google/android/play/core/tasks/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/o;->d(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/internal/i;->c(Ljava/lang/Exception;)V

    return-void
.end method
