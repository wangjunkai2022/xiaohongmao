.class final Lcom/google/android/gms/common/internal/p0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/e$b;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/p0;->a:Lcom/google/android/gms/common/api/internal/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final z(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/internal/p0;->a:Lcom/google/android/gms/common/api/internal/q;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/q;->z(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
