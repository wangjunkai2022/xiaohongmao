.class final Lcom/google/android/gms/dynamic/j;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/dynamic/p;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/google/android/gms/dynamic/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/j;->d:Lcom/google/android/gms/dynamic/a;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/j;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/dynamic/j;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/dynamic/j;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/e;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/dynamic/j;->d:Lcom/google/android/gms/dynamic/a;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a;->p(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/e;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/j;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/dynamic/j;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/dynamic/j;->c:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/dynamic/e;->d(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zaa()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
