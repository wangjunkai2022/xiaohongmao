.class final Lcom/google/android/gms/internal/mlkit_language_id_common/ua;
.super Lcom/google/mlkit/common/sdkinternal/g;
.source "com.google.mlkit:language-id-common@@16.0.0"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/ta;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id_common/da;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    .line 3
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/k;->c()Lcom/google/mlkit/common/sdkinternal/k;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_language_id_common/ea;

    .line 4
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/k;->c()Lcom/google/mlkit/common/sdkinternal/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/mlkit/common/sdkinternal/k;->b()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ea;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_language_id_common/da;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/da;->b()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v1}, Lcom/google/mlkit/common/sdkinternal/k;->b()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/google/mlkit/common/sdkinternal/p;

    .line 7
    invoke-virtual {v1, v4}, Lcom/google/mlkit/common/sdkinternal/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/p;

    .line 8
    invoke-direct {v0, v3, v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/p;Lcom/google/android/gms/internal/mlkit_language_id_common/ja;Ljava/lang/String;)V

    return-object v0
.end method
