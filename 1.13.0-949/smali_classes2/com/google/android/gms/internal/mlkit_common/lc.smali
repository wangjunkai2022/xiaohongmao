.class public final Lcom/google/android/gms/internal/mlkit_common/lc;
.super Lcom/google/android/gms/internal/mlkit_common/fc;
.source "com.google.mlkit:common@@18.4.0"


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lr7/a;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/a;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
