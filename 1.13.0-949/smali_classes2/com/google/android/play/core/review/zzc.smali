.class final Lcom/google/android/play/core/review/zzc;
.super Landroid/os/ResultReceiver;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/tasks/o;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/d;Landroid/os/Handler;Lcom/google/android/play/core/tasks/o;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/play/core/review/zzc;->zza:Lcom/google/android/play/core/tasks/o;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/play/core/review/zzc;->zza:Lcom/google/android/play/core/tasks/o;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/o;->e(Ljava/lang/Object;)Z

    return-void
.end method
