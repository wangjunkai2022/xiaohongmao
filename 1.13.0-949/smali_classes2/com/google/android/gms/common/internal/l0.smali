.class final Lcom/google/android/gms/common/internal/l0;
.super Lcom/google/android/gms/common/internal/n0;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l0;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/l0;->b:Landroidx/fragment/app/Fragment;

    iput p3, p0, Lcom/google/android/gms/common/internal/l0;->c:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/n0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l0;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/l0;->b:Landroidx/fragment/app/Fragment;

    iget v2, p0, Lcom/google/android/gms/common/internal/l0;->c:I

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
