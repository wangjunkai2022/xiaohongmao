.class final Lcom/google/android/gms/tasks/v;
.super Lcom/google/android/gms/tasks/a;
.source "com.google.android.gms:play-services-tasks@@18.0.1"


# instance fields
.field private final a:Lcom/google/android/gms/tasks/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/q0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tasks/a;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/q0;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/q0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/v;->a:Lcom/google/android/gms/tasks/q0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/v;->a:Lcom/google/android/gms/tasks/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/q0;->u()Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/a;
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/tasks/v;->a:Lcom/google/android/gms/tasks/q0;

    new-instance v1, Lcom/google/android/gms/tasks/o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/o;-><init>(Lcom/google/android/gms/tasks/v;Lcom/google/android/gms/tasks/h;)V

    sget-object p1, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/tasks/q0;->l(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/k;

    return-object p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/v;->a:Lcom/google/android/gms/tasks/q0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/q0;->C(Ljava/lang/Object;)Z

    return-void
.end method
