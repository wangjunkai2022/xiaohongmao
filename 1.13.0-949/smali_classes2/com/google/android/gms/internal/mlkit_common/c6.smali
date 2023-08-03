.class public final Lcom/google/android/gms/internal/mlkit_common/c6;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# static fields
.field public static final d:Lcom/google/android/gms/internal/mlkit_common/c6;

.field public static final e:Lcom/google/android/gms/internal/mlkit_common/c6;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/google/android/gms/internal/mlkit_common/zzan;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/a4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/a4;-><init>(Lcom/google/android/gms/internal/mlkit_common/z2;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/a4;->a()Lcom/google/android/gms/internal/mlkit_common/a4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/a4;->c()Lcom/google/android/gms/internal/mlkit_common/c6;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/c6;->d:Lcom/google/android/gms/internal/mlkit_common/c6;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/a4;

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/a4;-><init>(Lcom/google/android/gms/internal/mlkit_common/z2;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/a4;->b()Lcom/google/android/gms/internal/mlkit_common/a4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/a4;->c()Lcom/google/android/gms/internal/mlkit_common/c6;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/c6;->e:Lcom/google/android/gms/internal/mlkit_common/c6;

    return-void
.end method

.method synthetic constructor <init>(ZZLcom/google/android/gms/internal/mlkit_common/zzan;Lcom/google/android/gms/internal/mlkit_common/b5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_common/c6;->a:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_common/c6;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/c6;->c:Lcom/google/android/gms/internal/mlkit_common/zzan;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/mlkit_common/c6;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_common/c6;->b:Z

    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/mlkit_common/c6;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_common/c6;->a:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/mlkit_common/c6;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/dc;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/c6;->c:Lcom/google/android/gms/internal/mlkit_common/zzan;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_3

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/ec;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/ec;->a()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    throw p0

    :cond_3
    const/4 p0, 0x3

    :goto_1
    return p0
.end method
