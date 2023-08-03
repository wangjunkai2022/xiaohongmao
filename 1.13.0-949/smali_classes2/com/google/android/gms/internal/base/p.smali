.class public final Lcom/google/android/gms/internal/base/p;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# static fields
.field private static final a:Lcom/google/android/gms/internal/base/m;

.field private static volatile b:Lcom/google/android/gms/internal/base/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/base/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/base/o;-><init>(Lcom/google/android/gms/internal/base/n;)V

    sput-object v0, Lcom/google/android/gms/internal/base/p;->a:Lcom/google/android/gms/internal/base/m;

    sput-object v0, Lcom/google/android/gms/internal/base/p;->b:Lcom/google/android/gms/internal/base/m;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/base/m;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/base/p;->b:Lcom/google/android/gms/internal/base/m;

    return-object v0
.end method
