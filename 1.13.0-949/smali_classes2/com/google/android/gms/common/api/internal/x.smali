.class public Lcom/google/android/gms/common/api/internal/x;
.super Lcom/google/android/gms/common/api/internal/k$a;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation build Lu2/a;
.end annotation


# instance fields
.field private final c:Lcom/google/android/gms/common/api/internal/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/e$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/e$b;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/e$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/e$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/k$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/x;->c:Lcom/google/android/gms/common/api/internal/e$b;

    return-void
.end method


# virtual methods
.method public c1(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x;->c:Lcom/google/android/gms/common/api/internal/e$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/e$b;->a(Ljava/lang/Object;)V

    return-void
.end method
