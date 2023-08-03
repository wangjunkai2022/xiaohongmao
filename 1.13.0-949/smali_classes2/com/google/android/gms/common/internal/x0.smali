.class final Lcom/google/android/gms/common/internal/x0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/t$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/x0;->a:Lcom/google/android/gms/common/api/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/q;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/x0;->a:Lcom/google/android/gms/common/api/p;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/p;->b(Lcom/google/android/gms/common/api/q;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/x0;->a:Lcom/google/android/gms/common/api/p;

    return-object p1
.end method
