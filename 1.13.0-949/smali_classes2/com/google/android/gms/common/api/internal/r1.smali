.class final Lcom/google/android/gms/common/api/internal/r1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/v1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/v1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/r1;->a:Lcom/google/android/gms/common/api/internal/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r1;->a:Lcom/google/android/gms/common/api/internal/v1;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/v1;->y(Lcom/google/android/gms/common/api/internal/v1;)V

    return-void
.end method
