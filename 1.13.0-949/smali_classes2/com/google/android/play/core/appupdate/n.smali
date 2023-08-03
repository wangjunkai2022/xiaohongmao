.class public final Lcom/google/android/play/core/appupdate/n;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/r1;


# instance fields
.field private final a:Lcom/google/android/play/core/appupdate/l;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/n;->a:Lcom/google/android/play/core/appupdate/l;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/n;->a:Lcom/google/android/play/core/appupdate/l;

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/internal/q1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/n;->a:Lcom/google/android/play/core/appupdate/l;

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/internal/q1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
