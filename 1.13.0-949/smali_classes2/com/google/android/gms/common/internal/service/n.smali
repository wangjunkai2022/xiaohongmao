.class public final synthetic Lcom/google/android/gms/common/internal/service/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/v;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/internal/TelemetryData;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/TelemetryData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/service/n;->a:Lcom/google/android/gms/common/internal/TelemetryData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/service/n;->a:Lcom/google/android/gms/common/internal/TelemetryData;

    check-cast p1, Lcom/google/android/gms/common/internal/service/q;

    check-cast p2, Lcom/google/android/gms/tasks/l;

    sget v1, Lcom/google/android/gms/common/internal/service/p;->n:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/e;->K()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/service/j;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/service/j;->J1(Lcom/google/android/gms/common/internal/TelemetryData;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/l;->c(Ljava/lang/Object;)V

    return-void
.end method
