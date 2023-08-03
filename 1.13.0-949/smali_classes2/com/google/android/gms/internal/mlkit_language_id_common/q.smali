.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/q;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"

# interfaces
.implements Lm3/b;


# static fields
.field private static final d:Lcom/google/firebase/encoders/d;

.field public static final synthetic e:I


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Lcom/google/firebase/encoders/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/p;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/p;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->d:Lcom/google/firebase/encoders/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->b:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->d:Lcom/google/firebase/encoders/d;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->c:Lcom/google/firebase/encoders/d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Class;Lcom/google/firebase/encoders/f;)Lm3/b;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/encoders/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->a:Ljava/util/Map;

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic b(Ljava/lang/Class;Lcom/google/firebase/encoders/d;)Lm3/b;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/encoders/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->b:Ljava/util/Map;

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/mlkit_language_id_common/r;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->a:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->b:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->c:Lcom/google/firebase/encoders/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id_common/r;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/d;)V

    return-object v0
.end method
