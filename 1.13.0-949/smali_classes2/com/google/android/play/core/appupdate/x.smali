.class public final Lcom/google/android/play/core/appupdate/x;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/r1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/r1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/x;->a:Lcom/google/android/play/core/internal/r1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/x;->a:Lcom/google/android/play/core/internal/r1;

    check-cast v0, Lcom/google/android/play/core/appupdate/n;

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/n;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/appupdate/w;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/appupdate/w;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
