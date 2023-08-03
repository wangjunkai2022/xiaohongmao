.class public Lcom/google/android/gms/tasks/l;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/tasks/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/q0<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/q0;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/q0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/l;->a:Lcom/google/android/gms/tasks/q0;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tasks/a;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/q0;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/q0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/l;->a:Lcom/google/android/gms/tasks/q0;

    new-instance v0, Lcom/google/android/gms/tasks/m0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tasks/m0;-><init>(Lcom/google/android/gms/tasks/l;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/a;->b(Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/a;

    return-void
.end method

.method static bridge synthetic f(Lcom/google/android/gms/tasks/l;)Lcom/google/android/gms/tasks/q0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/l;->a:Lcom/google/android/gms/tasks/q0;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/l;->a:Lcom/google/android/gms/tasks/q0;

    return-object v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/tasks/l;->a:Lcom/google/android/gms/tasks/q0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/q0;->y(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/l;->a:Lcom/google/android/gms/tasks/q0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/q0;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)Z
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/tasks/l;->a:Lcom/google/android/gms/tasks/q0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/q0;->B(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/l;->a:Lcom/google/android/gms/tasks/q0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/q0;->C(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
