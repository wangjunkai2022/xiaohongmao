.class final Lcom/google/android/gms/internal/mlkit_common/q2;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/firebase/encoders/d;


# static fields
.field static final a:Lcom/google/android/gms/internal/mlkit_common/q2;

.field private static final b:Lcom/google/firebase/encoders/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/q2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/q2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q2;->a:Lcom/google/android/gms/internal/mlkit_common/q2;

    const-string v0, "format"

    invoke-static {v0}, Lcom/google/firebase/encoders/c;->a(Ljava/lang/String;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/d0;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/d0;->a(I)Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Lcom/google/android/gms/internal/mlkit_common/g0;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/c$b;->b(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/c$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/encoders/c$b;->a()Lcom/google/firebase/encoders/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q2;->b:Lcom/google/firebase/encoders/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/qa;

    check-cast p2, Lcom/google/firebase/encoders/e;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method