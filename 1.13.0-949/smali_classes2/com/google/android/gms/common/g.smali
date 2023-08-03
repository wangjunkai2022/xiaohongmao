.class public final Lcom/google/android/gms/common/g;
.super Lcom/google/android/gms/common/h;
.source "com.google.android.gms:play-services-base@@18.0.1"


# static fields
.field public static final k:Ljava/lang/String; = "GooglePlayServicesErrorDialog"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final l:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final m:Ljava/lang/String; = "com.google.android.gms"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final n:Ljava/lang/String; = "com.android.vending"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/common/h;->a:I

    sput v0, Lcom/google/android/gms/common/g;->l:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/h;-><init>()V

    return-void
.end method

.method public static A(ILandroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/e;->x()Lcom/google/android/gms/common/e;

    move-result-object v0

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/common/h;->o(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/common/h;->p(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/common/e;->C(Landroid/content/Context;I)V

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/e;->J(Landroid/content/Context;)V

    return-void
.end method

.method public static f(ILandroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/h;->f(ILandroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static g(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Ly2/d0;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/h;->g(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/h;->i(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/h;->j(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/content/Context;)I
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/l;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/h;->l(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static m(Landroid/content/Context;I)I
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/common/h;->m(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static s(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/h;->s(I)Z

    move-result p0

    return p0
.end method

.method public static v(ILandroid/app/Activity;I)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/g;->w(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static w(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/gms/common/h;->o(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/16 p0, 0x12

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/e;->x()Lcom/google/android/gms/common/e;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/google/android/gms/common/e;->t(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static x(ILandroid/app/Activity;I)Z
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/g;->y(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result p0

    return p0
.end method

.method public static y(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/g;->z(ILandroid/app/Activity;Landroidx/fragment/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result p0

    return p0
.end method

.method public static z(ILandroid/app/Activity;Landroidx/fragment/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/gms/common/h;->o(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/16 p0, 0x12

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/e;->x()Lcom/google/android/gms/common/e;

    move-result-object v0

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {v0, p1, p0, p3, p4}, Lcom/google/android/gms/common/e;->B(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/e;->x()Lcom/google/android/gms/common/e;

    move-result-object v2

    const-string v3, "d"

    .line 4
    invoke-virtual {v2, p1, p0, v3}, Lcom/google/android/gms/common/e;->e(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p2, v2, p3}, Lcom/google/android/gms/common/internal/n0;->c(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/n0;

    move-result-object p2

    .line 5
    invoke-virtual {v0, p1, p0, p2, p4}, Lcom/google/android/gms/common/e;->E(Landroid/content/Context;ILcom/google/android/gms/common/internal/n0;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const-string p2, "GooglePlayServicesErrorDialog"

    .line 6
    invoke-virtual {v0, p1, p0, p2, p4}, Lcom/google/android/gms/common/e;->H(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return v1
.end method
