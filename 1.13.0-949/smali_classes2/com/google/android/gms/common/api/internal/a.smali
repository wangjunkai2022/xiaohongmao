.class public abstract Lcom/google/android/gms/common/api/internal/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation build Lu2/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/internal/e1;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/d0;->m(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/d0;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/e1;-><init>(Lcom/google/android/gms/common/api/internal/d0;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/Runnable;)Lcom/google/android/gms/common/api/internal/a;
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method
