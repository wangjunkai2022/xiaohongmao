.class public final Lcom/google/android/play/core/appupdate/k;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/r1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/r1;

.field private final b:Lcom/google/android/play/core/internal/r1;

.field private final c:Lcom/google/android/play/core/internal/r1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;Lcom/google/android/play/core/internal/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/k;->a:Lcom/google/android/play/core/internal/r1;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/k;->b:Lcom/google/android/play/core/internal/r1;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/k;->c:Lcom/google/android/play/core/internal/r1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/k;->a:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/k;->b:Lcom/google/android/play/core/internal/r1;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/r1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/appupdate/g;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/k;->c:Lcom/google/android/play/core/internal/r1;

    check-cast v2, Lcom/google/android/play/core/appupdate/n;

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/n;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/appupdate/j;

    .line 2
    check-cast v0, Lcom/google/android/play/core/appupdate/u;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/appupdate/j;-><init>(Lcom/google/android/play/core/appupdate/u;Lcom/google/android/play/core/appupdate/g;Landroid/content/Context;)V

    return-object v3
.end method
