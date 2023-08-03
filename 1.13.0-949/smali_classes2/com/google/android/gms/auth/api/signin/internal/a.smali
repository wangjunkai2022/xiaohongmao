.class public Lcom/google/android/gms/auth/api/signin/internal/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation build Lu2/a;
.end annotation


# static fields
.field static b:I = 0x1f
    .annotation build Ly2/d0;
    .end annotation
.end field


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/a;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/a;->b:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->a:I

    mul-int v0, v0, v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->a:I

    return-object p0
.end method

.method public b()I
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->a:I

    return v0
.end method

.method public final c(Z)Lcom/google/android/gms/auth/api/signin/internal/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/a;->b:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->a:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/a;->a:I

    return-object p0
.end method
