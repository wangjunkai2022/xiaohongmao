.class final Lcom/google/android/gms/common/api/internal/o0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/a1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/a1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/o0;->a:Lcom/google/android/gms/common/api/internal/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o0;->a:Lcom/google/android/gms/common/api/internal/a1;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a1;->t(Lcom/google/android/gms/common/api/internal/a1;)Lcom/google/android/gms/common/f;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a1;->s(Lcom/google/android/gms/common/api/internal/a1;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;)V

    return-void
.end method
