.class final Lcom/google/android/gms/dynamic/k;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/dynamic/p;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/google/android/gms/dynamic/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/k;->b:Lcom/google/android/gms/dynamic/a;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/k;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/e;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/dynamic/k;->b:Lcom/google/android/gms/dynamic/a;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a;->p(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/e;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/k;->a:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/google/android/gms/dynamic/e;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zaa()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
