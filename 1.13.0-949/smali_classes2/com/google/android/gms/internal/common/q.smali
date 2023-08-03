.class public final Lcom/google/android/gms/internal/common/q;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# static fields
.field private static final a:Lcom/google/android/gms/internal/common/n;

.field private static volatile b:Lcom/google/android/gms/internal/common/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/common/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/common/p;-><init>(Lcom/google/android/gms/internal/common/o;)V

    sput-object v0, Lcom/google/android/gms/internal/common/q;->a:Lcom/google/android/gms/internal/common/n;

    sput-object v0, Lcom/google/android/gms/internal/common/q;->b:Lcom/google/android/gms/internal/common/n;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/common/n;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/common/q;->b:Lcom/google/android/gms/internal/common/n;

    return-object v0
.end method
