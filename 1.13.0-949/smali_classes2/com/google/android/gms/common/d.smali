.class public Lcom/google/android/gms/common/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/y;
.end annotation

.annotation build Lu2/a;
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/o0;

.field private static final b:Lcom/google/android/gms/common/o0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/m0;

    invoke-direct {v0}, Lcom/google/android/gms/common/m0;-><init>()V

    const-string v1, "com.google.android.gms"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/m0;->d(Ljava/lang/String;)Lcom/google/android/gms/common/m0;

    const-wide/32 v1, 0xc2bd840

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/m0;->a(J)Lcom/google/android/gms/common/m0;

    sget-object v1, Lcom/google/android/gms/common/e0;->d:Lcom/google/android/gms/common/c0;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/c0;->n1()[B

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/common/e0;->b:Lcom/google/android/gms/common/c0;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/common/c0;->n1()[B

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/m0;->c(Ljava/util/List;)Lcom/google/android/gms/common/m0;

    sget-object v2, Lcom/google/android/gms/common/e0;->c:Lcom/google/android/gms/common/c0;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/common/c0;->n1()[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/common/e0;->a:Lcom/google/android/gms/common/c0;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/common/c0;->n1()[B

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/m0;->b(Ljava/util/List;)Lcom/google/android/gms/common/m0;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/common/m0;->e()Lcom/google/android/gms/common/o0;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/d;->a:Lcom/google/android/gms/common/o0;

    new-instance v0, Lcom/google/android/gms/common/m0;

    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/common/m0;-><init>()V

    const-string v3, "com.android.vending"

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/m0;->d(Ljava/lang/String;)Lcom/google/android/gms/common/m0;

    const-wide/32 v3, 0x4e6e200

    .line 15
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/m0;->a(J)Lcom/google/android/gms/common/m0;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/common/c0;->n1()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/m0;->c(Ljava/util/List;)Lcom/google/android/gms/common/m0;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/common/c0;->n1()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/m0;->b(Ljava/util/List;)Lcom/google/android/gms/common/m0;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/common/m0;->e()Lcom/google/android/gms/common/o0;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/d;->b:Lcom/google/android/gms/common/o0;

    return-void
.end method
