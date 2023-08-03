.class public Lcom/google/android/gms/common/internal/e$d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/e;)V
    .locals 0
    .annotation build Lu2/a;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/internal/e$d;->a:Lcom/google/android/gms/common/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/e$d;->a:Lcom/google/android/gms/common/internal/e;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/e;->J()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/e;->n(Lcom/google/android/gms/common/internal/m;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$d;->a:Lcom/google/android/gms/common/internal/e;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->b0(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/e$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$d;->a:Lcom/google/android/gms/common/internal/e;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/e;->b0(Lcom/google/android/gms/common/internal/e;)Lcom/google/android/gms/common/internal/e$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/e$b;->z(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1
    return-void
.end method
