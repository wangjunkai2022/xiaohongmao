.class final Lcom/google/android/gms/common/api/internal/t1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/u1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/u1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/t1;->a:Lcom/google/android/gms/common/api/internal/u1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/t1;->a:Lcom/google/android/gms/common/api/internal/u1;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/u1;->a:Lcom/google/android/gms/common/api/internal/v1;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/v1;->r(Lcom/google/android/gms/common/api/internal/v1;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/v1;->r(Lcom/google/android/gms/common/api/internal/v1;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/a$f;->e(Ljava/lang/String;)V

    return-void
.end method
